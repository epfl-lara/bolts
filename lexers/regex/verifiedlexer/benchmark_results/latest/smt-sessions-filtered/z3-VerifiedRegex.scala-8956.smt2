; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!480732 () Bool)

(assert start!480732)

(declare-fun b!4722683 () Bool)

(declare-fun e!2945384 () Bool)

(declare-fun e!2945380 () Bool)

(assert (=> b!4722683 (= e!2945384 (not e!2945380))))

(declare-fun res!1998075 () Bool)

(assert (=> b!4722683 (=> res!1998075 e!2945380)))

(declare-datatypes ((K!14185 0))(
  ( (K!14186 (val!19619 Int)) )
))
(declare-datatypes ((V!14431 0))(
  ( (V!14432 (val!19620 Int)) )
))
(declare-datatypes ((tuple2!54450 0))(
  ( (tuple2!54451 (_1!30519 K!14185) (_2!30519 V!14431)) )
))
(declare-datatypes ((List!52954 0))(
  ( (Nil!52830) (Cons!52830 (h!59177 tuple2!54450) (t!360220 List!52954)) )
))
(declare-fun oldBucket!34 () List!52954)

(declare-fun key!4653 () K!14185)

(get-info :version)

(assert (=> b!4722683 (= res!1998075 (or (not ((_ is Cons!52830) oldBucket!34)) (not (= (_1!30519 (h!59177 oldBucket!34)) key!4653))))))

(declare-datatypes ((ListMap!5281 0))(
  ( (ListMap!5282 (toList!5917 List!52954)) )
))
(declare-fun lt!1887721 () ListMap!5281)

(declare-datatypes ((tuple2!54452 0))(
  ( (tuple2!54453 (_1!30520 (_ BitVec 64)) (_2!30520 List!52954)) )
))
(declare-datatypes ((List!52955 0))(
  ( (Nil!52831) (Cons!52831 (h!59178 tuple2!54452) (t!360221 List!52955)) )
))
(declare-datatypes ((ListLongMap!4447 0))(
  ( (ListLongMap!4448 (toList!5918 List!52955)) )
))
(declare-fun lm!2023 () ListLongMap!4447)

(declare-fun lt!1887727 () ListMap!5281)

(declare-fun addToMapMapFromBucket!1444 (List!52954 ListMap!5281) ListMap!5281)

(assert (=> b!4722683 (= lt!1887721 (addToMapMapFromBucket!1444 (_2!30520 (h!59178 (toList!5918 lm!2023))) lt!1887727))))

(declare-fun extractMap!2040 (List!52955) ListMap!5281)

(assert (=> b!4722683 (= lt!1887727 (extractMap!2040 (t!360221 (toList!5918 lm!2023))))))

(declare-fun tail!9002 (ListLongMap!4447) ListLongMap!4447)

(assert (=> b!4722683 (= (t!360221 (toList!5918 lm!2023)) (toList!5918 (tail!9002 lm!2023)))))

(declare-fun b!4722684 () Bool)

(declare-fun res!1998074 () Bool)

(assert (=> b!4722684 (=> (not res!1998074) (not e!2945384))))

(assert (=> b!4722684 (= res!1998074 ((_ is Cons!52831) (toList!5918 lm!2023)))))

(declare-fun b!4722685 () Bool)

(declare-fun e!2945376 () Bool)

(declare-fun e!2945377 () Bool)

(assert (=> b!4722685 (= e!2945376 e!2945377)))

(declare-fun res!1998070 () Bool)

(assert (=> b!4722685 (=> (not res!1998070) (not e!2945377))))

(declare-fun contains!16175 (ListMap!5281 K!14185) Bool)

(assert (=> b!4722685 (= res!1998070 (contains!16175 lt!1887721 key!4653))))

(assert (=> b!4722685 (= lt!1887721 (extractMap!2040 (toList!5918 lm!2023)))))

(declare-fun b!4722686 () Bool)

(assert (=> b!4722686 (= e!2945377 e!2945384)))

(declare-fun res!1998072 () Bool)

(assert (=> b!4722686 (=> (not res!1998072) (not e!2945384))))

(declare-fun lt!1887725 () (_ BitVec 64))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4722686 (= res!1998072 (= lt!1887725 hash!405))))

(declare-datatypes ((Hashable!6383 0))(
  ( (HashableExt!6382 (__x!32086 Int)) )
))
(declare-fun hashF!1323 () Hashable!6383)

(declare-fun hash!4384 (Hashable!6383 K!14185) (_ BitVec 64))

(assert (=> b!4722686 (= lt!1887725 (hash!4384 hashF!1323 key!4653))))

(declare-fun b!4722688 () Bool)

(declare-fun e!2945379 () Bool)

(declare-fun e!2945378 () Bool)

(assert (=> b!4722688 (= e!2945379 e!2945378)))

(declare-fun res!1998081 () Bool)

(assert (=> b!4722688 (=> res!1998081 e!2945378)))

(declare-fun lt!1887723 () ListMap!5281)

(declare-fun newBucket!218 () List!52954)

(assert (=> b!4722688 (= res!1998081 (not (= lt!1887723 (addToMapMapFromBucket!1444 newBucket!218 lt!1887727))))))

(declare-fun lt!1887720 () List!52954)

(assert (=> b!4722688 (= lt!1887723 (addToMapMapFromBucket!1444 lt!1887720 lt!1887727))))

(declare-fun b!4722689 () Bool)

(declare-fun res!1998077 () Bool)

(assert (=> b!4722689 (=> (not res!1998077) (not e!2945384))))

(declare-fun head!10249 (List!52955) tuple2!54452)

(assert (=> b!4722689 (= res!1998077 (= (head!10249 (toList!5918 lm!2023)) (tuple2!54453 hash!405 oldBucket!34)))))

(declare-fun b!4722690 () Bool)

(declare-fun res!1998083 () Bool)

(assert (=> b!4722690 (=> (not res!1998083) (not e!2945376))))

(declare-fun allKeysSameHash!1840 (List!52954 (_ BitVec 64) Hashable!6383) Bool)

(assert (=> b!4722690 (= res!1998083 (allKeysSameHash!1840 oldBucket!34 hash!405 hashF!1323))))

(declare-fun tp_is_empty!31349 () Bool)

(declare-fun tp!1348405 () Bool)

(declare-fun b!4722691 () Bool)

(declare-fun e!2945386 () Bool)

(declare-fun tp_is_empty!31351 () Bool)

(assert (=> b!4722691 (= e!2945386 (and tp_is_empty!31349 tp_is_empty!31351 tp!1348405))))

(declare-fun tp!1348406 () Bool)

(declare-fun b!4722692 () Bool)

(declare-fun e!2945381 () Bool)

(assert (=> b!4722692 (= e!2945381 (and tp_is_empty!31349 tp_is_empty!31351 tp!1348406))))

(declare-fun b!4722693 () Bool)

(declare-fun res!1998073 () Bool)

(assert (=> b!4722693 (=> (not res!1998073) (not e!2945384))))

(declare-fun allKeysSameHashInMap!1928 (ListLongMap!4447 Hashable!6383) Bool)

(assert (=> b!4722693 (= res!1998073 (allKeysSameHashInMap!1928 lm!2023 hashF!1323))))

(declare-fun b!4722687 () Bool)

(declare-fun e!2945382 () Bool)

(declare-fun e!2945385 () Bool)

(assert (=> b!4722687 (= e!2945382 e!2945385)))

(declare-fun res!1998076 () Bool)

(assert (=> b!4722687 (=> res!1998076 e!2945385)))

(declare-fun lt!1887719 () List!52955)

(declare-fun lambda!215550 () Int)

(declare-fun forall!11588 (List!52955 Int) Bool)

(assert (=> b!4722687 (= res!1998076 (not (forall!11588 lt!1887719 lambda!215550)))))

(declare-fun lt!1887718 () ListLongMap!4447)

(assert (=> b!4722687 (= lt!1887718 (ListLongMap!4448 lt!1887719))))

(declare-fun res!1998078 () Bool)

(assert (=> start!480732 (=> (not res!1998078) (not e!2945376))))

(assert (=> start!480732 (= res!1998078 (forall!11588 (toList!5918 lm!2023) lambda!215550))))

(assert (=> start!480732 e!2945376))

(declare-fun e!2945383 () Bool)

(declare-fun inv!68059 (ListLongMap!4447) Bool)

(assert (=> start!480732 (and (inv!68059 lm!2023) e!2945383)))

(assert (=> start!480732 tp_is_empty!31349))

(assert (=> start!480732 e!2945381))

(assert (=> start!480732 true))

(assert (=> start!480732 e!2945386))

(declare-fun b!4722694 () Bool)

(declare-fun res!1998085 () Bool)

(assert (=> b!4722694 (=> (not res!1998085) (not e!2945376))))

(declare-fun noDuplicateKeys!2014 (List!52954) Bool)

(assert (=> b!4722694 (= res!1998085 (noDuplicateKeys!2014 oldBucket!34))))

(declare-fun b!4722695 () Bool)

(declare-fun contains!16176 (ListLongMap!4447 (_ BitVec 64)) Bool)

(assert (=> b!4722695 (= e!2945385 (contains!16176 lt!1887718 lt!1887725))))

(declare-fun b!4722696 () Bool)

(declare-fun res!1998087 () Bool)

(assert (=> b!4722696 (=> (not res!1998087) (not e!2945384))))

(assert (=> b!4722696 (= res!1998087 (allKeysSameHash!1840 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4722697 () Bool)

(declare-fun res!1998071 () Bool)

(assert (=> b!4722697 (=> (not res!1998071) (not e!2945376))))

(declare-fun removePairForKey!1609 (List!52954 K!14185) List!52954)

(assert (=> b!4722697 (= res!1998071 (= (removePairForKey!1609 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4722698 () Bool)

(declare-fun res!1998079 () Bool)

(assert (=> b!4722698 (=> res!1998079 e!2945385)))

(assert (=> b!4722698 (= res!1998079 (not (allKeysSameHashInMap!1928 lt!1887718 hashF!1323)))))

(declare-fun b!4722699 () Bool)

(declare-fun res!1998088 () Bool)

(assert (=> b!4722699 (=> res!1998088 e!2945382)))

(declare-fun containsKey!3369 (List!52954 K!14185) Bool)

(assert (=> b!4722699 (= res!1998088 (containsKey!3369 lt!1887720 key!4653))))

(declare-fun b!4722700 () Bool)

(assert (=> b!4722700 (= e!2945378 e!2945382)))

(declare-fun res!1998086 () Bool)

(assert (=> b!4722700 (=> res!1998086 e!2945382)))

(declare-fun eq!1131 (ListMap!5281 ListMap!5281) Bool)

(declare-fun +!2269 (ListMap!5281 tuple2!54450) ListMap!5281)

(assert (=> b!4722700 (= res!1998086 (not (eq!1131 (+!2269 lt!1887723 (h!59177 oldBucket!34)) (addToMapMapFromBucket!1444 oldBucket!34 lt!1887727))))))

(declare-fun lt!1887722 () tuple2!54450)

(assert (=> b!4722700 (eq!1131 (addToMapMapFromBucket!1444 (Cons!52830 lt!1887722 lt!1887720) lt!1887727) (+!2269 lt!1887723 lt!1887722))))

(declare-datatypes ((Unit!130119 0))(
  ( (Unit!130120) )
))
(declare-fun lt!1887726 () Unit!130119)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!380 (tuple2!54450 List!52954 ListMap!5281) Unit!130119)

(assert (=> b!4722700 (= lt!1887726 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!380 lt!1887722 lt!1887720 lt!1887727))))

(declare-fun head!10250 (List!52954) tuple2!54450)

(assert (=> b!4722700 (= lt!1887722 (head!10250 oldBucket!34))))

(declare-fun b!4722701 () Bool)

(declare-fun res!1998080 () Bool)

(assert (=> b!4722701 (=> (not res!1998080) (not e!2945376))))

(assert (=> b!4722701 (= res!1998080 (noDuplicateKeys!2014 newBucket!218))))

(declare-fun b!4722702 () Bool)

(declare-fun res!1998082 () Bool)

(assert (=> b!4722702 (=> res!1998082 e!2945382)))

(declare-fun lt!1887724 () ListMap!5281)

(assert (=> b!4722702 (= res!1998082 (not (= lt!1887723 lt!1887724)))))

(declare-fun b!4722703 () Bool)

(declare-fun tp!1348407 () Bool)

(assert (=> b!4722703 (= e!2945383 tp!1348407)))

(declare-fun b!4722704 () Bool)

(declare-fun e!2945375 () Bool)

(assert (=> b!4722704 (= e!2945375 e!2945379)))

(declare-fun res!1998084 () Bool)

(assert (=> b!4722704 (=> res!1998084 e!2945379)))

(assert (=> b!4722704 (= res!1998084 (not (= lt!1887724 (extractMap!2040 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))))))

(assert (=> b!4722704 (= lt!1887724 (extractMap!2040 lt!1887719))))

(assert (=> b!4722704 (= lt!1887719 (Cons!52831 (tuple2!54453 hash!405 lt!1887720) (t!360221 (toList!5918 lm!2023))))))

(declare-fun b!4722705 () Bool)

(assert (=> b!4722705 (= e!2945380 e!2945375)))

(declare-fun res!1998089 () Bool)

(assert (=> b!4722705 (=> res!1998089 e!2945375)))

(assert (=> b!4722705 (= res!1998089 (not (= lt!1887720 newBucket!218)))))

(declare-fun tail!9003 (List!52954) List!52954)

(assert (=> b!4722705 (= lt!1887720 (tail!9003 oldBucket!34))))

(assert (= (and start!480732 res!1998078) b!4722694))

(assert (= (and b!4722694 res!1998085) b!4722701))

(assert (= (and b!4722701 res!1998080) b!4722697))

(assert (= (and b!4722697 res!1998071) b!4722690))

(assert (= (and b!4722690 res!1998083) b!4722685))

(assert (= (and b!4722685 res!1998070) b!4722686))

(assert (= (and b!4722686 res!1998072) b!4722696))

(assert (= (and b!4722696 res!1998087) b!4722693))

(assert (= (and b!4722693 res!1998073) b!4722689))

(assert (= (and b!4722689 res!1998077) b!4722684))

(assert (= (and b!4722684 res!1998074) b!4722683))

(assert (= (and b!4722683 (not res!1998075)) b!4722705))

(assert (= (and b!4722705 (not res!1998089)) b!4722704))

(assert (= (and b!4722704 (not res!1998084)) b!4722688))

(assert (= (and b!4722688 (not res!1998081)) b!4722700))

(assert (= (and b!4722700 (not res!1998086)) b!4722699))

(assert (= (and b!4722699 (not res!1998088)) b!4722702))

(assert (= (and b!4722702 (not res!1998082)) b!4722687))

(assert (= (and b!4722687 (not res!1998076)) b!4722698))

(assert (= (and b!4722698 (not res!1998079)) b!4722695))

(assert (= start!480732 b!4722703))

(assert (= (and start!480732 ((_ is Cons!52830) oldBucket!34)) b!4722692))

(assert (= (and start!480732 ((_ is Cons!52830) newBucket!218)) b!4722691))

(declare-fun m!5658437 () Bool)

(assert (=> b!4722704 m!5658437))

(declare-fun m!5658439 () Bool)

(assert (=> b!4722704 m!5658439))

(declare-fun m!5658441 () Bool)

(assert (=> b!4722701 m!5658441))

(declare-fun m!5658443 () Bool)

(assert (=> b!4722696 m!5658443))

(declare-fun m!5658445 () Bool)

(assert (=> b!4722693 m!5658445))

(declare-fun m!5658447 () Bool)

(assert (=> b!4722694 m!5658447))

(declare-fun m!5658449 () Bool)

(assert (=> b!4722685 m!5658449))

(declare-fun m!5658451 () Bool)

(assert (=> b!4722685 m!5658451))

(declare-fun m!5658453 () Bool)

(assert (=> b!4722690 m!5658453))

(declare-fun m!5658455 () Bool)

(assert (=> b!4722687 m!5658455))

(declare-fun m!5658457 () Bool)

(assert (=> b!4722689 m!5658457))

(declare-fun m!5658459 () Bool)

(assert (=> b!4722688 m!5658459))

(declare-fun m!5658461 () Bool)

(assert (=> b!4722688 m!5658461))

(declare-fun m!5658463 () Bool)

(assert (=> b!4722705 m!5658463))

(declare-fun m!5658465 () Bool)

(assert (=> b!4722695 m!5658465))

(declare-fun m!5658467 () Bool)

(assert (=> b!4722686 m!5658467))

(declare-fun m!5658469 () Bool)

(assert (=> b!4722700 m!5658469))

(declare-fun m!5658471 () Bool)

(assert (=> b!4722700 m!5658471))

(declare-fun m!5658473 () Bool)

(assert (=> b!4722700 m!5658473))

(assert (=> b!4722700 m!5658471))

(declare-fun m!5658475 () Bool)

(assert (=> b!4722700 m!5658475))

(declare-fun m!5658477 () Bool)

(assert (=> b!4722700 m!5658477))

(declare-fun m!5658479 () Bool)

(assert (=> b!4722700 m!5658479))

(assert (=> b!4722700 m!5658469))

(declare-fun m!5658481 () Bool)

(assert (=> b!4722700 m!5658481))

(assert (=> b!4722700 m!5658475))

(assert (=> b!4722700 m!5658477))

(declare-fun m!5658483 () Bool)

(assert (=> b!4722700 m!5658483))

(declare-fun m!5658485 () Bool)

(assert (=> b!4722697 m!5658485))

(declare-fun m!5658487 () Bool)

(assert (=> start!480732 m!5658487))

(declare-fun m!5658489 () Bool)

(assert (=> start!480732 m!5658489))

(declare-fun m!5658491 () Bool)

(assert (=> b!4722699 m!5658491))

(declare-fun m!5658493 () Bool)

(assert (=> b!4722698 m!5658493))

(declare-fun m!5658495 () Bool)

(assert (=> b!4722683 m!5658495))

(declare-fun m!5658497 () Bool)

(assert (=> b!4722683 m!5658497))

(declare-fun m!5658499 () Bool)

(assert (=> b!4722683 m!5658499))

(check-sat (not b!4722699) (not b!4722690) tp_is_empty!31349 (not b!4722700) (not b!4722688) (not b!4722685) (not b!4722696) (not b!4722683) (not b!4722694) (not b!4722698) (not b!4722701) tp_is_empty!31351 (not b!4722705) (not b!4722691) (not b!4722703) (not b!4722693) (not b!4722704) (not b!4722686) (not b!4722687) (not b!4722695) (not b!4722697) (not start!480732) (not b!4722692) (not b!4722689))
(check-sat)
(get-model)

(declare-fun bs!1112141 () Bool)

(declare-fun d!1503783 () Bool)

(assert (= bs!1112141 (and d!1503783 start!480732)))

(declare-fun lambda!215553 () Int)

(assert (=> bs!1112141 (not (= lambda!215553 lambda!215550))))

(assert (=> d!1503783 true))

(assert (=> d!1503783 (= (allKeysSameHashInMap!1928 lm!2023 hashF!1323) (forall!11588 (toList!5918 lm!2023) lambda!215553))))

(declare-fun bs!1112142 () Bool)

(assert (= bs!1112142 d!1503783))

(declare-fun m!5658507 () Bool)

(assert (=> bs!1112142 m!5658507))

(assert (=> b!4722693 d!1503783))

(declare-fun bs!1112143 () Bool)

(declare-fun d!1503791 () Bool)

(assert (= bs!1112143 (and d!1503791 start!480732)))

(declare-fun lambda!215558 () Int)

(assert (=> bs!1112143 (= lambda!215558 lambda!215550)))

(declare-fun bs!1112145 () Bool)

(assert (= bs!1112145 (and d!1503791 d!1503783)))

(assert (=> bs!1112145 (not (= lambda!215558 lambda!215553))))

(declare-fun lt!1887759 () ListMap!5281)

(declare-fun invariantList!1511 (List!52954) Bool)

(assert (=> d!1503791 (invariantList!1511 (toList!5917 lt!1887759))))

(declare-fun e!2945415 () ListMap!5281)

(assert (=> d!1503791 (= lt!1887759 e!2945415)))

(declare-fun c!806555 () Bool)

(assert (=> d!1503791 (= c!806555 ((_ is Cons!52831) (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))))

(assert (=> d!1503791 (forall!11588 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))) lambda!215558)))

(assert (=> d!1503791 (= (extractMap!2040 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))) lt!1887759)))

(declare-fun b!4722755 () Bool)

(assert (=> b!4722755 (= e!2945415 (addToMapMapFromBucket!1444 (_2!30520 (h!59178 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))))))

(declare-fun b!4722756 () Bool)

(assert (=> b!4722756 (= e!2945415 (ListMap!5282 Nil!52830))))

(assert (= (and d!1503791 c!806555) b!4722755))

(assert (= (and d!1503791 (not c!806555)) b!4722756))

(declare-fun m!5658535 () Bool)

(assert (=> d!1503791 m!5658535))

(declare-fun m!5658537 () Bool)

(assert (=> d!1503791 m!5658537))

(declare-fun m!5658539 () Bool)

(assert (=> b!4722755 m!5658539))

(assert (=> b!4722755 m!5658539))

(declare-fun m!5658541 () Bool)

(assert (=> b!4722755 m!5658541))

(assert (=> b!4722704 d!1503791))

(declare-fun bs!1112146 () Bool)

(declare-fun d!1503797 () Bool)

(assert (= bs!1112146 (and d!1503797 start!480732)))

(declare-fun lambda!215560 () Int)

(assert (=> bs!1112146 (= lambda!215560 lambda!215550)))

(declare-fun bs!1112147 () Bool)

(assert (= bs!1112147 (and d!1503797 d!1503783)))

(assert (=> bs!1112147 (not (= lambda!215560 lambda!215553))))

(declare-fun bs!1112148 () Bool)

(assert (= bs!1112148 (and d!1503797 d!1503791)))

(assert (=> bs!1112148 (= lambda!215560 lambda!215558)))

(declare-fun lt!1887761 () ListMap!5281)

(assert (=> d!1503797 (invariantList!1511 (toList!5917 lt!1887761))))

(declare-fun e!2945417 () ListMap!5281)

(assert (=> d!1503797 (= lt!1887761 e!2945417)))

(declare-fun c!806557 () Bool)

(assert (=> d!1503797 (= c!806557 ((_ is Cons!52831) lt!1887719))))

(assert (=> d!1503797 (forall!11588 lt!1887719 lambda!215560)))

(assert (=> d!1503797 (= (extractMap!2040 lt!1887719) lt!1887761)))

(declare-fun b!4722759 () Bool)

(assert (=> b!4722759 (= e!2945417 (addToMapMapFromBucket!1444 (_2!30520 (h!59178 lt!1887719)) (extractMap!2040 (t!360221 lt!1887719))))))

(declare-fun b!4722760 () Bool)

(assert (=> b!4722760 (= e!2945417 (ListMap!5282 Nil!52830))))

(assert (= (and d!1503797 c!806557) b!4722759))

(assert (= (and d!1503797 (not c!806557)) b!4722760))

(declare-fun m!5658543 () Bool)

(assert (=> d!1503797 m!5658543))

(declare-fun m!5658545 () Bool)

(assert (=> d!1503797 m!5658545))

(declare-fun m!5658547 () Bool)

(assert (=> b!4722759 m!5658547))

(assert (=> b!4722759 m!5658547))

(declare-fun m!5658549 () Bool)

(assert (=> b!4722759 m!5658549))

(assert (=> b!4722704 d!1503797))

(declare-fun b!4722847 () Bool)

(assert (=> b!4722847 true))

(declare-fun bs!1112216 () Bool)

(declare-fun b!4722845 () Bool)

(assert (= bs!1112216 (and b!4722845 b!4722847)))

(declare-fun lambda!215639 () Int)

(declare-fun lambda!215638 () Int)

(assert (=> bs!1112216 (= lambda!215639 lambda!215638)))

(assert (=> b!4722845 true))

(declare-fun lambda!215640 () Int)

(declare-fun lt!1887947 () ListMap!5281)

(assert (=> bs!1112216 (= (= lt!1887947 lt!1887727) (= lambda!215640 lambda!215638))))

(assert (=> b!4722845 (= (= lt!1887947 lt!1887727) (= lambda!215640 lambda!215639))))

(assert (=> b!4722845 true))

(declare-fun bs!1112219 () Bool)

(declare-fun d!1503799 () Bool)

(assert (= bs!1112219 (and d!1503799 b!4722847)))

(declare-fun lambda!215641 () Int)

(declare-fun lt!1887948 () ListMap!5281)

(assert (=> bs!1112219 (= (= lt!1887948 lt!1887727) (= lambda!215641 lambda!215638))))

(declare-fun bs!1112220 () Bool)

(assert (= bs!1112220 (and d!1503799 b!4722845)))

(assert (=> bs!1112220 (= (= lt!1887948 lt!1887727) (= lambda!215641 lambda!215639))))

(assert (=> bs!1112220 (= (= lt!1887948 lt!1887947) (= lambda!215641 lambda!215640))))

(assert (=> d!1503799 true))

(declare-fun c!806570 () Bool)

(declare-fun call!330331 () Bool)

(declare-fun bm!330325 () Bool)

(declare-fun forall!11590 (List!52954 Int) Bool)

(assert (=> bm!330325 (= call!330331 (forall!11590 (ite c!806570 (toList!5917 lt!1887727) (_2!30520 (h!59178 (toList!5918 lm!2023)))) (ite c!806570 lambda!215638 lambda!215640)))))

(declare-fun e!2945472 () ListMap!5281)

(assert (=> b!4722845 (= e!2945472 lt!1887947)))

(declare-fun lt!1887942 () ListMap!5281)

(assert (=> b!4722845 (= lt!1887942 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(assert (=> b!4722845 (= lt!1887947 (addToMapMapFromBucket!1444 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023)))) (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(declare-fun lt!1887957 () Unit!130119)

(declare-fun call!330332 () Unit!130119)

(assert (=> b!4722845 (= lt!1887957 call!330332)))

(assert (=> b!4722845 (forall!11590 (toList!5917 lt!1887727) lambda!215639)))

(declare-fun lt!1887945 () Unit!130119)

(assert (=> b!4722845 (= lt!1887945 lt!1887957)))

(assert (=> b!4722845 (forall!11590 (toList!5917 lt!1887942) lambda!215640)))

(declare-fun lt!1887943 () Unit!130119)

(declare-fun Unit!130135 () Unit!130119)

(assert (=> b!4722845 (= lt!1887943 Unit!130135)))

(assert (=> b!4722845 (forall!11590 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023)))) lambda!215640)))

(declare-fun lt!1887941 () Unit!130119)

(declare-fun Unit!130136 () Unit!130119)

(assert (=> b!4722845 (= lt!1887941 Unit!130136)))

(declare-fun lt!1887952 () Unit!130119)

(declare-fun Unit!130137 () Unit!130119)

(assert (=> b!4722845 (= lt!1887952 Unit!130137)))

(declare-fun lt!1887955 () Unit!130119)

(declare-fun forallContained!3639 (List!52954 Int tuple2!54450) Unit!130119)

(assert (=> b!4722845 (= lt!1887955 (forallContained!3639 (toList!5917 lt!1887942) lambda!215640 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(assert (=> b!4722845 (contains!16175 lt!1887942 (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(declare-fun lt!1887958 () Unit!130119)

(declare-fun Unit!130138 () Unit!130119)

(assert (=> b!4722845 (= lt!1887958 Unit!130138)))

(assert (=> b!4722845 (contains!16175 lt!1887947 (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(declare-fun lt!1887951 () Unit!130119)

(declare-fun Unit!130139 () Unit!130119)

(assert (=> b!4722845 (= lt!1887951 Unit!130139)))

(assert (=> b!4722845 call!330331))

(declare-fun lt!1887939 () Unit!130119)

(declare-fun Unit!130140 () Unit!130119)

(assert (=> b!4722845 (= lt!1887939 Unit!130140)))

(assert (=> b!4722845 (forall!11590 (toList!5917 lt!1887942) lambda!215640)))

(declare-fun lt!1887938 () Unit!130119)

(declare-fun Unit!130141 () Unit!130119)

(assert (=> b!4722845 (= lt!1887938 Unit!130141)))

(declare-fun lt!1887949 () Unit!130119)

(declare-fun Unit!130142 () Unit!130119)

(assert (=> b!4722845 (= lt!1887949 Unit!130142)))

(declare-fun lt!1887940 () Unit!130119)

(declare-fun addForallContainsKeyThenBeforeAdding!796 (ListMap!5281 ListMap!5281 K!14185 V!14431) Unit!130119)

(assert (=> b!4722845 (= lt!1887940 (addForallContainsKeyThenBeforeAdding!796 lt!1887727 lt!1887947 (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (_2!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(assert (=> b!4722845 (forall!11590 (toList!5917 lt!1887727) lambda!215640)))

(declare-fun lt!1887953 () Unit!130119)

(assert (=> b!4722845 (= lt!1887953 lt!1887940)))

(declare-fun call!330330 () Bool)

(assert (=> b!4722845 call!330330))

(declare-fun lt!1887944 () Unit!130119)

(declare-fun Unit!130143 () Unit!130119)

(assert (=> b!4722845 (= lt!1887944 Unit!130143)))

(declare-fun res!1998151 () Bool)

(assert (=> b!4722845 (= res!1998151 (forall!11590 (_2!30520 (h!59178 (toList!5918 lm!2023))) lambda!215640))))

(declare-fun e!2945474 () Bool)

(assert (=> b!4722845 (=> (not res!1998151) (not e!2945474))))

(assert (=> b!4722845 e!2945474))

(declare-fun lt!1887950 () Unit!130119)

(declare-fun Unit!130144 () Unit!130119)

(assert (=> b!4722845 (= lt!1887950 Unit!130144)))

(declare-fun e!2945473 () Bool)

(assert (=> d!1503799 e!2945473))

(declare-fun res!1998153 () Bool)

(assert (=> d!1503799 (=> (not res!1998153) (not e!2945473))))

(assert (=> d!1503799 (= res!1998153 (forall!11590 (_2!30520 (h!59178 (toList!5918 lm!2023))) lambda!215641))))

(assert (=> d!1503799 (= lt!1887948 e!2945472)))

(assert (=> d!1503799 (= c!806570 ((_ is Nil!52830) (_2!30520 (h!59178 (toList!5918 lm!2023)))))))

(assert (=> d!1503799 (noDuplicateKeys!2014 (_2!30520 (h!59178 (toList!5918 lm!2023))))))

(assert (=> d!1503799 (= (addToMapMapFromBucket!1444 (_2!30520 (h!59178 (toList!5918 lm!2023))) lt!1887727) lt!1887948)))

(declare-fun b!4722846 () Bool)

(assert (=> b!4722846 (= e!2945474 (forall!11590 (toList!5917 lt!1887727) lambda!215640))))

(assert (=> b!4722847 (= e!2945472 lt!1887727)))

(declare-fun lt!1887946 () Unit!130119)

(assert (=> b!4722847 (= lt!1887946 call!330332)))

(assert (=> b!4722847 call!330331))

(declare-fun lt!1887956 () Unit!130119)

(assert (=> b!4722847 (= lt!1887956 lt!1887946)))

(assert (=> b!4722847 call!330330))

(declare-fun lt!1887954 () Unit!130119)

(declare-fun Unit!130146 () Unit!130119)

(assert (=> b!4722847 (= lt!1887954 Unit!130146)))

(declare-fun b!4722848 () Bool)

(assert (=> b!4722848 (= e!2945473 (invariantList!1511 (toList!5917 lt!1887948)))))

(declare-fun b!4722849 () Bool)

(declare-fun res!1998152 () Bool)

(assert (=> b!4722849 (=> (not res!1998152) (not e!2945473))))

(assert (=> b!4722849 (= res!1998152 (forall!11590 (toList!5917 lt!1887727) lambda!215641))))

(declare-fun bm!330326 () Bool)

(assert (=> bm!330326 (= call!330330 (forall!11590 (toList!5917 lt!1887727) (ite c!806570 lambda!215638 lambda!215640)))))

(declare-fun bm!330327 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!797 (ListMap!5281) Unit!130119)

(assert (=> bm!330327 (= call!330332 (lemmaContainsAllItsOwnKeys!797 lt!1887727))))

(assert (= (and d!1503799 c!806570) b!4722847))

(assert (= (and d!1503799 (not c!806570)) b!4722845))

(assert (= (and b!4722845 res!1998151) b!4722846))

(assert (= (or b!4722847 b!4722845) bm!330327))

(assert (= (or b!4722847 b!4722845) bm!330326))

(assert (= (or b!4722847 b!4722845) bm!330325))

(assert (= (and d!1503799 res!1998153) b!4722849))

(assert (= (and b!4722849 res!1998152) b!4722848))

(declare-fun m!5658731 () Bool)

(assert (=> bm!330326 m!5658731))

(declare-fun m!5658733 () Bool)

(assert (=> bm!330327 m!5658733))

(declare-fun m!5658735 () Bool)

(assert (=> b!4722848 m!5658735))

(declare-fun m!5658737 () Bool)

(assert (=> d!1503799 m!5658737))

(declare-fun m!5658739 () Bool)

(assert (=> d!1503799 m!5658739))

(declare-fun m!5658741 () Bool)

(assert (=> b!4722849 m!5658741))

(declare-fun m!5658743 () Bool)

(assert (=> bm!330325 m!5658743))

(declare-fun m!5658745 () Bool)

(assert (=> b!4722845 m!5658745))

(declare-fun m!5658747 () Bool)

(assert (=> b!4722845 m!5658747))

(declare-fun m!5658749 () Bool)

(assert (=> b!4722845 m!5658749))

(declare-fun m!5658751 () Bool)

(assert (=> b!4722845 m!5658751))

(declare-fun m!5658753 () Bool)

(assert (=> b!4722845 m!5658753))

(declare-fun m!5658755 () Bool)

(assert (=> b!4722845 m!5658755))

(declare-fun m!5658757 () Bool)

(assert (=> b!4722845 m!5658757))

(declare-fun m!5658759 () Bool)

(assert (=> b!4722845 m!5658759))

(declare-fun m!5658761 () Bool)

(assert (=> b!4722845 m!5658761))

(assert (=> b!4722845 m!5658751))

(assert (=> b!4722845 m!5658755))

(declare-fun m!5658765 () Bool)

(assert (=> b!4722845 m!5658765))

(declare-fun m!5658769 () Bool)

(assert (=> b!4722845 m!5658769))

(assert (=> b!4722846 m!5658747))

(assert (=> b!4722683 d!1503799))

(declare-fun bs!1112222 () Bool)

(declare-fun d!1503843 () Bool)

(assert (= bs!1112222 (and d!1503843 start!480732)))

(declare-fun lambda!215642 () Int)

(assert (=> bs!1112222 (= lambda!215642 lambda!215550)))

(declare-fun bs!1112224 () Bool)

(assert (= bs!1112224 (and d!1503843 d!1503783)))

(assert (=> bs!1112224 (not (= lambda!215642 lambda!215553))))

(declare-fun bs!1112226 () Bool)

(assert (= bs!1112226 (and d!1503843 d!1503791)))

(assert (=> bs!1112226 (= lambda!215642 lambda!215558)))

(declare-fun bs!1112228 () Bool)

(assert (= bs!1112228 (and d!1503843 d!1503797)))

(assert (=> bs!1112228 (= lambda!215642 lambda!215560)))

(declare-fun lt!1887984 () ListMap!5281)

(assert (=> d!1503843 (invariantList!1511 (toList!5917 lt!1887984))))

(declare-fun e!2945479 () ListMap!5281)

(assert (=> d!1503843 (= lt!1887984 e!2945479)))

(declare-fun c!806572 () Bool)

(assert (=> d!1503843 (= c!806572 ((_ is Cons!52831) (t!360221 (toList!5918 lm!2023))))))

(assert (=> d!1503843 (forall!11588 (t!360221 (toList!5918 lm!2023)) lambda!215642)))

(assert (=> d!1503843 (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887984)))

(declare-fun b!4722859 () Bool)

(assert (=> b!4722859 (= e!2945479 (addToMapMapFromBucket!1444 (_2!30520 (h!59178 (t!360221 (toList!5918 lm!2023)))) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))))))

(declare-fun b!4722860 () Bool)

(assert (=> b!4722860 (= e!2945479 (ListMap!5282 Nil!52830))))

(assert (= (and d!1503843 c!806572) b!4722859))

(assert (= (and d!1503843 (not c!806572)) b!4722860))

(declare-fun m!5658771 () Bool)

(assert (=> d!1503843 m!5658771))

(declare-fun m!5658773 () Bool)

(assert (=> d!1503843 m!5658773))

(declare-fun m!5658775 () Bool)

(assert (=> b!4722859 m!5658775))

(assert (=> b!4722859 m!5658775))

(declare-fun m!5658777 () Bool)

(assert (=> b!4722859 m!5658777))

(assert (=> b!4722683 d!1503843))

(declare-fun d!1503845 () Bool)

(declare-fun tail!9004 (List!52955) List!52955)

(assert (=> d!1503845 (= (tail!9002 lm!2023) (ListLongMap!4448 (tail!9004 (toList!5918 lm!2023))))))

(declare-fun bs!1112242 () Bool)

(assert (= bs!1112242 d!1503845))

(declare-fun m!5658779 () Bool)

(assert (=> bs!1112242 m!5658779))

(assert (=> b!4722683 d!1503845))

(declare-fun d!1503847 () Bool)

(declare-fun res!1998163 () Bool)

(declare-fun e!2945484 () Bool)

(assert (=> d!1503847 (=> res!1998163 e!2945484)))

(assert (=> d!1503847 (= res!1998163 (not ((_ is Cons!52830) oldBucket!34)))))

(assert (=> d!1503847 (= (noDuplicateKeys!2014 oldBucket!34) e!2945484)))

(declare-fun b!4722865 () Bool)

(declare-fun e!2945485 () Bool)

(assert (=> b!4722865 (= e!2945484 e!2945485)))

(declare-fun res!1998164 () Bool)

(assert (=> b!4722865 (=> (not res!1998164) (not e!2945485))))

(assert (=> b!4722865 (= res!1998164 (not (containsKey!3369 (t!360220 oldBucket!34) (_1!30519 (h!59177 oldBucket!34)))))))

(declare-fun b!4722866 () Bool)

(assert (=> b!4722866 (= e!2945485 (noDuplicateKeys!2014 (t!360220 oldBucket!34)))))

(assert (= (and d!1503847 (not res!1998163)) b!4722865))

(assert (= (and b!4722865 res!1998164) b!4722866))

(declare-fun m!5658781 () Bool)

(assert (=> b!4722865 m!5658781))

(declare-fun m!5658783 () Bool)

(assert (=> b!4722866 m!5658783))

(assert (=> b!4722694 d!1503847))

(declare-fun d!1503849 () Bool)

(assert (=> d!1503849 (= (tail!9003 oldBucket!34) (t!360220 oldBucket!34))))

(assert (=> b!4722705 d!1503849))

(declare-fun d!1503851 () Bool)

(declare-fun e!2945494 () Bool)

(assert (=> d!1503851 e!2945494))

(declare-fun res!1998170 () Bool)

(assert (=> d!1503851 (=> res!1998170 e!2945494)))

(declare-fun lt!1888016 () Bool)

(assert (=> d!1503851 (= res!1998170 (not lt!1888016))))

(declare-fun lt!1888017 () Bool)

(assert (=> d!1503851 (= lt!1888016 lt!1888017)))

(declare-fun lt!1888015 () Unit!130119)

(declare-fun e!2945493 () Unit!130119)

(assert (=> d!1503851 (= lt!1888015 e!2945493)))

(declare-fun c!806576 () Bool)

(assert (=> d!1503851 (= c!806576 lt!1888017)))

(declare-fun containsKey!3372 (List!52955 (_ BitVec 64)) Bool)

(assert (=> d!1503851 (= lt!1888017 (containsKey!3372 (toList!5918 lt!1887718) lt!1887725))))

(assert (=> d!1503851 (= (contains!16176 lt!1887718 lt!1887725) lt!1888016)))

(declare-fun b!4722878 () Bool)

(declare-fun lt!1888014 () Unit!130119)

(assert (=> b!4722878 (= e!2945493 lt!1888014)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1847 (List!52955 (_ BitVec 64)) Unit!130119)

(assert (=> b!4722878 (= lt!1888014 (lemmaContainsKeyImpliesGetValueByKeyDefined!1847 (toList!5918 lt!1887718) lt!1887725))))

(declare-datatypes ((Option!12360 0))(
  ( (None!12359) (Some!12359 (v!46936 List!52954)) )
))
(declare-fun isDefined!9614 (Option!12360) Bool)

(declare-fun getValueByKey!1956 (List!52955 (_ BitVec 64)) Option!12360)

(assert (=> b!4722878 (isDefined!9614 (getValueByKey!1956 (toList!5918 lt!1887718) lt!1887725))))

(declare-fun b!4722879 () Bool)

(declare-fun Unit!130157 () Unit!130119)

(assert (=> b!4722879 (= e!2945493 Unit!130157)))

(declare-fun b!4722880 () Bool)

(assert (=> b!4722880 (= e!2945494 (isDefined!9614 (getValueByKey!1956 (toList!5918 lt!1887718) lt!1887725)))))

(assert (= (and d!1503851 c!806576) b!4722878))

(assert (= (and d!1503851 (not c!806576)) b!4722879))

(assert (= (and d!1503851 (not res!1998170)) b!4722880))

(declare-fun m!5658825 () Bool)

(assert (=> d!1503851 m!5658825))

(declare-fun m!5658827 () Bool)

(assert (=> b!4722878 m!5658827))

(declare-fun m!5658829 () Bool)

(assert (=> b!4722878 m!5658829))

(assert (=> b!4722878 m!5658829))

(declare-fun m!5658831 () Bool)

(assert (=> b!4722878 m!5658831))

(assert (=> b!4722880 m!5658829))

(assert (=> b!4722880 m!5658829))

(assert (=> b!4722880 m!5658831))

(assert (=> b!4722695 d!1503851))

(declare-fun d!1503859 () Bool)

(declare-fun e!2945516 () Bool)

(assert (=> d!1503859 e!2945516))

(declare-fun res!1998178 () Bool)

(assert (=> d!1503859 (=> res!1998178 e!2945516)))

(declare-fun e!2945518 () Bool)

(assert (=> d!1503859 (= res!1998178 e!2945518)))

(declare-fun res!1998177 () Bool)

(assert (=> d!1503859 (=> (not res!1998177) (not e!2945518))))

(declare-fun lt!1888042 () Bool)

(assert (=> d!1503859 (= res!1998177 (not lt!1888042))))

(declare-fun lt!1888035 () Bool)

(assert (=> d!1503859 (= lt!1888042 lt!1888035)))

(declare-fun lt!1888036 () Unit!130119)

(declare-fun e!2945519 () Unit!130119)

(assert (=> d!1503859 (= lt!1888036 e!2945519)))

(declare-fun c!806584 () Bool)

(assert (=> d!1503859 (= c!806584 lt!1888035)))

(declare-fun containsKey!3373 (List!52954 K!14185) Bool)

(assert (=> d!1503859 (= lt!1888035 (containsKey!3373 (toList!5917 lt!1887721) key!4653))))

(assert (=> d!1503859 (= (contains!16175 lt!1887721 key!4653) lt!1888042)))

(declare-fun b!4722912 () Bool)

(declare-fun e!2945515 () Bool)

(declare-datatypes ((List!52957 0))(
  ( (Nil!52833) (Cons!52833 (h!59182 K!14185) (t!360225 List!52957)) )
))
(declare-fun contains!16179 (List!52957 K!14185) Bool)

(declare-fun keys!18974 (ListMap!5281) List!52957)

(assert (=> b!4722912 (= e!2945515 (contains!16179 (keys!18974 lt!1887721) key!4653))))

(declare-fun b!4722913 () Bool)

(assert (=> b!4722913 (= e!2945516 e!2945515)))

(declare-fun res!1998179 () Bool)

(assert (=> b!4722913 (=> (not res!1998179) (not e!2945515))))

(declare-datatypes ((Option!12361 0))(
  ( (None!12360) (Some!12360 (v!46937 V!14431)) )
))
(declare-fun isDefined!9615 (Option!12361) Bool)

(declare-fun getValueByKey!1957 (List!52954 K!14185) Option!12361)

(assert (=> b!4722913 (= res!1998179 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1887721) key!4653)))))

(declare-fun b!4722914 () Bool)

(declare-fun e!2945520 () List!52957)

(assert (=> b!4722914 (= e!2945520 (keys!18974 lt!1887721))))

(declare-fun b!4722915 () Bool)

(declare-fun getKeysList!951 (List!52954) List!52957)

(assert (=> b!4722915 (= e!2945520 (getKeysList!951 (toList!5917 lt!1887721)))))

(declare-fun b!4722916 () Bool)

(declare-fun e!2945517 () Unit!130119)

(assert (=> b!4722916 (= e!2945519 e!2945517)))

(declare-fun c!806586 () Bool)

(declare-fun call!330341 () Bool)

(assert (=> b!4722916 (= c!806586 call!330341)))

(declare-fun b!4722917 () Bool)

(assert (=> b!4722917 false))

(declare-fun lt!1888038 () Unit!130119)

(declare-fun lt!1888041 () Unit!130119)

(assert (=> b!4722917 (= lt!1888038 lt!1888041)))

(assert (=> b!4722917 (containsKey!3373 (toList!5917 lt!1887721) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!950 (List!52954 K!14185) Unit!130119)

(assert (=> b!4722917 (= lt!1888041 (lemmaInGetKeysListThenContainsKey!950 (toList!5917 lt!1887721) key!4653))))

(declare-fun Unit!130158 () Unit!130119)

(assert (=> b!4722917 (= e!2945517 Unit!130158)))

(declare-fun b!4722918 () Bool)

(declare-fun Unit!130159 () Unit!130119)

(assert (=> b!4722918 (= e!2945517 Unit!130159)))

(declare-fun b!4722919 () Bool)

(assert (=> b!4722919 (= e!2945518 (not (contains!16179 (keys!18974 lt!1887721) key!4653)))))

(declare-fun bm!330336 () Bool)

(assert (=> bm!330336 (= call!330341 (contains!16179 e!2945520 key!4653))))

(declare-fun c!806585 () Bool)

(assert (=> bm!330336 (= c!806585 c!806584)))

(declare-fun b!4722920 () Bool)

(declare-fun lt!1888039 () Unit!130119)

(assert (=> b!4722920 (= e!2945519 lt!1888039)))

(declare-fun lt!1888037 () Unit!130119)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1848 (List!52954 K!14185) Unit!130119)

(assert (=> b!4722920 (= lt!1888037 (lemmaContainsKeyImpliesGetValueByKeyDefined!1848 (toList!5917 lt!1887721) key!4653))))

(assert (=> b!4722920 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1887721) key!4653))))

(declare-fun lt!1888040 () Unit!130119)

(assert (=> b!4722920 (= lt!1888040 lt!1888037)))

(declare-fun lemmaInListThenGetKeysListContains!946 (List!52954 K!14185) Unit!130119)

(assert (=> b!4722920 (= lt!1888039 (lemmaInListThenGetKeysListContains!946 (toList!5917 lt!1887721) key!4653))))

(assert (=> b!4722920 call!330341))

(assert (= (and d!1503859 c!806584) b!4722920))

(assert (= (and d!1503859 (not c!806584)) b!4722916))

(assert (= (and b!4722916 c!806586) b!4722917))

(assert (= (and b!4722916 (not c!806586)) b!4722918))

(assert (= (or b!4722920 b!4722916) bm!330336))

(assert (= (and bm!330336 c!806585) b!4722915))

(assert (= (and bm!330336 (not c!806585)) b!4722914))

(assert (= (and d!1503859 res!1998177) b!4722919))

(assert (= (and d!1503859 (not res!1998178)) b!4722913))

(assert (= (and b!4722913 res!1998179) b!4722912))

(declare-fun m!5658879 () Bool)

(assert (=> b!4722920 m!5658879))

(declare-fun m!5658881 () Bool)

(assert (=> b!4722920 m!5658881))

(assert (=> b!4722920 m!5658881))

(declare-fun m!5658883 () Bool)

(assert (=> b!4722920 m!5658883))

(declare-fun m!5658885 () Bool)

(assert (=> b!4722920 m!5658885))

(declare-fun m!5658887 () Bool)

(assert (=> b!4722917 m!5658887))

(declare-fun m!5658889 () Bool)

(assert (=> b!4722917 m!5658889))

(assert (=> b!4722913 m!5658881))

(assert (=> b!4722913 m!5658881))

(assert (=> b!4722913 m!5658883))

(declare-fun m!5658891 () Bool)

(assert (=> b!4722914 m!5658891))

(declare-fun m!5658893 () Bool)

(assert (=> b!4722915 m!5658893))

(assert (=> b!4722919 m!5658891))

(assert (=> b!4722919 m!5658891))

(declare-fun m!5658895 () Bool)

(assert (=> b!4722919 m!5658895))

(assert (=> d!1503859 m!5658887))

(declare-fun m!5658897 () Bool)

(assert (=> bm!330336 m!5658897))

(assert (=> b!4722912 m!5658891))

(assert (=> b!4722912 m!5658891))

(assert (=> b!4722912 m!5658895))

(assert (=> b!4722685 d!1503859))

(declare-fun bs!1112324 () Bool)

(declare-fun d!1503871 () Bool)

(assert (= bs!1112324 (and d!1503871 d!1503783)))

(declare-fun lambda!215653 () Int)

(assert (=> bs!1112324 (not (= lambda!215653 lambda!215553))))

(declare-fun bs!1112325 () Bool)

(assert (= bs!1112325 (and d!1503871 start!480732)))

(assert (=> bs!1112325 (= lambda!215653 lambda!215550)))

(declare-fun bs!1112326 () Bool)

(assert (= bs!1112326 (and d!1503871 d!1503843)))

(assert (=> bs!1112326 (= lambda!215653 lambda!215642)))

(declare-fun bs!1112327 () Bool)

(assert (= bs!1112327 (and d!1503871 d!1503797)))

(assert (=> bs!1112327 (= lambda!215653 lambda!215560)))

(declare-fun bs!1112328 () Bool)

(assert (= bs!1112328 (and d!1503871 d!1503791)))

(assert (=> bs!1112328 (= lambda!215653 lambda!215558)))

(declare-fun lt!1888043 () ListMap!5281)

(assert (=> d!1503871 (invariantList!1511 (toList!5917 lt!1888043))))

(declare-fun e!2945521 () ListMap!5281)

(assert (=> d!1503871 (= lt!1888043 e!2945521)))

(declare-fun c!806587 () Bool)

(assert (=> d!1503871 (= c!806587 ((_ is Cons!52831) (toList!5918 lm!2023)))))

(assert (=> d!1503871 (forall!11588 (toList!5918 lm!2023) lambda!215653)))

(assert (=> d!1503871 (= (extractMap!2040 (toList!5918 lm!2023)) lt!1888043)))

(declare-fun b!4722921 () Bool)

(assert (=> b!4722921 (= e!2945521 (addToMapMapFromBucket!1444 (_2!30520 (h!59178 (toList!5918 lm!2023))) (extractMap!2040 (t!360221 (toList!5918 lm!2023)))))))

(declare-fun b!4722922 () Bool)

(assert (=> b!4722922 (= e!2945521 (ListMap!5282 Nil!52830))))

(assert (= (and d!1503871 c!806587) b!4722921))

(assert (= (and d!1503871 (not c!806587)) b!4722922))

(declare-fun m!5658899 () Bool)

(assert (=> d!1503871 m!5658899))

(declare-fun m!5658901 () Bool)

(assert (=> d!1503871 m!5658901))

(assert (=> b!4722921 m!5658497))

(assert (=> b!4722921 m!5658497))

(declare-fun m!5658903 () Bool)

(assert (=> b!4722921 m!5658903))

(assert (=> b!4722685 d!1503871))

(declare-fun bs!1112329 () Bool)

(declare-fun d!1503873 () Bool)

(assert (= bs!1112329 (and d!1503873 b!4722847)))

(declare-fun lambda!215656 () Int)

(assert (=> bs!1112329 (not (= lambda!215656 lambda!215638))))

(declare-fun bs!1112330 () Bool)

(assert (= bs!1112330 (and d!1503873 b!4722845)))

(assert (=> bs!1112330 (not (= lambda!215656 lambda!215639))))

(assert (=> bs!1112330 (not (= lambda!215656 lambda!215640))))

(declare-fun bs!1112331 () Bool)

(assert (= bs!1112331 (and d!1503873 d!1503799)))

(assert (=> bs!1112331 (not (= lambda!215656 lambda!215641))))

(assert (=> d!1503873 true))

(assert (=> d!1503873 true))

(assert (=> d!1503873 (= (allKeysSameHash!1840 newBucket!218 hash!405 hashF!1323) (forall!11590 newBucket!218 lambda!215656))))

(declare-fun bs!1112332 () Bool)

(assert (= bs!1112332 d!1503873))

(declare-fun m!5658905 () Bool)

(assert (=> bs!1112332 m!5658905))

(assert (=> b!4722696 d!1503873))

(declare-fun d!1503875 () Bool)

(declare-fun hash!4386 (Hashable!6383 K!14185) (_ BitVec 64))

(assert (=> d!1503875 (= (hash!4384 hashF!1323 key!4653) (hash!4386 hashF!1323 key!4653))))

(declare-fun bs!1112333 () Bool)

(assert (= bs!1112333 d!1503875))

(declare-fun m!5658907 () Bool)

(assert (=> bs!1112333 m!5658907))

(assert (=> b!4722686 d!1503875))

(declare-fun b!4722936 () Bool)

(declare-fun e!2945526 () List!52954)

(declare-fun e!2945527 () List!52954)

(assert (=> b!4722936 (= e!2945526 e!2945527)))

(declare-fun c!806592 () Bool)

(assert (=> b!4722936 (= c!806592 ((_ is Cons!52830) oldBucket!34))))

(declare-fun b!4722937 () Bool)

(assert (=> b!4722937 (= e!2945527 (Cons!52830 (h!59177 oldBucket!34) (removePairForKey!1609 (t!360220 oldBucket!34) key!4653)))))

(declare-fun b!4722935 () Bool)

(assert (=> b!4722935 (= e!2945526 (t!360220 oldBucket!34))))

(declare-fun b!4722938 () Bool)

(assert (=> b!4722938 (= e!2945527 Nil!52830)))

(declare-fun d!1503877 () Bool)

(declare-fun lt!1888046 () List!52954)

(assert (=> d!1503877 (not (containsKey!3369 lt!1888046 key!4653))))

(assert (=> d!1503877 (= lt!1888046 e!2945526)))

(declare-fun c!806593 () Bool)

(assert (=> d!1503877 (= c!806593 (and ((_ is Cons!52830) oldBucket!34) (= (_1!30519 (h!59177 oldBucket!34)) key!4653)))))

(assert (=> d!1503877 (noDuplicateKeys!2014 oldBucket!34)))

(assert (=> d!1503877 (= (removePairForKey!1609 oldBucket!34 key!4653) lt!1888046)))

(assert (= (and d!1503877 c!806593) b!4722935))

(assert (= (and d!1503877 (not c!806593)) b!4722936))

(assert (= (and b!4722936 c!806592) b!4722937))

(assert (= (and b!4722936 (not c!806592)) b!4722938))

(declare-fun m!5658909 () Bool)

(assert (=> b!4722937 m!5658909))

(declare-fun m!5658911 () Bool)

(assert (=> d!1503877 m!5658911))

(assert (=> d!1503877 m!5658447))

(assert (=> b!4722697 d!1503877))

(declare-fun d!1503879 () Bool)

(declare-fun res!1998184 () Bool)

(declare-fun e!2945532 () Bool)

(assert (=> d!1503879 (=> res!1998184 e!2945532)))

(assert (=> d!1503879 (= res!1998184 ((_ is Nil!52831) lt!1887719))))

(assert (=> d!1503879 (= (forall!11588 lt!1887719 lambda!215550) e!2945532)))

(declare-fun b!4722943 () Bool)

(declare-fun e!2945533 () Bool)

(assert (=> b!4722943 (= e!2945532 e!2945533)))

(declare-fun res!1998185 () Bool)

(assert (=> b!4722943 (=> (not res!1998185) (not e!2945533))))

(declare-fun dynLambda!21820 (Int tuple2!54452) Bool)

(assert (=> b!4722943 (= res!1998185 (dynLambda!21820 lambda!215550 (h!59178 lt!1887719)))))

(declare-fun b!4722944 () Bool)

(assert (=> b!4722944 (= e!2945533 (forall!11588 (t!360221 lt!1887719) lambda!215550))))

(assert (= (and d!1503879 (not res!1998184)) b!4722943))

(assert (= (and b!4722943 res!1998185) b!4722944))

(declare-fun b_lambda!178745 () Bool)

(assert (=> (not b_lambda!178745) (not b!4722943)))

(declare-fun m!5658913 () Bool)

(assert (=> b!4722943 m!5658913))

(declare-fun m!5658915 () Bool)

(assert (=> b!4722944 m!5658915))

(assert (=> b!4722687 d!1503879))

(declare-fun bs!1112334 () Bool)

(declare-fun d!1503881 () Bool)

(assert (= bs!1112334 (and d!1503881 d!1503783)))

(declare-fun lambda!215657 () Int)

(assert (=> bs!1112334 (= lambda!215657 lambda!215553)))

(declare-fun bs!1112335 () Bool)

(assert (= bs!1112335 (and d!1503881 d!1503871)))

(assert (=> bs!1112335 (not (= lambda!215657 lambda!215653))))

(declare-fun bs!1112336 () Bool)

(assert (= bs!1112336 (and d!1503881 start!480732)))

(assert (=> bs!1112336 (not (= lambda!215657 lambda!215550))))

(declare-fun bs!1112337 () Bool)

(assert (= bs!1112337 (and d!1503881 d!1503843)))

(assert (=> bs!1112337 (not (= lambda!215657 lambda!215642))))

(declare-fun bs!1112338 () Bool)

(assert (= bs!1112338 (and d!1503881 d!1503797)))

(assert (=> bs!1112338 (not (= lambda!215657 lambda!215560))))

(declare-fun bs!1112339 () Bool)

(assert (= bs!1112339 (and d!1503881 d!1503791)))

(assert (=> bs!1112339 (not (= lambda!215657 lambda!215558))))

(assert (=> d!1503881 true))

(assert (=> d!1503881 (= (allKeysSameHashInMap!1928 lt!1887718 hashF!1323) (forall!11588 (toList!5918 lt!1887718) lambda!215657))))

(declare-fun bs!1112340 () Bool)

(assert (= bs!1112340 d!1503881))

(declare-fun m!5658917 () Bool)

(assert (=> bs!1112340 m!5658917))

(assert (=> b!4722698 d!1503881))

(declare-fun d!1503883 () Bool)

(declare-fun res!1998186 () Bool)

(declare-fun e!2945534 () Bool)

(assert (=> d!1503883 (=> res!1998186 e!2945534)))

(assert (=> d!1503883 (= res!1998186 ((_ is Nil!52831) (toList!5918 lm!2023)))))

(assert (=> d!1503883 (= (forall!11588 (toList!5918 lm!2023) lambda!215550) e!2945534)))

(declare-fun b!4722945 () Bool)

(declare-fun e!2945535 () Bool)

(assert (=> b!4722945 (= e!2945534 e!2945535)))

(declare-fun res!1998187 () Bool)

(assert (=> b!4722945 (=> (not res!1998187) (not e!2945535))))

(assert (=> b!4722945 (= res!1998187 (dynLambda!21820 lambda!215550 (h!59178 (toList!5918 lm!2023))))))

(declare-fun b!4722946 () Bool)

(assert (=> b!4722946 (= e!2945535 (forall!11588 (t!360221 (toList!5918 lm!2023)) lambda!215550))))

(assert (= (and d!1503883 (not res!1998186)) b!4722945))

(assert (= (and b!4722945 res!1998187) b!4722946))

(declare-fun b_lambda!178747 () Bool)

(assert (=> (not b_lambda!178747) (not b!4722945)))

(declare-fun m!5658919 () Bool)

(assert (=> b!4722945 m!5658919))

(declare-fun m!5658921 () Bool)

(assert (=> b!4722946 m!5658921))

(assert (=> start!480732 d!1503883))

(declare-fun d!1503885 () Bool)

(declare-fun isStrictlySorted!750 (List!52955) Bool)

(assert (=> d!1503885 (= (inv!68059 lm!2023) (isStrictlySorted!750 (toList!5918 lm!2023)))))

(declare-fun bs!1112341 () Bool)

(assert (= bs!1112341 d!1503885))

(declare-fun m!5658923 () Bool)

(assert (=> bs!1112341 m!5658923))

(assert (=> start!480732 d!1503885))

(declare-fun bs!1112342 () Bool)

(declare-fun b!4722949 () Bool)

(assert (= bs!1112342 (and b!4722949 b!4722845)))

(declare-fun lambda!215658 () Int)

(assert (=> bs!1112342 (= (= lt!1887727 lt!1887947) (= lambda!215658 lambda!215640))))

(declare-fun bs!1112343 () Bool)

(assert (= bs!1112343 (and b!4722949 d!1503799)))

(assert (=> bs!1112343 (= (= lt!1887727 lt!1887948) (= lambda!215658 lambda!215641))))

(assert (=> bs!1112342 (= lambda!215658 lambda!215639)))

(declare-fun bs!1112344 () Bool)

(assert (= bs!1112344 (and b!4722949 d!1503873)))

(assert (=> bs!1112344 (not (= lambda!215658 lambda!215656))))

(declare-fun bs!1112345 () Bool)

(assert (= bs!1112345 (and b!4722949 b!4722847)))

(assert (=> bs!1112345 (= lambda!215658 lambda!215638)))

(assert (=> b!4722949 true))

(declare-fun bs!1112346 () Bool)

(declare-fun b!4722947 () Bool)

(assert (= bs!1112346 (and b!4722947 d!1503799)))

(declare-fun lambda!215659 () Int)

(assert (=> bs!1112346 (= (= lt!1887727 lt!1887948) (= lambda!215659 lambda!215641))))

(declare-fun bs!1112347 () Bool)

(assert (= bs!1112347 (and b!4722947 b!4722845)))

(assert (=> bs!1112347 (= lambda!215659 lambda!215639)))

(declare-fun bs!1112348 () Bool)

(assert (= bs!1112348 (and b!4722947 d!1503873)))

(assert (=> bs!1112348 (not (= lambda!215659 lambda!215656))))

(declare-fun bs!1112349 () Bool)

(assert (= bs!1112349 (and b!4722947 b!4722847)))

(assert (=> bs!1112349 (= lambda!215659 lambda!215638)))

(declare-fun bs!1112350 () Bool)

(assert (= bs!1112350 (and b!4722947 b!4722949)))

(assert (=> bs!1112350 (= lambda!215659 lambda!215658)))

(assert (=> bs!1112347 (= (= lt!1887727 lt!1887947) (= lambda!215659 lambda!215640))))

(assert (=> b!4722947 true))

(declare-fun lambda!215660 () Int)

(declare-fun lt!1888056 () ListMap!5281)

(assert (=> bs!1112346 (= (= lt!1888056 lt!1887948) (= lambda!215660 lambda!215641))))

(assert (=> bs!1112347 (= (= lt!1888056 lt!1887727) (= lambda!215660 lambda!215639))))

(assert (=> bs!1112348 (not (= lambda!215660 lambda!215656))))

(assert (=> b!4722947 (= (= lt!1888056 lt!1887727) (= lambda!215660 lambda!215659))))

(assert (=> bs!1112349 (= (= lt!1888056 lt!1887727) (= lambda!215660 lambda!215638))))

(assert (=> bs!1112350 (= (= lt!1888056 lt!1887727) (= lambda!215660 lambda!215658))))

(assert (=> bs!1112347 (= (= lt!1888056 lt!1887947) (= lambda!215660 lambda!215640))))

(assert (=> b!4722947 true))

(declare-fun bs!1112351 () Bool)

(declare-fun d!1503887 () Bool)

(assert (= bs!1112351 (and d!1503887 d!1503799)))

(declare-fun lt!1888057 () ListMap!5281)

(declare-fun lambda!215661 () Int)

(assert (=> bs!1112351 (= (= lt!1888057 lt!1887948) (= lambda!215661 lambda!215641))))

(declare-fun bs!1112352 () Bool)

(assert (= bs!1112352 (and d!1503887 d!1503873)))

(assert (=> bs!1112352 (not (= lambda!215661 lambda!215656))))

(declare-fun bs!1112353 () Bool)

(assert (= bs!1112353 (and d!1503887 b!4722947)))

(assert (=> bs!1112353 (= (= lt!1888057 lt!1887727) (= lambda!215661 lambda!215659))))

(declare-fun bs!1112354 () Bool)

(assert (= bs!1112354 (and d!1503887 b!4722847)))

(assert (=> bs!1112354 (= (= lt!1888057 lt!1887727) (= lambda!215661 lambda!215638))))

(declare-fun bs!1112355 () Bool)

(assert (= bs!1112355 (and d!1503887 b!4722949)))

(assert (=> bs!1112355 (= (= lt!1888057 lt!1887727) (= lambda!215661 lambda!215658))))

(declare-fun bs!1112356 () Bool)

(assert (= bs!1112356 (and d!1503887 b!4722845)))

(assert (=> bs!1112356 (= (= lt!1888057 lt!1887947) (= lambda!215661 lambda!215640))))

(assert (=> bs!1112353 (= (= lt!1888057 lt!1888056) (= lambda!215661 lambda!215660))))

(assert (=> bs!1112356 (= (= lt!1888057 lt!1887727) (= lambda!215661 lambda!215639))))

(assert (=> d!1503887 true))

(declare-fun call!330343 () Bool)

(declare-fun bm!330337 () Bool)

(declare-fun c!806594 () Bool)

(assert (=> bm!330337 (= call!330343 (forall!11590 (ite c!806594 (toList!5917 lt!1887727) newBucket!218) (ite c!806594 lambda!215658 lambda!215660)))))

(declare-fun e!2945536 () ListMap!5281)

(assert (=> b!4722947 (= e!2945536 lt!1888056)))

(declare-fun lt!1888051 () ListMap!5281)

(assert (=> b!4722947 (= lt!1888051 (+!2269 lt!1887727 (h!59177 newBucket!218)))))

(assert (=> b!4722947 (= lt!1888056 (addToMapMapFromBucket!1444 (t!360220 newBucket!218) (+!2269 lt!1887727 (h!59177 newBucket!218))))))

(declare-fun lt!1888066 () Unit!130119)

(declare-fun call!330344 () Unit!130119)

(assert (=> b!4722947 (= lt!1888066 call!330344)))

(assert (=> b!4722947 (forall!11590 (toList!5917 lt!1887727) lambda!215659)))

(declare-fun lt!1888054 () Unit!130119)

(assert (=> b!4722947 (= lt!1888054 lt!1888066)))

(assert (=> b!4722947 (forall!11590 (toList!5917 lt!1888051) lambda!215660)))

(declare-fun lt!1888052 () Unit!130119)

(declare-fun Unit!130171 () Unit!130119)

(assert (=> b!4722947 (= lt!1888052 Unit!130171)))

(assert (=> b!4722947 (forall!11590 (t!360220 newBucket!218) lambda!215660)))

(declare-fun lt!1888050 () Unit!130119)

(declare-fun Unit!130172 () Unit!130119)

(assert (=> b!4722947 (= lt!1888050 Unit!130172)))

(declare-fun lt!1888061 () Unit!130119)

(declare-fun Unit!130173 () Unit!130119)

(assert (=> b!4722947 (= lt!1888061 Unit!130173)))

(declare-fun lt!1888064 () Unit!130119)

(assert (=> b!4722947 (= lt!1888064 (forallContained!3639 (toList!5917 lt!1888051) lambda!215660 (h!59177 newBucket!218)))))

(assert (=> b!4722947 (contains!16175 lt!1888051 (_1!30519 (h!59177 newBucket!218)))))

(declare-fun lt!1888067 () Unit!130119)

(declare-fun Unit!130174 () Unit!130119)

(assert (=> b!4722947 (= lt!1888067 Unit!130174)))

(assert (=> b!4722947 (contains!16175 lt!1888056 (_1!30519 (h!59177 newBucket!218)))))

(declare-fun lt!1888060 () Unit!130119)

(declare-fun Unit!130175 () Unit!130119)

(assert (=> b!4722947 (= lt!1888060 Unit!130175)))

(assert (=> b!4722947 call!330343))

(declare-fun lt!1888048 () Unit!130119)

(declare-fun Unit!130176 () Unit!130119)

(assert (=> b!4722947 (= lt!1888048 Unit!130176)))

(assert (=> b!4722947 (forall!11590 (toList!5917 lt!1888051) lambda!215660)))

(declare-fun lt!1888047 () Unit!130119)

(declare-fun Unit!130177 () Unit!130119)

(assert (=> b!4722947 (= lt!1888047 Unit!130177)))

(declare-fun lt!1888058 () Unit!130119)

(declare-fun Unit!130178 () Unit!130119)

(assert (=> b!4722947 (= lt!1888058 Unit!130178)))

(declare-fun lt!1888049 () Unit!130119)

(assert (=> b!4722947 (= lt!1888049 (addForallContainsKeyThenBeforeAdding!796 lt!1887727 lt!1888056 (_1!30519 (h!59177 newBucket!218)) (_2!30519 (h!59177 newBucket!218))))))

(assert (=> b!4722947 (forall!11590 (toList!5917 lt!1887727) lambda!215660)))

(declare-fun lt!1888062 () Unit!130119)

(assert (=> b!4722947 (= lt!1888062 lt!1888049)))

(declare-fun call!330342 () Bool)

(assert (=> b!4722947 call!330342))

(declare-fun lt!1888053 () Unit!130119)

(declare-fun Unit!130179 () Unit!130119)

(assert (=> b!4722947 (= lt!1888053 Unit!130179)))

(declare-fun res!1998188 () Bool)

(assert (=> b!4722947 (= res!1998188 (forall!11590 newBucket!218 lambda!215660))))

(declare-fun e!2945538 () Bool)

(assert (=> b!4722947 (=> (not res!1998188) (not e!2945538))))

(assert (=> b!4722947 e!2945538))

(declare-fun lt!1888059 () Unit!130119)

(declare-fun Unit!130180 () Unit!130119)

(assert (=> b!4722947 (= lt!1888059 Unit!130180)))

(declare-fun e!2945537 () Bool)

(assert (=> d!1503887 e!2945537))

(declare-fun res!1998190 () Bool)

(assert (=> d!1503887 (=> (not res!1998190) (not e!2945537))))

(assert (=> d!1503887 (= res!1998190 (forall!11590 newBucket!218 lambda!215661))))

(assert (=> d!1503887 (= lt!1888057 e!2945536)))

(assert (=> d!1503887 (= c!806594 ((_ is Nil!52830) newBucket!218))))

(assert (=> d!1503887 (noDuplicateKeys!2014 newBucket!218)))

(assert (=> d!1503887 (= (addToMapMapFromBucket!1444 newBucket!218 lt!1887727) lt!1888057)))

(declare-fun b!4722948 () Bool)

(assert (=> b!4722948 (= e!2945538 (forall!11590 (toList!5917 lt!1887727) lambda!215660))))

(assert (=> b!4722949 (= e!2945536 lt!1887727)))

(declare-fun lt!1888055 () Unit!130119)

(assert (=> b!4722949 (= lt!1888055 call!330344)))

(assert (=> b!4722949 call!330343))

(declare-fun lt!1888065 () Unit!130119)

(assert (=> b!4722949 (= lt!1888065 lt!1888055)))

(assert (=> b!4722949 call!330342))

(declare-fun lt!1888063 () Unit!130119)

(declare-fun Unit!130181 () Unit!130119)

(assert (=> b!4722949 (= lt!1888063 Unit!130181)))

(declare-fun b!4722950 () Bool)

(assert (=> b!4722950 (= e!2945537 (invariantList!1511 (toList!5917 lt!1888057)))))

(declare-fun b!4722951 () Bool)

(declare-fun res!1998189 () Bool)

(assert (=> b!4722951 (=> (not res!1998189) (not e!2945537))))

(assert (=> b!4722951 (= res!1998189 (forall!11590 (toList!5917 lt!1887727) lambda!215661))))

(declare-fun bm!330338 () Bool)

(assert (=> bm!330338 (= call!330342 (forall!11590 (toList!5917 lt!1887727) (ite c!806594 lambda!215658 lambda!215660)))))

(declare-fun bm!330339 () Bool)

(assert (=> bm!330339 (= call!330344 (lemmaContainsAllItsOwnKeys!797 lt!1887727))))

(assert (= (and d!1503887 c!806594) b!4722949))

(assert (= (and d!1503887 (not c!806594)) b!4722947))

(assert (= (and b!4722947 res!1998188) b!4722948))

(assert (= (or b!4722949 b!4722947) bm!330339))

(assert (= (or b!4722949 b!4722947) bm!330338))

(assert (= (or b!4722949 b!4722947) bm!330337))

(assert (= (and d!1503887 res!1998190) b!4722951))

(assert (= (and b!4722951 res!1998189) b!4722950))

(declare-fun m!5658925 () Bool)

(assert (=> bm!330338 m!5658925))

(assert (=> bm!330339 m!5658733))

(declare-fun m!5658927 () Bool)

(assert (=> b!4722950 m!5658927))

(declare-fun m!5658929 () Bool)

(assert (=> d!1503887 m!5658929))

(assert (=> d!1503887 m!5658441))

(declare-fun m!5658931 () Bool)

(assert (=> b!4722951 m!5658931))

(declare-fun m!5658933 () Bool)

(assert (=> bm!330337 m!5658933))

(declare-fun m!5658935 () Bool)

(assert (=> b!4722947 m!5658935))

(declare-fun m!5658937 () Bool)

(assert (=> b!4722947 m!5658937))

(declare-fun m!5658939 () Bool)

(assert (=> b!4722947 m!5658939))

(declare-fun m!5658941 () Bool)

(assert (=> b!4722947 m!5658941))

(declare-fun m!5658943 () Bool)

(assert (=> b!4722947 m!5658943))

(declare-fun m!5658945 () Bool)

(assert (=> b!4722947 m!5658945))

(declare-fun m!5658947 () Bool)

(assert (=> b!4722947 m!5658947))

(declare-fun m!5658949 () Bool)

(assert (=> b!4722947 m!5658949))

(declare-fun m!5658951 () Bool)

(assert (=> b!4722947 m!5658951))

(assert (=> b!4722947 m!5658941))

(assert (=> b!4722947 m!5658945))

(declare-fun m!5658953 () Bool)

(assert (=> b!4722947 m!5658953))

(declare-fun m!5658955 () Bool)

(assert (=> b!4722947 m!5658955))

(assert (=> b!4722948 m!5658937))

(assert (=> b!4722688 d!1503887))

(declare-fun bs!1112357 () Bool)

(declare-fun b!4722954 () Bool)

(assert (= bs!1112357 (and b!4722954 d!1503799)))

(declare-fun lambda!215662 () Int)

(assert (=> bs!1112357 (= (= lt!1887727 lt!1887948) (= lambda!215662 lambda!215641))))

(declare-fun bs!1112358 () Bool)

(assert (= bs!1112358 (and b!4722954 d!1503873)))

(assert (=> bs!1112358 (not (= lambda!215662 lambda!215656))))

(declare-fun bs!1112359 () Bool)

(assert (= bs!1112359 (and b!4722954 b!4722947)))

(assert (=> bs!1112359 (= lambda!215662 lambda!215659)))

(declare-fun bs!1112360 () Bool)

(assert (= bs!1112360 (and b!4722954 b!4722847)))

(assert (=> bs!1112360 (= lambda!215662 lambda!215638)))

(declare-fun bs!1112361 () Bool)

(assert (= bs!1112361 (and b!4722954 b!4722949)))

(assert (=> bs!1112361 (= lambda!215662 lambda!215658)))

(declare-fun bs!1112362 () Bool)

(assert (= bs!1112362 (and b!4722954 b!4722845)))

(assert (=> bs!1112362 (= (= lt!1887727 lt!1887947) (= lambda!215662 lambda!215640))))

(declare-fun bs!1112363 () Bool)

(assert (= bs!1112363 (and b!4722954 d!1503887)))

(assert (=> bs!1112363 (= (= lt!1887727 lt!1888057) (= lambda!215662 lambda!215661))))

(assert (=> bs!1112359 (= (= lt!1887727 lt!1888056) (= lambda!215662 lambda!215660))))

(assert (=> bs!1112362 (= lambda!215662 lambda!215639)))

(assert (=> b!4722954 true))

(declare-fun bs!1112364 () Bool)

(declare-fun b!4722952 () Bool)

(assert (= bs!1112364 (and b!4722952 b!4722954)))

(declare-fun lambda!215663 () Int)

(assert (=> bs!1112364 (= lambda!215663 lambda!215662)))

(declare-fun bs!1112365 () Bool)

(assert (= bs!1112365 (and b!4722952 d!1503799)))

(assert (=> bs!1112365 (= (= lt!1887727 lt!1887948) (= lambda!215663 lambda!215641))))

(declare-fun bs!1112366 () Bool)

(assert (= bs!1112366 (and b!4722952 d!1503873)))

(assert (=> bs!1112366 (not (= lambda!215663 lambda!215656))))

(declare-fun bs!1112367 () Bool)

(assert (= bs!1112367 (and b!4722952 b!4722947)))

(assert (=> bs!1112367 (= lambda!215663 lambda!215659)))

(declare-fun bs!1112368 () Bool)

(assert (= bs!1112368 (and b!4722952 b!4722847)))

(assert (=> bs!1112368 (= lambda!215663 lambda!215638)))

(declare-fun bs!1112369 () Bool)

(assert (= bs!1112369 (and b!4722952 b!4722949)))

(assert (=> bs!1112369 (= lambda!215663 lambda!215658)))

(declare-fun bs!1112370 () Bool)

(assert (= bs!1112370 (and b!4722952 b!4722845)))

(assert (=> bs!1112370 (= (= lt!1887727 lt!1887947) (= lambda!215663 lambda!215640))))

(declare-fun bs!1112371 () Bool)

(assert (= bs!1112371 (and b!4722952 d!1503887)))

(assert (=> bs!1112371 (= (= lt!1887727 lt!1888057) (= lambda!215663 lambda!215661))))

(assert (=> bs!1112367 (= (= lt!1887727 lt!1888056) (= lambda!215663 lambda!215660))))

(assert (=> bs!1112370 (= lambda!215663 lambda!215639)))

(assert (=> b!4722952 true))

(declare-fun lambda!215664 () Int)

(declare-fun lt!1888077 () ListMap!5281)

(assert (=> bs!1112364 (= (= lt!1888077 lt!1887727) (= lambda!215664 lambda!215662))))

(assert (=> b!4722952 (= (= lt!1888077 lt!1887727) (= lambda!215664 lambda!215663))))

(assert (=> bs!1112365 (= (= lt!1888077 lt!1887948) (= lambda!215664 lambda!215641))))

(assert (=> bs!1112366 (not (= lambda!215664 lambda!215656))))

(assert (=> bs!1112367 (= (= lt!1888077 lt!1887727) (= lambda!215664 lambda!215659))))

(assert (=> bs!1112368 (= (= lt!1888077 lt!1887727) (= lambda!215664 lambda!215638))))

(assert (=> bs!1112369 (= (= lt!1888077 lt!1887727) (= lambda!215664 lambda!215658))))

(assert (=> bs!1112370 (= (= lt!1888077 lt!1887947) (= lambda!215664 lambda!215640))))

(assert (=> bs!1112371 (= (= lt!1888077 lt!1888057) (= lambda!215664 lambda!215661))))

(assert (=> bs!1112367 (= (= lt!1888077 lt!1888056) (= lambda!215664 lambda!215660))))

(assert (=> bs!1112370 (= (= lt!1888077 lt!1887727) (= lambda!215664 lambda!215639))))

(assert (=> b!4722952 true))

(declare-fun bs!1112372 () Bool)

(declare-fun d!1503889 () Bool)

(assert (= bs!1112372 (and d!1503889 b!4722954)))

(declare-fun lt!1888078 () ListMap!5281)

(declare-fun lambda!215665 () Int)

(assert (=> bs!1112372 (= (= lt!1888078 lt!1887727) (= lambda!215665 lambda!215662))))

(declare-fun bs!1112373 () Bool)

(assert (= bs!1112373 (and d!1503889 b!4722952)))

(assert (=> bs!1112373 (= (= lt!1888078 lt!1887727) (= lambda!215665 lambda!215663))))

(declare-fun bs!1112374 () Bool)

(assert (= bs!1112374 (and d!1503889 d!1503799)))

(assert (=> bs!1112374 (= (= lt!1888078 lt!1887948) (= lambda!215665 lambda!215641))))

(declare-fun bs!1112375 () Bool)

(assert (= bs!1112375 (and d!1503889 d!1503873)))

(assert (=> bs!1112375 (not (= lambda!215665 lambda!215656))))

(declare-fun bs!1112376 () Bool)

(assert (= bs!1112376 (and d!1503889 b!4722847)))

(assert (=> bs!1112376 (= (= lt!1888078 lt!1887727) (= lambda!215665 lambda!215638))))

(declare-fun bs!1112377 () Bool)

(assert (= bs!1112377 (and d!1503889 b!4722949)))

(assert (=> bs!1112377 (= (= lt!1888078 lt!1887727) (= lambda!215665 lambda!215658))))

(declare-fun bs!1112378 () Bool)

(assert (= bs!1112378 (and d!1503889 b!4722845)))

(assert (=> bs!1112378 (= (= lt!1888078 lt!1887947) (= lambda!215665 lambda!215640))))

(declare-fun bs!1112379 () Bool)

(assert (= bs!1112379 (and d!1503889 d!1503887)))

(assert (=> bs!1112379 (= (= lt!1888078 lt!1888057) (= lambda!215665 lambda!215661))))

(declare-fun bs!1112380 () Bool)

(assert (= bs!1112380 (and d!1503889 b!4722947)))

(assert (=> bs!1112380 (= (= lt!1888078 lt!1888056) (= lambda!215665 lambda!215660))))

(assert (=> bs!1112378 (= (= lt!1888078 lt!1887727) (= lambda!215665 lambda!215639))))

(assert (=> bs!1112380 (= (= lt!1888078 lt!1887727) (= lambda!215665 lambda!215659))))

(assert (=> bs!1112373 (= (= lt!1888078 lt!1888077) (= lambda!215665 lambda!215664))))

(assert (=> d!1503889 true))

(declare-fun bm!330340 () Bool)

(declare-fun call!330346 () Bool)

(declare-fun c!806595 () Bool)

(assert (=> bm!330340 (= call!330346 (forall!11590 (ite c!806595 (toList!5917 lt!1887727) lt!1887720) (ite c!806595 lambda!215662 lambda!215664)))))

(declare-fun e!2945539 () ListMap!5281)

(assert (=> b!4722952 (= e!2945539 lt!1888077)))

(declare-fun lt!1888072 () ListMap!5281)

(assert (=> b!4722952 (= lt!1888072 (+!2269 lt!1887727 (h!59177 lt!1887720)))))

(assert (=> b!4722952 (= lt!1888077 (addToMapMapFromBucket!1444 (t!360220 lt!1887720) (+!2269 lt!1887727 (h!59177 lt!1887720))))))

(declare-fun lt!1888087 () Unit!130119)

(declare-fun call!330347 () Unit!130119)

(assert (=> b!4722952 (= lt!1888087 call!330347)))

(assert (=> b!4722952 (forall!11590 (toList!5917 lt!1887727) lambda!215663)))

(declare-fun lt!1888075 () Unit!130119)

(assert (=> b!4722952 (= lt!1888075 lt!1888087)))

(assert (=> b!4722952 (forall!11590 (toList!5917 lt!1888072) lambda!215664)))

(declare-fun lt!1888073 () Unit!130119)

(declare-fun Unit!130192 () Unit!130119)

(assert (=> b!4722952 (= lt!1888073 Unit!130192)))

(assert (=> b!4722952 (forall!11590 (t!360220 lt!1887720) lambda!215664)))

(declare-fun lt!1888071 () Unit!130119)

(declare-fun Unit!130193 () Unit!130119)

(assert (=> b!4722952 (= lt!1888071 Unit!130193)))

(declare-fun lt!1888082 () Unit!130119)

(declare-fun Unit!130194 () Unit!130119)

(assert (=> b!4722952 (= lt!1888082 Unit!130194)))

(declare-fun lt!1888085 () Unit!130119)

(assert (=> b!4722952 (= lt!1888085 (forallContained!3639 (toList!5917 lt!1888072) lambda!215664 (h!59177 lt!1887720)))))

(assert (=> b!4722952 (contains!16175 lt!1888072 (_1!30519 (h!59177 lt!1887720)))))

(declare-fun lt!1888088 () Unit!130119)

(declare-fun Unit!130196 () Unit!130119)

(assert (=> b!4722952 (= lt!1888088 Unit!130196)))

(assert (=> b!4722952 (contains!16175 lt!1888077 (_1!30519 (h!59177 lt!1887720)))))

(declare-fun lt!1888081 () Unit!130119)

(declare-fun Unit!130197 () Unit!130119)

(assert (=> b!4722952 (= lt!1888081 Unit!130197)))

(assert (=> b!4722952 call!330346))

(declare-fun lt!1888069 () Unit!130119)

(declare-fun Unit!130198 () Unit!130119)

(assert (=> b!4722952 (= lt!1888069 Unit!130198)))

(assert (=> b!4722952 (forall!11590 (toList!5917 lt!1888072) lambda!215664)))

(declare-fun lt!1888068 () Unit!130119)

(declare-fun Unit!130199 () Unit!130119)

(assert (=> b!4722952 (= lt!1888068 Unit!130199)))

(declare-fun lt!1888079 () Unit!130119)

(declare-fun Unit!130200 () Unit!130119)

(assert (=> b!4722952 (= lt!1888079 Unit!130200)))

(declare-fun lt!1888070 () Unit!130119)

(assert (=> b!4722952 (= lt!1888070 (addForallContainsKeyThenBeforeAdding!796 lt!1887727 lt!1888077 (_1!30519 (h!59177 lt!1887720)) (_2!30519 (h!59177 lt!1887720))))))

(assert (=> b!4722952 (forall!11590 (toList!5917 lt!1887727) lambda!215664)))

(declare-fun lt!1888083 () Unit!130119)

(assert (=> b!4722952 (= lt!1888083 lt!1888070)))

(declare-fun call!330345 () Bool)

(assert (=> b!4722952 call!330345))

(declare-fun lt!1888074 () Unit!130119)

(declare-fun Unit!130201 () Unit!130119)

(assert (=> b!4722952 (= lt!1888074 Unit!130201)))

(declare-fun res!1998191 () Bool)

(assert (=> b!4722952 (= res!1998191 (forall!11590 lt!1887720 lambda!215664))))

(declare-fun e!2945541 () Bool)

(assert (=> b!4722952 (=> (not res!1998191) (not e!2945541))))

(assert (=> b!4722952 e!2945541))

(declare-fun lt!1888080 () Unit!130119)

(declare-fun Unit!130202 () Unit!130119)

(assert (=> b!4722952 (= lt!1888080 Unit!130202)))

(declare-fun e!2945540 () Bool)

(assert (=> d!1503889 e!2945540))

(declare-fun res!1998193 () Bool)

(assert (=> d!1503889 (=> (not res!1998193) (not e!2945540))))

(assert (=> d!1503889 (= res!1998193 (forall!11590 lt!1887720 lambda!215665))))

(assert (=> d!1503889 (= lt!1888078 e!2945539)))

(assert (=> d!1503889 (= c!806595 ((_ is Nil!52830) lt!1887720))))

(assert (=> d!1503889 (noDuplicateKeys!2014 lt!1887720)))

(assert (=> d!1503889 (= (addToMapMapFromBucket!1444 lt!1887720 lt!1887727) lt!1888078)))

(declare-fun b!4722953 () Bool)

(assert (=> b!4722953 (= e!2945541 (forall!11590 (toList!5917 lt!1887727) lambda!215664))))

(assert (=> b!4722954 (= e!2945539 lt!1887727)))

(declare-fun lt!1888076 () Unit!130119)

(assert (=> b!4722954 (= lt!1888076 call!330347)))

(assert (=> b!4722954 call!330346))

(declare-fun lt!1888086 () Unit!130119)

(assert (=> b!4722954 (= lt!1888086 lt!1888076)))

(assert (=> b!4722954 call!330345))

(declare-fun lt!1888084 () Unit!130119)

(declare-fun Unit!130203 () Unit!130119)

(assert (=> b!4722954 (= lt!1888084 Unit!130203)))

(declare-fun b!4722955 () Bool)

(assert (=> b!4722955 (= e!2945540 (invariantList!1511 (toList!5917 lt!1888078)))))

(declare-fun b!4722956 () Bool)

(declare-fun res!1998192 () Bool)

(assert (=> b!4722956 (=> (not res!1998192) (not e!2945540))))

(assert (=> b!4722956 (= res!1998192 (forall!11590 (toList!5917 lt!1887727) lambda!215665))))

(declare-fun bm!330341 () Bool)

(assert (=> bm!330341 (= call!330345 (forall!11590 (toList!5917 lt!1887727) (ite c!806595 lambda!215662 lambda!215664)))))

(declare-fun bm!330342 () Bool)

(assert (=> bm!330342 (= call!330347 (lemmaContainsAllItsOwnKeys!797 lt!1887727))))

(assert (= (and d!1503889 c!806595) b!4722954))

(assert (= (and d!1503889 (not c!806595)) b!4722952))

(assert (= (and b!4722952 res!1998191) b!4722953))

(assert (= (or b!4722954 b!4722952) bm!330342))

(assert (= (or b!4722954 b!4722952) bm!330341))

(assert (= (or b!4722954 b!4722952) bm!330340))

(assert (= (and d!1503889 res!1998193) b!4722956))

(assert (= (and b!4722956 res!1998192) b!4722955))

(declare-fun m!5658957 () Bool)

(assert (=> bm!330341 m!5658957))

(assert (=> bm!330342 m!5658733))

(declare-fun m!5658959 () Bool)

(assert (=> b!4722955 m!5658959))

(declare-fun m!5658961 () Bool)

(assert (=> d!1503889 m!5658961))

(declare-fun m!5658963 () Bool)

(assert (=> d!1503889 m!5658963))

(declare-fun m!5658965 () Bool)

(assert (=> b!4722956 m!5658965))

(declare-fun m!5658967 () Bool)

(assert (=> bm!330340 m!5658967))

(declare-fun m!5658969 () Bool)

(assert (=> b!4722952 m!5658969))

(declare-fun m!5658971 () Bool)

(assert (=> b!4722952 m!5658971))

(declare-fun m!5658973 () Bool)

(assert (=> b!4722952 m!5658973))

(declare-fun m!5658975 () Bool)

(assert (=> b!4722952 m!5658975))

(declare-fun m!5658977 () Bool)

(assert (=> b!4722952 m!5658977))

(declare-fun m!5658979 () Bool)

(assert (=> b!4722952 m!5658979))

(declare-fun m!5658981 () Bool)

(assert (=> b!4722952 m!5658981))

(declare-fun m!5658983 () Bool)

(assert (=> b!4722952 m!5658983))

(declare-fun m!5658985 () Bool)

(assert (=> b!4722952 m!5658985))

(assert (=> b!4722952 m!5658975))

(assert (=> b!4722952 m!5658979))

(declare-fun m!5658987 () Bool)

(assert (=> b!4722952 m!5658987))

(declare-fun m!5658989 () Bool)

(assert (=> b!4722952 m!5658989))

(assert (=> b!4722953 m!5658971))

(assert (=> b!4722688 d!1503889))

(declare-fun d!1503891 () Bool)

(declare-fun res!1998198 () Bool)

(declare-fun e!2945546 () Bool)

(assert (=> d!1503891 (=> res!1998198 e!2945546)))

(assert (=> d!1503891 (= res!1998198 (and ((_ is Cons!52830) lt!1887720) (= (_1!30519 (h!59177 lt!1887720)) key!4653)))))

(assert (=> d!1503891 (= (containsKey!3369 lt!1887720 key!4653) e!2945546)))

(declare-fun b!4722961 () Bool)

(declare-fun e!2945547 () Bool)

(assert (=> b!4722961 (= e!2945546 e!2945547)))

(declare-fun res!1998199 () Bool)

(assert (=> b!4722961 (=> (not res!1998199) (not e!2945547))))

(assert (=> b!4722961 (= res!1998199 ((_ is Cons!52830) lt!1887720))))

(declare-fun b!4722962 () Bool)

(assert (=> b!4722962 (= e!2945547 (containsKey!3369 (t!360220 lt!1887720) key!4653))))

(assert (= (and d!1503891 (not res!1998198)) b!4722961))

(assert (= (and b!4722961 res!1998199) b!4722962))

(declare-fun m!5658991 () Bool)

(assert (=> b!4722962 m!5658991))

(assert (=> b!4722699 d!1503891))

(declare-fun d!1503893 () Bool)

(assert (=> d!1503893 (= (head!10249 (toList!5918 lm!2023)) (h!59178 (toList!5918 lm!2023)))))

(assert (=> b!4722689 d!1503893))

(declare-fun d!1503895 () Bool)

(assert (=> d!1503895 (= (head!10250 oldBucket!34) (h!59177 oldBucket!34))))

(assert (=> b!4722700 d!1503895))

(declare-fun d!1503897 () Bool)

(declare-fun e!2945550 () Bool)

(assert (=> d!1503897 e!2945550))

(declare-fun res!1998205 () Bool)

(assert (=> d!1503897 (=> (not res!1998205) (not e!2945550))))

(declare-fun lt!1888099 () ListMap!5281)

(assert (=> d!1503897 (= res!1998205 (contains!16175 lt!1888099 (_1!30519 lt!1887722)))))

(declare-fun lt!1888100 () List!52954)

(assert (=> d!1503897 (= lt!1888099 (ListMap!5282 lt!1888100))))

(declare-fun lt!1888097 () Unit!130119)

(declare-fun lt!1888098 () Unit!130119)

(assert (=> d!1503897 (= lt!1888097 lt!1888098)))

(assert (=> d!1503897 (= (getValueByKey!1957 lt!1888100 (_1!30519 lt!1887722)) (Some!12360 (_2!30519 lt!1887722)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1086 (List!52954 K!14185 V!14431) Unit!130119)

(assert (=> d!1503897 (= lt!1888098 (lemmaContainsTupThenGetReturnValue!1086 lt!1888100 (_1!30519 lt!1887722) (_2!30519 lt!1887722)))))

(declare-fun insertNoDuplicatedKeys!594 (List!52954 K!14185 V!14431) List!52954)

(assert (=> d!1503897 (= lt!1888100 (insertNoDuplicatedKeys!594 (toList!5917 lt!1887723) (_1!30519 lt!1887722) (_2!30519 lt!1887722)))))

(assert (=> d!1503897 (= (+!2269 lt!1887723 lt!1887722) lt!1888099)))

(declare-fun b!4722967 () Bool)

(declare-fun res!1998204 () Bool)

(assert (=> b!4722967 (=> (not res!1998204) (not e!2945550))))

(assert (=> b!4722967 (= res!1998204 (= (getValueByKey!1957 (toList!5917 lt!1888099) (_1!30519 lt!1887722)) (Some!12360 (_2!30519 lt!1887722))))))

(declare-fun b!4722968 () Bool)

(declare-fun contains!16180 (List!52954 tuple2!54450) Bool)

(assert (=> b!4722968 (= e!2945550 (contains!16180 (toList!5917 lt!1888099) lt!1887722))))

(assert (= (and d!1503897 res!1998205) b!4722967))

(assert (= (and b!4722967 res!1998204) b!4722968))

(declare-fun m!5658993 () Bool)

(assert (=> d!1503897 m!5658993))

(declare-fun m!5658995 () Bool)

(assert (=> d!1503897 m!5658995))

(declare-fun m!5658997 () Bool)

(assert (=> d!1503897 m!5658997))

(declare-fun m!5658999 () Bool)

(assert (=> d!1503897 m!5658999))

(declare-fun m!5659001 () Bool)

(assert (=> b!4722967 m!5659001))

(declare-fun m!5659003 () Bool)

(assert (=> b!4722968 m!5659003))

(assert (=> b!4722700 d!1503897))

(declare-fun bs!1112381 () Bool)

(declare-fun b!4722971 () Bool)

(assert (= bs!1112381 (and b!4722971 b!4722954)))

(declare-fun lambda!215666 () Int)

(assert (=> bs!1112381 (= lambda!215666 lambda!215662)))

(declare-fun bs!1112382 () Bool)

(assert (= bs!1112382 (and b!4722971 b!4722952)))

(assert (=> bs!1112382 (= lambda!215666 lambda!215663)))

(declare-fun bs!1112383 () Bool)

(assert (= bs!1112383 (and b!4722971 d!1503799)))

(assert (=> bs!1112383 (= (= lt!1887727 lt!1887948) (= lambda!215666 lambda!215641))))

(declare-fun bs!1112384 () Bool)

(assert (= bs!1112384 (and b!4722971 d!1503873)))

(assert (=> bs!1112384 (not (= lambda!215666 lambda!215656))))

(declare-fun bs!1112385 () Bool)

(assert (= bs!1112385 (and b!4722971 b!4722847)))

(assert (=> bs!1112385 (= lambda!215666 lambda!215638)))

(declare-fun bs!1112386 () Bool)

(assert (= bs!1112386 (and b!4722971 d!1503889)))

(assert (=> bs!1112386 (= (= lt!1887727 lt!1888078) (= lambda!215666 lambda!215665))))

(declare-fun bs!1112387 () Bool)

(assert (= bs!1112387 (and b!4722971 b!4722949)))

(assert (=> bs!1112387 (= lambda!215666 lambda!215658)))

(declare-fun bs!1112388 () Bool)

(assert (= bs!1112388 (and b!4722971 b!4722845)))

(assert (=> bs!1112388 (= (= lt!1887727 lt!1887947) (= lambda!215666 lambda!215640))))

(declare-fun bs!1112389 () Bool)

(assert (= bs!1112389 (and b!4722971 d!1503887)))

(assert (=> bs!1112389 (= (= lt!1887727 lt!1888057) (= lambda!215666 lambda!215661))))

(declare-fun bs!1112390 () Bool)

(assert (= bs!1112390 (and b!4722971 b!4722947)))

(assert (=> bs!1112390 (= (= lt!1887727 lt!1888056) (= lambda!215666 lambda!215660))))

(assert (=> bs!1112388 (= lambda!215666 lambda!215639)))

(assert (=> bs!1112390 (= lambda!215666 lambda!215659)))

(assert (=> bs!1112382 (= (= lt!1887727 lt!1888077) (= lambda!215666 lambda!215664))))

(assert (=> b!4722971 true))

(declare-fun bs!1112391 () Bool)

(declare-fun b!4722969 () Bool)

(assert (= bs!1112391 (and b!4722969 b!4722954)))

(declare-fun lambda!215667 () Int)

(assert (=> bs!1112391 (= lambda!215667 lambda!215662)))

(declare-fun bs!1112392 () Bool)

(assert (= bs!1112392 (and b!4722969 b!4722952)))

(assert (=> bs!1112392 (= lambda!215667 lambda!215663)))

(declare-fun bs!1112393 () Bool)

(assert (= bs!1112393 (and b!4722969 d!1503799)))

(assert (=> bs!1112393 (= (= lt!1887727 lt!1887948) (= lambda!215667 lambda!215641))))

(declare-fun bs!1112394 () Bool)

(assert (= bs!1112394 (and b!4722969 d!1503873)))

(assert (=> bs!1112394 (not (= lambda!215667 lambda!215656))))

(declare-fun bs!1112395 () Bool)

(assert (= bs!1112395 (and b!4722969 b!4722971)))

(assert (=> bs!1112395 (= lambda!215667 lambda!215666)))

(declare-fun bs!1112396 () Bool)

(assert (= bs!1112396 (and b!4722969 b!4722847)))

(assert (=> bs!1112396 (= lambda!215667 lambda!215638)))

(declare-fun bs!1112397 () Bool)

(assert (= bs!1112397 (and b!4722969 d!1503889)))

(assert (=> bs!1112397 (= (= lt!1887727 lt!1888078) (= lambda!215667 lambda!215665))))

(declare-fun bs!1112398 () Bool)

(assert (= bs!1112398 (and b!4722969 b!4722949)))

(assert (=> bs!1112398 (= lambda!215667 lambda!215658)))

(declare-fun bs!1112399 () Bool)

(assert (= bs!1112399 (and b!4722969 b!4722845)))

(assert (=> bs!1112399 (= (= lt!1887727 lt!1887947) (= lambda!215667 lambda!215640))))

(declare-fun bs!1112400 () Bool)

(assert (= bs!1112400 (and b!4722969 d!1503887)))

(assert (=> bs!1112400 (= (= lt!1887727 lt!1888057) (= lambda!215667 lambda!215661))))

(declare-fun bs!1112401 () Bool)

(assert (= bs!1112401 (and b!4722969 b!4722947)))

(assert (=> bs!1112401 (= (= lt!1887727 lt!1888056) (= lambda!215667 lambda!215660))))

(assert (=> bs!1112399 (= lambda!215667 lambda!215639)))

(assert (=> bs!1112401 (= lambda!215667 lambda!215659)))

(assert (=> bs!1112392 (= (= lt!1887727 lt!1888077) (= lambda!215667 lambda!215664))))

(assert (=> b!4722969 true))

(declare-fun lt!1888110 () ListMap!5281)

(declare-fun lambda!215668 () Int)

(assert (=> bs!1112391 (= (= lt!1888110 lt!1887727) (= lambda!215668 lambda!215662))))

(assert (=> bs!1112392 (= (= lt!1888110 lt!1887727) (= lambda!215668 lambda!215663))))

(assert (=> bs!1112393 (= (= lt!1888110 lt!1887948) (= lambda!215668 lambda!215641))))

(assert (=> bs!1112394 (not (= lambda!215668 lambda!215656))))

(assert (=> b!4722969 (= (= lt!1888110 lt!1887727) (= lambda!215668 lambda!215667))))

(assert (=> bs!1112395 (= (= lt!1888110 lt!1887727) (= lambda!215668 lambda!215666))))

(assert (=> bs!1112396 (= (= lt!1888110 lt!1887727) (= lambda!215668 lambda!215638))))

(assert (=> bs!1112397 (= (= lt!1888110 lt!1888078) (= lambda!215668 lambda!215665))))

(assert (=> bs!1112398 (= (= lt!1888110 lt!1887727) (= lambda!215668 lambda!215658))))

(assert (=> bs!1112399 (= (= lt!1888110 lt!1887947) (= lambda!215668 lambda!215640))))

(assert (=> bs!1112400 (= (= lt!1888110 lt!1888057) (= lambda!215668 lambda!215661))))

(assert (=> bs!1112401 (= (= lt!1888110 lt!1888056) (= lambda!215668 lambda!215660))))

(assert (=> bs!1112399 (= (= lt!1888110 lt!1887727) (= lambda!215668 lambda!215639))))

(assert (=> bs!1112401 (= (= lt!1888110 lt!1887727) (= lambda!215668 lambda!215659))))

(assert (=> bs!1112392 (= (= lt!1888110 lt!1888077) (= lambda!215668 lambda!215664))))

(assert (=> b!4722969 true))

(declare-fun bs!1112402 () Bool)

(declare-fun d!1503899 () Bool)

(assert (= bs!1112402 (and d!1503899 b!4722969)))

(declare-fun lambda!215669 () Int)

(declare-fun lt!1888111 () ListMap!5281)

(assert (=> bs!1112402 (= (= lt!1888111 lt!1888110) (= lambda!215669 lambda!215668))))

(declare-fun bs!1112403 () Bool)

(assert (= bs!1112403 (and d!1503899 b!4722954)))

(assert (=> bs!1112403 (= (= lt!1888111 lt!1887727) (= lambda!215669 lambda!215662))))

(declare-fun bs!1112404 () Bool)

(assert (= bs!1112404 (and d!1503899 b!4722952)))

(assert (=> bs!1112404 (= (= lt!1888111 lt!1887727) (= lambda!215669 lambda!215663))))

(declare-fun bs!1112405 () Bool)

(assert (= bs!1112405 (and d!1503899 d!1503799)))

(assert (=> bs!1112405 (= (= lt!1888111 lt!1887948) (= lambda!215669 lambda!215641))))

(declare-fun bs!1112406 () Bool)

(assert (= bs!1112406 (and d!1503899 d!1503873)))

(assert (=> bs!1112406 (not (= lambda!215669 lambda!215656))))

(assert (=> bs!1112402 (= (= lt!1888111 lt!1887727) (= lambda!215669 lambda!215667))))

(declare-fun bs!1112407 () Bool)

(assert (= bs!1112407 (and d!1503899 b!4722971)))

(assert (=> bs!1112407 (= (= lt!1888111 lt!1887727) (= lambda!215669 lambda!215666))))

(declare-fun bs!1112408 () Bool)

(assert (= bs!1112408 (and d!1503899 b!4722847)))

(assert (=> bs!1112408 (= (= lt!1888111 lt!1887727) (= lambda!215669 lambda!215638))))

(declare-fun bs!1112409 () Bool)

(assert (= bs!1112409 (and d!1503899 d!1503889)))

(assert (=> bs!1112409 (= (= lt!1888111 lt!1888078) (= lambda!215669 lambda!215665))))

(declare-fun bs!1112410 () Bool)

(assert (= bs!1112410 (and d!1503899 b!4722949)))

(assert (=> bs!1112410 (= (= lt!1888111 lt!1887727) (= lambda!215669 lambda!215658))))

(declare-fun bs!1112411 () Bool)

(assert (= bs!1112411 (and d!1503899 b!4722845)))

(assert (=> bs!1112411 (= (= lt!1888111 lt!1887947) (= lambda!215669 lambda!215640))))

(declare-fun bs!1112412 () Bool)

(assert (= bs!1112412 (and d!1503899 d!1503887)))

(assert (=> bs!1112412 (= (= lt!1888111 lt!1888057) (= lambda!215669 lambda!215661))))

(declare-fun bs!1112413 () Bool)

(assert (= bs!1112413 (and d!1503899 b!4722947)))

(assert (=> bs!1112413 (= (= lt!1888111 lt!1888056) (= lambda!215669 lambda!215660))))

(assert (=> bs!1112411 (= (= lt!1888111 lt!1887727) (= lambda!215669 lambda!215639))))

(assert (=> bs!1112413 (= (= lt!1888111 lt!1887727) (= lambda!215669 lambda!215659))))

(assert (=> bs!1112404 (= (= lt!1888111 lt!1888077) (= lambda!215669 lambda!215664))))

(assert (=> d!1503899 true))

(declare-fun bm!330343 () Bool)

(declare-fun c!806596 () Bool)

(declare-fun call!330349 () Bool)

(assert (=> bm!330343 (= call!330349 (forall!11590 (ite c!806596 (toList!5917 lt!1887727) oldBucket!34) (ite c!806596 lambda!215666 lambda!215668)))))

(declare-fun e!2945551 () ListMap!5281)

(assert (=> b!4722969 (= e!2945551 lt!1888110)))

(declare-fun lt!1888105 () ListMap!5281)

(assert (=> b!4722969 (= lt!1888105 (+!2269 lt!1887727 (h!59177 oldBucket!34)))))

(assert (=> b!4722969 (= lt!1888110 (addToMapMapFromBucket!1444 (t!360220 oldBucket!34) (+!2269 lt!1887727 (h!59177 oldBucket!34))))))

(declare-fun lt!1888120 () Unit!130119)

(declare-fun call!330350 () Unit!130119)

(assert (=> b!4722969 (= lt!1888120 call!330350)))

(assert (=> b!4722969 (forall!11590 (toList!5917 lt!1887727) lambda!215667)))

(declare-fun lt!1888108 () Unit!130119)

(assert (=> b!4722969 (= lt!1888108 lt!1888120)))

(assert (=> b!4722969 (forall!11590 (toList!5917 lt!1888105) lambda!215668)))

(declare-fun lt!1888106 () Unit!130119)

(declare-fun Unit!130205 () Unit!130119)

(assert (=> b!4722969 (= lt!1888106 Unit!130205)))

(assert (=> b!4722969 (forall!11590 (t!360220 oldBucket!34) lambda!215668)))

(declare-fun lt!1888104 () Unit!130119)

(declare-fun Unit!130206 () Unit!130119)

(assert (=> b!4722969 (= lt!1888104 Unit!130206)))

(declare-fun lt!1888115 () Unit!130119)

(declare-fun Unit!130207 () Unit!130119)

(assert (=> b!4722969 (= lt!1888115 Unit!130207)))

(declare-fun lt!1888118 () Unit!130119)

(assert (=> b!4722969 (= lt!1888118 (forallContained!3639 (toList!5917 lt!1888105) lambda!215668 (h!59177 oldBucket!34)))))

(assert (=> b!4722969 (contains!16175 lt!1888105 (_1!30519 (h!59177 oldBucket!34)))))

(declare-fun lt!1888121 () Unit!130119)

(declare-fun Unit!130208 () Unit!130119)

(assert (=> b!4722969 (= lt!1888121 Unit!130208)))

(assert (=> b!4722969 (contains!16175 lt!1888110 (_1!30519 (h!59177 oldBucket!34)))))

(declare-fun lt!1888114 () Unit!130119)

(declare-fun Unit!130210 () Unit!130119)

(assert (=> b!4722969 (= lt!1888114 Unit!130210)))

(assert (=> b!4722969 call!330349))

(declare-fun lt!1888102 () Unit!130119)

(declare-fun Unit!130212 () Unit!130119)

(assert (=> b!4722969 (= lt!1888102 Unit!130212)))

(assert (=> b!4722969 (forall!11590 (toList!5917 lt!1888105) lambda!215668)))

(declare-fun lt!1888101 () Unit!130119)

(declare-fun Unit!130214 () Unit!130119)

(assert (=> b!4722969 (= lt!1888101 Unit!130214)))

(declare-fun lt!1888112 () Unit!130119)

(declare-fun Unit!130215 () Unit!130119)

(assert (=> b!4722969 (= lt!1888112 Unit!130215)))

(declare-fun lt!1888103 () Unit!130119)

(assert (=> b!4722969 (= lt!1888103 (addForallContainsKeyThenBeforeAdding!796 lt!1887727 lt!1888110 (_1!30519 (h!59177 oldBucket!34)) (_2!30519 (h!59177 oldBucket!34))))))

(assert (=> b!4722969 (forall!11590 (toList!5917 lt!1887727) lambda!215668)))

(declare-fun lt!1888116 () Unit!130119)

(assert (=> b!4722969 (= lt!1888116 lt!1888103)))

(declare-fun call!330348 () Bool)

(assert (=> b!4722969 call!330348))

(declare-fun lt!1888107 () Unit!130119)

(declare-fun Unit!130218 () Unit!130119)

(assert (=> b!4722969 (= lt!1888107 Unit!130218)))

(declare-fun res!1998206 () Bool)

(assert (=> b!4722969 (= res!1998206 (forall!11590 oldBucket!34 lambda!215668))))

(declare-fun e!2945553 () Bool)

(assert (=> b!4722969 (=> (not res!1998206) (not e!2945553))))

(assert (=> b!4722969 e!2945553))

(declare-fun lt!1888113 () Unit!130119)

(declare-fun Unit!130221 () Unit!130119)

(assert (=> b!4722969 (= lt!1888113 Unit!130221)))

(declare-fun e!2945552 () Bool)

(assert (=> d!1503899 e!2945552))

(declare-fun res!1998208 () Bool)

(assert (=> d!1503899 (=> (not res!1998208) (not e!2945552))))

(assert (=> d!1503899 (= res!1998208 (forall!11590 oldBucket!34 lambda!215669))))

(assert (=> d!1503899 (= lt!1888111 e!2945551)))

(assert (=> d!1503899 (= c!806596 ((_ is Nil!52830) oldBucket!34))))

(assert (=> d!1503899 (noDuplicateKeys!2014 oldBucket!34)))

(assert (=> d!1503899 (= (addToMapMapFromBucket!1444 oldBucket!34 lt!1887727) lt!1888111)))

(declare-fun b!4722970 () Bool)

(assert (=> b!4722970 (= e!2945553 (forall!11590 (toList!5917 lt!1887727) lambda!215668))))

(assert (=> b!4722971 (= e!2945551 lt!1887727)))

(declare-fun lt!1888109 () Unit!130119)

(assert (=> b!4722971 (= lt!1888109 call!330350)))

(assert (=> b!4722971 call!330349))

(declare-fun lt!1888119 () Unit!130119)

(assert (=> b!4722971 (= lt!1888119 lt!1888109)))

(assert (=> b!4722971 call!330348))

(declare-fun lt!1888117 () Unit!130119)

(declare-fun Unit!130225 () Unit!130119)

(assert (=> b!4722971 (= lt!1888117 Unit!130225)))

(declare-fun b!4722972 () Bool)

(assert (=> b!4722972 (= e!2945552 (invariantList!1511 (toList!5917 lt!1888111)))))

(declare-fun b!4722973 () Bool)

(declare-fun res!1998207 () Bool)

(assert (=> b!4722973 (=> (not res!1998207) (not e!2945552))))

(assert (=> b!4722973 (= res!1998207 (forall!11590 (toList!5917 lt!1887727) lambda!215669))))

(declare-fun bm!330344 () Bool)

(assert (=> bm!330344 (= call!330348 (forall!11590 (toList!5917 lt!1887727) (ite c!806596 lambda!215666 lambda!215668)))))

(declare-fun bm!330345 () Bool)

(assert (=> bm!330345 (= call!330350 (lemmaContainsAllItsOwnKeys!797 lt!1887727))))

(assert (= (and d!1503899 c!806596) b!4722971))

(assert (= (and d!1503899 (not c!806596)) b!4722969))

(assert (= (and b!4722969 res!1998206) b!4722970))

(assert (= (or b!4722971 b!4722969) bm!330345))

(assert (= (or b!4722971 b!4722969) bm!330344))

(assert (= (or b!4722971 b!4722969) bm!330343))

(assert (= (and d!1503899 res!1998208) b!4722973))

(assert (= (and b!4722973 res!1998207) b!4722972))

(declare-fun m!5659005 () Bool)

(assert (=> bm!330344 m!5659005))

(assert (=> bm!330345 m!5658733))

(declare-fun m!5659007 () Bool)

(assert (=> b!4722972 m!5659007))

(declare-fun m!5659009 () Bool)

(assert (=> d!1503899 m!5659009))

(assert (=> d!1503899 m!5658447))

(declare-fun m!5659011 () Bool)

(assert (=> b!4722973 m!5659011))

(declare-fun m!5659013 () Bool)

(assert (=> bm!330343 m!5659013))

(declare-fun m!5659015 () Bool)

(assert (=> b!4722969 m!5659015))

(declare-fun m!5659017 () Bool)

(assert (=> b!4722969 m!5659017))

(declare-fun m!5659019 () Bool)

(assert (=> b!4722969 m!5659019))

(declare-fun m!5659021 () Bool)

(assert (=> b!4722969 m!5659021))

(declare-fun m!5659023 () Bool)

(assert (=> b!4722969 m!5659023))

(declare-fun m!5659025 () Bool)

(assert (=> b!4722969 m!5659025))

(declare-fun m!5659027 () Bool)

(assert (=> b!4722969 m!5659027))

(declare-fun m!5659029 () Bool)

(assert (=> b!4722969 m!5659029))

(declare-fun m!5659031 () Bool)

(assert (=> b!4722969 m!5659031))

(assert (=> b!4722969 m!5659021))

(assert (=> b!4722969 m!5659025))

(declare-fun m!5659033 () Bool)

(assert (=> b!4722969 m!5659033))

(declare-fun m!5659035 () Bool)

(assert (=> b!4722969 m!5659035))

(assert (=> b!4722970 m!5659017))

(assert (=> b!4722700 d!1503899))

(declare-fun d!1503901 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9395 (List!52954) (InoxSet tuple2!54450))

(assert (=> d!1503901 (= (eq!1131 (addToMapMapFromBucket!1444 (Cons!52830 lt!1887722 lt!1887720) lt!1887727) (+!2269 lt!1887723 lt!1887722)) (= (content!9395 (toList!5917 (addToMapMapFromBucket!1444 (Cons!52830 lt!1887722 lt!1887720) lt!1887727))) (content!9395 (toList!5917 (+!2269 lt!1887723 lt!1887722)))))))

(declare-fun bs!1112414 () Bool)

(assert (= bs!1112414 d!1503901))

(declare-fun m!5659037 () Bool)

(assert (=> bs!1112414 m!5659037))

(declare-fun m!5659039 () Bool)

(assert (=> bs!1112414 m!5659039))

(assert (=> b!4722700 d!1503901))

(declare-fun d!1503903 () Bool)

(declare-fun e!2945554 () Bool)

(assert (=> d!1503903 e!2945554))

(declare-fun res!1998210 () Bool)

(assert (=> d!1503903 (=> (not res!1998210) (not e!2945554))))

(declare-fun lt!1888124 () ListMap!5281)

(assert (=> d!1503903 (= res!1998210 (contains!16175 lt!1888124 (_1!30519 (h!59177 oldBucket!34))))))

(declare-fun lt!1888125 () List!52954)

(assert (=> d!1503903 (= lt!1888124 (ListMap!5282 lt!1888125))))

(declare-fun lt!1888122 () Unit!130119)

(declare-fun lt!1888123 () Unit!130119)

(assert (=> d!1503903 (= lt!1888122 lt!1888123)))

(assert (=> d!1503903 (= (getValueByKey!1957 lt!1888125 (_1!30519 (h!59177 oldBucket!34))) (Some!12360 (_2!30519 (h!59177 oldBucket!34))))))

(assert (=> d!1503903 (= lt!1888123 (lemmaContainsTupThenGetReturnValue!1086 lt!1888125 (_1!30519 (h!59177 oldBucket!34)) (_2!30519 (h!59177 oldBucket!34))))))

(assert (=> d!1503903 (= lt!1888125 (insertNoDuplicatedKeys!594 (toList!5917 lt!1887723) (_1!30519 (h!59177 oldBucket!34)) (_2!30519 (h!59177 oldBucket!34))))))

(assert (=> d!1503903 (= (+!2269 lt!1887723 (h!59177 oldBucket!34)) lt!1888124)))

(declare-fun b!4722974 () Bool)

(declare-fun res!1998209 () Bool)

(assert (=> b!4722974 (=> (not res!1998209) (not e!2945554))))

(assert (=> b!4722974 (= res!1998209 (= (getValueByKey!1957 (toList!5917 lt!1888124) (_1!30519 (h!59177 oldBucket!34))) (Some!12360 (_2!30519 (h!59177 oldBucket!34)))))))

(declare-fun b!4722975 () Bool)

(assert (=> b!4722975 (= e!2945554 (contains!16180 (toList!5917 lt!1888124) (h!59177 oldBucket!34)))))

(assert (= (and d!1503903 res!1998210) b!4722974))

(assert (= (and b!4722974 res!1998209) b!4722975))

(declare-fun m!5659041 () Bool)

(assert (=> d!1503903 m!5659041))

(declare-fun m!5659043 () Bool)

(assert (=> d!1503903 m!5659043))

(declare-fun m!5659045 () Bool)

(assert (=> d!1503903 m!5659045))

(declare-fun m!5659047 () Bool)

(assert (=> d!1503903 m!5659047))

(declare-fun m!5659049 () Bool)

(assert (=> b!4722974 m!5659049))

(declare-fun m!5659051 () Bool)

(assert (=> b!4722975 m!5659051))

(assert (=> b!4722700 d!1503903))

(declare-fun d!1503905 () Bool)

(assert (=> d!1503905 (= (eq!1131 (+!2269 lt!1887723 (h!59177 oldBucket!34)) (addToMapMapFromBucket!1444 oldBucket!34 lt!1887727)) (= (content!9395 (toList!5917 (+!2269 lt!1887723 (h!59177 oldBucket!34)))) (content!9395 (toList!5917 (addToMapMapFromBucket!1444 oldBucket!34 lt!1887727)))))))

(declare-fun bs!1112415 () Bool)

(assert (= bs!1112415 d!1503905))

(declare-fun m!5659053 () Bool)

(assert (=> bs!1112415 m!5659053))

(declare-fun m!5659055 () Bool)

(assert (=> bs!1112415 m!5659055))

(assert (=> b!4722700 d!1503905))

(declare-fun bs!1112416 () Bool)

(declare-fun b!4722978 () Bool)

(assert (= bs!1112416 (and b!4722978 b!4722969)))

(declare-fun lambda!215670 () Int)

(assert (=> bs!1112416 (= (= lt!1887727 lt!1888110) (= lambda!215670 lambda!215668))))

(declare-fun bs!1112417 () Bool)

(assert (= bs!1112417 (and b!4722978 b!4722954)))

(assert (=> bs!1112417 (= lambda!215670 lambda!215662)))

(declare-fun bs!1112418 () Bool)

(assert (= bs!1112418 (and b!4722978 b!4722952)))

(assert (=> bs!1112418 (= lambda!215670 lambda!215663)))

(declare-fun bs!1112419 () Bool)

(assert (= bs!1112419 (and b!4722978 d!1503799)))

(assert (=> bs!1112419 (= (= lt!1887727 lt!1887948) (= lambda!215670 lambda!215641))))

(declare-fun bs!1112420 () Bool)

(assert (= bs!1112420 (and b!4722978 d!1503873)))

(assert (=> bs!1112420 (not (= lambda!215670 lambda!215656))))

(assert (=> bs!1112416 (= lambda!215670 lambda!215667)))

(declare-fun bs!1112421 () Bool)

(assert (= bs!1112421 (and b!4722978 b!4722971)))

(assert (=> bs!1112421 (= lambda!215670 lambda!215666)))

(declare-fun bs!1112422 () Bool)

(assert (= bs!1112422 (and b!4722978 b!4722847)))

(assert (=> bs!1112422 (= lambda!215670 lambda!215638)))

(declare-fun bs!1112423 () Bool)

(assert (= bs!1112423 (and b!4722978 d!1503899)))

(assert (=> bs!1112423 (= (= lt!1887727 lt!1888111) (= lambda!215670 lambda!215669))))

(declare-fun bs!1112424 () Bool)

(assert (= bs!1112424 (and b!4722978 d!1503889)))

(assert (=> bs!1112424 (= (= lt!1887727 lt!1888078) (= lambda!215670 lambda!215665))))

(declare-fun bs!1112425 () Bool)

(assert (= bs!1112425 (and b!4722978 b!4722949)))

(assert (=> bs!1112425 (= lambda!215670 lambda!215658)))

(declare-fun bs!1112426 () Bool)

(assert (= bs!1112426 (and b!4722978 b!4722845)))

(assert (=> bs!1112426 (= (= lt!1887727 lt!1887947) (= lambda!215670 lambda!215640))))

(declare-fun bs!1112427 () Bool)

(assert (= bs!1112427 (and b!4722978 d!1503887)))

(assert (=> bs!1112427 (= (= lt!1887727 lt!1888057) (= lambda!215670 lambda!215661))))

(declare-fun bs!1112428 () Bool)

(assert (= bs!1112428 (and b!4722978 b!4722947)))

(assert (=> bs!1112428 (= (= lt!1887727 lt!1888056) (= lambda!215670 lambda!215660))))

(assert (=> bs!1112426 (= lambda!215670 lambda!215639)))

(assert (=> bs!1112428 (= lambda!215670 lambda!215659)))

(assert (=> bs!1112418 (= (= lt!1887727 lt!1888077) (= lambda!215670 lambda!215664))))

(assert (=> b!4722978 true))

(declare-fun bs!1112429 () Bool)

(declare-fun b!4722976 () Bool)

(assert (= bs!1112429 (and b!4722976 b!4722969)))

(declare-fun lambda!215671 () Int)

(assert (=> bs!1112429 (= (= lt!1887727 lt!1888110) (= lambda!215671 lambda!215668))))

(declare-fun bs!1112430 () Bool)

(assert (= bs!1112430 (and b!4722976 b!4722954)))

(assert (=> bs!1112430 (= lambda!215671 lambda!215662)))

(declare-fun bs!1112431 () Bool)

(assert (= bs!1112431 (and b!4722976 b!4722952)))

(assert (=> bs!1112431 (= lambda!215671 lambda!215663)))

(declare-fun bs!1112432 () Bool)

(assert (= bs!1112432 (and b!4722976 d!1503873)))

(assert (=> bs!1112432 (not (= lambda!215671 lambda!215656))))

(assert (=> bs!1112429 (= lambda!215671 lambda!215667)))

(declare-fun bs!1112433 () Bool)

(assert (= bs!1112433 (and b!4722976 b!4722971)))

(assert (=> bs!1112433 (= lambda!215671 lambda!215666)))

(declare-fun bs!1112434 () Bool)

(assert (= bs!1112434 (and b!4722976 b!4722847)))

(assert (=> bs!1112434 (= lambda!215671 lambda!215638)))

(declare-fun bs!1112435 () Bool)

(assert (= bs!1112435 (and b!4722976 d!1503899)))

(assert (=> bs!1112435 (= (= lt!1887727 lt!1888111) (= lambda!215671 lambda!215669))))

(declare-fun bs!1112436 () Bool)

(assert (= bs!1112436 (and b!4722976 d!1503889)))

(assert (=> bs!1112436 (= (= lt!1887727 lt!1888078) (= lambda!215671 lambda!215665))))

(declare-fun bs!1112437 () Bool)

(assert (= bs!1112437 (and b!4722976 b!4722949)))

(assert (=> bs!1112437 (= lambda!215671 lambda!215658)))

(declare-fun bs!1112438 () Bool)

(assert (= bs!1112438 (and b!4722976 b!4722845)))

(assert (=> bs!1112438 (= (= lt!1887727 lt!1887947) (= lambda!215671 lambda!215640))))

(declare-fun bs!1112439 () Bool)

(assert (= bs!1112439 (and b!4722976 d!1503887)))

(assert (=> bs!1112439 (= (= lt!1887727 lt!1888057) (= lambda!215671 lambda!215661))))

(declare-fun bs!1112440 () Bool)

(assert (= bs!1112440 (and b!4722976 b!4722978)))

(assert (=> bs!1112440 (= lambda!215671 lambda!215670)))

(declare-fun bs!1112441 () Bool)

(assert (= bs!1112441 (and b!4722976 d!1503799)))

(assert (=> bs!1112441 (= (= lt!1887727 lt!1887948) (= lambda!215671 lambda!215641))))

(declare-fun bs!1112442 () Bool)

(assert (= bs!1112442 (and b!4722976 b!4722947)))

(assert (=> bs!1112442 (= (= lt!1887727 lt!1888056) (= lambda!215671 lambda!215660))))

(assert (=> bs!1112438 (= lambda!215671 lambda!215639)))

(assert (=> bs!1112442 (= lambda!215671 lambda!215659)))

(assert (=> bs!1112431 (= (= lt!1887727 lt!1888077) (= lambda!215671 lambda!215664))))

(assert (=> b!4722976 true))

(declare-fun lt!1888135 () ListMap!5281)

(declare-fun lambda!215672 () Int)

(assert (=> bs!1112429 (= (= lt!1888135 lt!1888110) (= lambda!215672 lambda!215668))))

(assert (=> bs!1112430 (= (= lt!1888135 lt!1887727) (= lambda!215672 lambda!215662))))

(assert (=> bs!1112431 (= (= lt!1888135 lt!1887727) (= lambda!215672 lambda!215663))))

(assert (=> bs!1112432 (not (= lambda!215672 lambda!215656))))

(assert (=> bs!1112429 (= (= lt!1888135 lt!1887727) (= lambda!215672 lambda!215667))))

(assert (=> bs!1112433 (= (= lt!1888135 lt!1887727) (= lambda!215672 lambda!215666))))

(assert (=> bs!1112434 (= (= lt!1888135 lt!1887727) (= lambda!215672 lambda!215638))))

(assert (=> bs!1112435 (= (= lt!1888135 lt!1888111) (= lambda!215672 lambda!215669))))

(assert (=> bs!1112436 (= (= lt!1888135 lt!1888078) (= lambda!215672 lambda!215665))))

(assert (=> bs!1112437 (= (= lt!1888135 lt!1887727) (= lambda!215672 lambda!215658))))

(assert (=> bs!1112438 (= (= lt!1888135 lt!1887947) (= lambda!215672 lambda!215640))))

(assert (=> bs!1112439 (= (= lt!1888135 lt!1888057) (= lambda!215672 lambda!215661))))

(assert (=> bs!1112440 (= (= lt!1888135 lt!1887727) (= lambda!215672 lambda!215670))))

(assert (=> bs!1112441 (= (= lt!1888135 lt!1887948) (= lambda!215672 lambda!215641))))

(assert (=> bs!1112442 (= (= lt!1888135 lt!1888056) (= lambda!215672 lambda!215660))))

(assert (=> bs!1112438 (= (= lt!1888135 lt!1887727) (= lambda!215672 lambda!215639))))

(assert (=> b!4722976 (= (= lt!1888135 lt!1887727) (= lambda!215672 lambda!215671))))

(assert (=> bs!1112442 (= (= lt!1888135 lt!1887727) (= lambda!215672 lambda!215659))))

(assert (=> bs!1112431 (= (= lt!1888135 lt!1888077) (= lambda!215672 lambda!215664))))

(assert (=> b!4722976 true))

(declare-fun bs!1112443 () Bool)

(declare-fun d!1503907 () Bool)

(assert (= bs!1112443 (and d!1503907 b!4722969)))

(declare-fun lt!1888136 () ListMap!5281)

(declare-fun lambda!215673 () Int)

(assert (=> bs!1112443 (= (= lt!1888136 lt!1888110) (= lambda!215673 lambda!215668))))

(declare-fun bs!1112444 () Bool)

(assert (= bs!1112444 (and d!1503907 b!4722954)))

(assert (=> bs!1112444 (= (= lt!1888136 lt!1887727) (= lambda!215673 lambda!215662))))

(declare-fun bs!1112445 () Bool)

(assert (= bs!1112445 (and d!1503907 b!4722952)))

(assert (=> bs!1112445 (= (= lt!1888136 lt!1887727) (= lambda!215673 lambda!215663))))

(declare-fun bs!1112446 () Bool)

(assert (= bs!1112446 (and d!1503907 d!1503873)))

(assert (=> bs!1112446 (not (= lambda!215673 lambda!215656))))

(declare-fun bs!1112447 () Bool)

(assert (= bs!1112447 (and d!1503907 b!4722976)))

(assert (=> bs!1112447 (= (= lt!1888136 lt!1888135) (= lambda!215673 lambda!215672))))

(assert (=> bs!1112443 (= (= lt!1888136 lt!1887727) (= lambda!215673 lambda!215667))))

(declare-fun bs!1112448 () Bool)

(assert (= bs!1112448 (and d!1503907 b!4722971)))

(assert (=> bs!1112448 (= (= lt!1888136 lt!1887727) (= lambda!215673 lambda!215666))))

(declare-fun bs!1112449 () Bool)

(assert (= bs!1112449 (and d!1503907 b!4722847)))

(assert (=> bs!1112449 (= (= lt!1888136 lt!1887727) (= lambda!215673 lambda!215638))))

(declare-fun bs!1112450 () Bool)

(assert (= bs!1112450 (and d!1503907 d!1503899)))

(assert (=> bs!1112450 (= (= lt!1888136 lt!1888111) (= lambda!215673 lambda!215669))))

(declare-fun bs!1112451 () Bool)

(assert (= bs!1112451 (and d!1503907 d!1503889)))

(assert (=> bs!1112451 (= (= lt!1888136 lt!1888078) (= lambda!215673 lambda!215665))))

(declare-fun bs!1112452 () Bool)

(assert (= bs!1112452 (and d!1503907 b!4722949)))

(assert (=> bs!1112452 (= (= lt!1888136 lt!1887727) (= lambda!215673 lambda!215658))))

(declare-fun bs!1112453 () Bool)

(assert (= bs!1112453 (and d!1503907 b!4722845)))

(assert (=> bs!1112453 (= (= lt!1888136 lt!1887947) (= lambda!215673 lambda!215640))))

(declare-fun bs!1112454 () Bool)

(assert (= bs!1112454 (and d!1503907 d!1503887)))

(assert (=> bs!1112454 (= (= lt!1888136 lt!1888057) (= lambda!215673 lambda!215661))))

(declare-fun bs!1112455 () Bool)

(assert (= bs!1112455 (and d!1503907 b!4722978)))

(assert (=> bs!1112455 (= (= lt!1888136 lt!1887727) (= lambda!215673 lambda!215670))))

(declare-fun bs!1112456 () Bool)

(assert (= bs!1112456 (and d!1503907 d!1503799)))

(assert (=> bs!1112456 (= (= lt!1888136 lt!1887948) (= lambda!215673 lambda!215641))))

(declare-fun bs!1112457 () Bool)

(assert (= bs!1112457 (and d!1503907 b!4722947)))

(assert (=> bs!1112457 (= (= lt!1888136 lt!1888056) (= lambda!215673 lambda!215660))))

(assert (=> bs!1112453 (= (= lt!1888136 lt!1887727) (= lambda!215673 lambda!215639))))

(assert (=> bs!1112447 (= (= lt!1888136 lt!1887727) (= lambda!215673 lambda!215671))))

(assert (=> bs!1112457 (= (= lt!1888136 lt!1887727) (= lambda!215673 lambda!215659))))

(assert (=> bs!1112445 (= (= lt!1888136 lt!1888077) (= lambda!215673 lambda!215664))))

(assert (=> d!1503907 true))

(declare-fun c!806597 () Bool)

(declare-fun call!330352 () Bool)

(declare-fun bm!330346 () Bool)

(assert (=> bm!330346 (= call!330352 (forall!11590 (ite c!806597 (toList!5917 lt!1887727) (Cons!52830 lt!1887722 lt!1887720)) (ite c!806597 lambda!215670 lambda!215672)))))

(declare-fun e!2945555 () ListMap!5281)

(assert (=> b!4722976 (= e!2945555 lt!1888135)))

(declare-fun lt!1888130 () ListMap!5281)

(assert (=> b!4722976 (= lt!1888130 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))))))

(assert (=> b!4722976 (= lt!1888135 (addToMapMapFromBucket!1444 (t!360220 (Cons!52830 lt!1887722 lt!1887720)) (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(declare-fun lt!1888145 () Unit!130119)

(declare-fun call!330353 () Unit!130119)

(assert (=> b!4722976 (= lt!1888145 call!330353)))

(assert (=> b!4722976 (forall!11590 (toList!5917 lt!1887727) lambda!215671)))

(declare-fun lt!1888133 () Unit!130119)

(assert (=> b!4722976 (= lt!1888133 lt!1888145)))

(assert (=> b!4722976 (forall!11590 (toList!5917 lt!1888130) lambda!215672)))

(declare-fun lt!1888131 () Unit!130119)

(declare-fun Unit!130226 () Unit!130119)

(assert (=> b!4722976 (= lt!1888131 Unit!130226)))

(assert (=> b!4722976 (forall!11590 (t!360220 (Cons!52830 lt!1887722 lt!1887720)) lambda!215672)))

(declare-fun lt!1888129 () Unit!130119)

(declare-fun Unit!130227 () Unit!130119)

(assert (=> b!4722976 (= lt!1888129 Unit!130227)))

(declare-fun lt!1888140 () Unit!130119)

(declare-fun Unit!130228 () Unit!130119)

(assert (=> b!4722976 (= lt!1888140 Unit!130228)))

(declare-fun lt!1888143 () Unit!130119)

(assert (=> b!4722976 (= lt!1888143 (forallContained!3639 (toList!5917 lt!1888130) lambda!215672 (h!59177 (Cons!52830 lt!1887722 lt!1887720))))))

(assert (=> b!4722976 (contains!16175 lt!1888130 (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720))))))

(declare-fun lt!1888146 () Unit!130119)

(declare-fun Unit!130229 () Unit!130119)

(assert (=> b!4722976 (= lt!1888146 Unit!130229)))

(assert (=> b!4722976 (contains!16175 lt!1888135 (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720))))))

(declare-fun lt!1888139 () Unit!130119)

(declare-fun Unit!130230 () Unit!130119)

(assert (=> b!4722976 (= lt!1888139 Unit!130230)))

(assert (=> b!4722976 call!330352))

(declare-fun lt!1888127 () Unit!130119)

(declare-fun Unit!130231 () Unit!130119)

(assert (=> b!4722976 (= lt!1888127 Unit!130231)))

(assert (=> b!4722976 (forall!11590 (toList!5917 lt!1888130) lambda!215672)))

(declare-fun lt!1888126 () Unit!130119)

(declare-fun Unit!130232 () Unit!130119)

(assert (=> b!4722976 (= lt!1888126 Unit!130232)))

(declare-fun lt!1888137 () Unit!130119)

(declare-fun Unit!130233 () Unit!130119)

(assert (=> b!4722976 (= lt!1888137 Unit!130233)))

(declare-fun lt!1888128 () Unit!130119)

(assert (=> b!4722976 (= lt!1888128 (addForallContainsKeyThenBeforeAdding!796 lt!1887727 lt!1888135 (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (_2!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(assert (=> b!4722976 (forall!11590 (toList!5917 lt!1887727) lambda!215672)))

(declare-fun lt!1888141 () Unit!130119)

(assert (=> b!4722976 (= lt!1888141 lt!1888128)))

(declare-fun call!330351 () Bool)

(assert (=> b!4722976 call!330351))

(declare-fun lt!1888132 () Unit!130119)

(declare-fun Unit!130234 () Unit!130119)

(assert (=> b!4722976 (= lt!1888132 Unit!130234)))

(declare-fun res!1998211 () Bool)

(assert (=> b!4722976 (= res!1998211 (forall!11590 (Cons!52830 lt!1887722 lt!1887720) lambda!215672))))

(declare-fun e!2945557 () Bool)

(assert (=> b!4722976 (=> (not res!1998211) (not e!2945557))))

(assert (=> b!4722976 e!2945557))

(declare-fun lt!1888138 () Unit!130119)

(declare-fun Unit!130235 () Unit!130119)

(assert (=> b!4722976 (= lt!1888138 Unit!130235)))

(declare-fun e!2945556 () Bool)

(assert (=> d!1503907 e!2945556))

(declare-fun res!1998213 () Bool)

(assert (=> d!1503907 (=> (not res!1998213) (not e!2945556))))

(assert (=> d!1503907 (= res!1998213 (forall!11590 (Cons!52830 lt!1887722 lt!1887720) lambda!215673))))

(assert (=> d!1503907 (= lt!1888136 e!2945555)))

(assert (=> d!1503907 (= c!806597 ((_ is Nil!52830) (Cons!52830 lt!1887722 lt!1887720)))))

(assert (=> d!1503907 (noDuplicateKeys!2014 (Cons!52830 lt!1887722 lt!1887720))))

(assert (=> d!1503907 (= (addToMapMapFromBucket!1444 (Cons!52830 lt!1887722 lt!1887720) lt!1887727) lt!1888136)))

(declare-fun b!4722977 () Bool)

(assert (=> b!4722977 (= e!2945557 (forall!11590 (toList!5917 lt!1887727) lambda!215672))))

(assert (=> b!4722978 (= e!2945555 lt!1887727)))

(declare-fun lt!1888134 () Unit!130119)

(assert (=> b!4722978 (= lt!1888134 call!330353)))

(assert (=> b!4722978 call!330352))

(declare-fun lt!1888144 () Unit!130119)

(assert (=> b!4722978 (= lt!1888144 lt!1888134)))

(assert (=> b!4722978 call!330351))

(declare-fun lt!1888142 () Unit!130119)

(declare-fun Unit!130236 () Unit!130119)

(assert (=> b!4722978 (= lt!1888142 Unit!130236)))

(declare-fun b!4722979 () Bool)

(assert (=> b!4722979 (= e!2945556 (invariantList!1511 (toList!5917 lt!1888136)))))

(declare-fun b!4722980 () Bool)

(declare-fun res!1998212 () Bool)

(assert (=> b!4722980 (=> (not res!1998212) (not e!2945556))))

(assert (=> b!4722980 (= res!1998212 (forall!11590 (toList!5917 lt!1887727) lambda!215673))))

(declare-fun bm!330347 () Bool)

(assert (=> bm!330347 (= call!330351 (forall!11590 (toList!5917 lt!1887727) (ite c!806597 lambda!215670 lambda!215672)))))

(declare-fun bm!330348 () Bool)

(assert (=> bm!330348 (= call!330353 (lemmaContainsAllItsOwnKeys!797 lt!1887727))))

(assert (= (and d!1503907 c!806597) b!4722978))

(assert (= (and d!1503907 (not c!806597)) b!4722976))

(assert (= (and b!4722976 res!1998211) b!4722977))

(assert (= (or b!4722978 b!4722976) bm!330348))

(assert (= (or b!4722978 b!4722976) bm!330347))

(assert (= (or b!4722978 b!4722976) bm!330346))

(assert (= (and d!1503907 res!1998213) b!4722980))

(assert (= (and b!4722980 res!1998212) b!4722979))

(declare-fun m!5659057 () Bool)

(assert (=> bm!330347 m!5659057))

(assert (=> bm!330348 m!5658733))

(declare-fun m!5659059 () Bool)

(assert (=> b!4722979 m!5659059))

(declare-fun m!5659061 () Bool)

(assert (=> d!1503907 m!5659061))

(declare-fun m!5659063 () Bool)

(assert (=> d!1503907 m!5659063))

(declare-fun m!5659065 () Bool)

(assert (=> b!4722980 m!5659065))

(declare-fun m!5659067 () Bool)

(assert (=> bm!330346 m!5659067))

(declare-fun m!5659069 () Bool)

(assert (=> b!4722976 m!5659069))

(declare-fun m!5659071 () Bool)

(assert (=> b!4722976 m!5659071))

(declare-fun m!5659073 () Bool)

(assert (=> b!4722976 m!5659073))

(declare-fun m!5659075 () Bool)

(assert (=> b!4722976 m!5659075))

(declare-fun m!5659077 () Bool)

(assert (=> b!4722976 m!5659077))

(declare-fun m!5659079 () Bool)

(assert (=> b!4722976 m!5659079))

(declare-fun m!5659081 () Bool)

(assert (=> b!4722976 m!5659081))

(declare-fun m!5659083 () Bool)

(assert (=> b!4722976 m!5659083))

(declare-fun m!5659085 () Bool)

(assert (=> b!4722976 m!5659085))

(assert (=> b!4722976 m!5659075))

(assert (=> b!4722976 m!5659079))

(declare-fun m!5659087 () Bool)

(assert (=> b!4722976 m!5659087))

(declare-fun m!5659089 () Bool)

(assert (=> b!4722976 m!5659089))

(assert (=> b!4722977 m!5659071))

(assert (=> b!4722700 d!1503907))

(declare-fun d!1503909 () Bool)

(assert (=> d!1503909 (eq!1131 (addToMapMapFromBucket!1444 (Cons!52830 lt!1887722 lt!1887720) lt!1887727) (+!2269 (addToMapMapFromBucket!1444 lt!1887720 lt!1887727) lt!1887722))))

(declare-fun lt!1888149 () Unit!130119)

(declare-fun choose!33322 (tuple2!54450 List!52954 ListMap!5281) Unit!130119)

(assert (=> d!1503909 (= lt!1888149 (choose!33322 lt!1887722 lt!1887720 lt!1887727))))

(assert (=> d!1503909 (noDuplicateKeys!2014 lt!1887720)))

(assert (=> d!1503909 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!380 lt!1887722 lt!1887720 lt!1887727) lt!1888149)))

(declare-fun bs!1112458 () Bool)

(assert (= bs!1112458 d!1503909))

(assert (=> bs!1112458 m!5658469))

(assert (=> bs!1112458 m!5658963))

(assert (=> bs!1112458 m!5658469))

(declare-fun m!5659091 () Bool)

(assert (=> bs!1112458 m!5659091))

(declare-fun m!5659093 () Bool)

(assert (=> bs!1112458 m!5659093))

(declare-fun m!5659095 () Bool)

(assert (=> bs!1112458 m!5659095))

(assert (=> bs!1112458 m!5658461))

(assert (=> bs!1112458 m!5659091))

(assert (=> bs!1112458 m!5658461))

(assert (=> b!4722700 d!1503909))

(declare-fun bs!1112459 () Bool)

(declare-fun d!1503911 () Bool)

(assert (= bs!1112459 (and d!1503911 b!4722969)))

(declare-fun lambda!215674 () Int)

(assert (=> bs!1112459 (not (= lambda!215674 lambda!215668))))

(declare-fun bs!1112460 () Bool)

(assert (= bs!1112460 (and d!1503911 b!4722954)))

(assert (=> bs!1112460 (not (= lambda!215674 lambda!215662))))

(declare-fun bs!1112461 () Bool)

(assert (= bs!1112461 (and d!1503911 b!4722952)))

(assert (=> bs!1112461 (not (= lambda!215674 lambda!215663))))

(declare-fun bs!1112462 () Bool)

(assert (= bs!1112462 (and d!1503911 d!1503873)))

(assert (=> bs!1112462 (= lambda!215674 lambda!215656)))

(declare-fun bs!1112463 () Bool)

(assert (= bs!1112463 (and d!1503911 b!4722976)))

(assert (=> bs!1112463 (not (= lambda!215674 lambda!215672))))

(assert (=> bs!1112459 (not (= lambda!215674 lambda!215667))))

(declare-fun bs!1112464 () Bool)

(assert (= bs!1112464 (and d!1503911 d!1503907)))

(assert (=> bs!1112464 (not (= lambda!215674 lambda!215673))))

(declare-fun bs!1112465 () Bool)

(assert (= bs!1112465 (and d!1503911 b!4722971)))

(assert (=> bs!1112465 (not (= lambda!215674 lambda!215666))))

(declare-fun bs!1112466 () Bool)

(assert (= bs!1112466 (and d!1503911 b!4722847)))

(assert (=> bs!1112466 (not (= lambda!215674 lambda!215638))))

(declare-fun bs!1112467 () Bool)

(assert (= bs!1112467 (and d!1503911 d!1503899)))

(assert (=> bs!1112467 (not (= lambda!215674 lambda!215669))))

(declare-fun bs!1112468 () Bool)

(assert (= bs!1112468 (and d!1503911 d!1503889)))

(assert (=> bs!1112468 (not (= lambda!215674 lambda!215665))))

(declare-fun bs!1112469 () Bool)

(assert (= bs!1112469 (and d!1503911 b!4722949)))

(assert (=> bs!1112469 (not (= lambda!215674 lambda!215658))))

(declare-fun bs!1112470 () Bool)

(assert (= bs!1112470 (and d!1503911 b!4722845)))

(assert (=> bs!1112470 (not (= lambda!215674 lambda!215640))))

(declare-fun bs!1112471 () Bool)

(assert (= bs!1112471 (and d!1503911 d!1503887)))

(assert (=> bs!1112471 (not (= lambda!215674 lambda!215661))))

(declare-fun bs!1112472 () Bool)

(assert (= bs!1112472 (and d!1503911 b!4722978)))

(assert (=> bs!1112472 (not (= lambda!215674 lambda!215670))))

(declare-fun bs!1112473 () Bool)

(assert (= bs!1112473 (and d!1503911 d!1503799)))

(assert (=> bs!1112473 (not (= lambda!215674 lambda!215641))))

(declare-fun bs!1112474 () Bool)

(assert (= bs!1112474 (and d!1503911 b!4722947)))

(assert (=> bs!1112474 (not (= lambda!215674 lambda!215660))))

(assert (=> bs!1112470 (not (= lambda!215674 lambda!215639))))

(assert (=> bs!1112463 (not (= lambda!215674 lambda!215671))))

(assert (=> bs!1112474 (not (= lambda!215674 lambda!215659))))

(assert (=> bs!1112461 (not (= lambda!215674 lambda!215664))))

(assert (=> d!1503911 true))

(assert (=> d!1503911 true))

(assert (=> d!1503911 (= (allKeysSameHash!1840 oldBucket!34 hash!405 hashF!1323) (forall!11590 oldBucket!34 lambda!215674))))

(declare-fun bs!1112475 () Bool)

(assert (= bs!1112475 d!1503911))

(declare-fun m!5659097 () Bool)

(assert (=> bs!1112475 m!5659097))

(assert (=> b!4722690 d!1503911))

(declare-fun d!1503913 () Bool)

(declare-fun res!1998214 () Bool)

(declare-fun e!2945558 () Bool)

(assert (=> d!1503913 (=> res!1998214 e!2945558)))

(assert (=> d!1503913 (= res!1998214 (not ((_ is Cons!52830) newBucket!218)))))

(assert (=> d!1503913 (= (noDuplicateKeys!2014 newBucket!218) e!2945558)))

(declare-fun b!4722981 () Bool)

(declare-fun e!2945559 () Bool)

(assert (=> b!4722981 (= e!2945558 e!2945559)))

(declare-fun res!1998215 () Bool)

(assert (=> b!4722981 (=> (not res!1998215) (not e!2945559))))

(assert (=> b!4722981 (= res!1998215 (not (containsKey!3369 (t!360220 newBucket!218) (_1!30519 (h!59177 newBucket!218)))))))

(declare-fun b!4722982 () Bool)

(assert (=> b!4722982 (= e!2945559 (noDuplicateKeys!2014 (t!360220 newBucket!218)))))

(assert (= (and d!1503913 (not res!1998214)) b!4722981))

(assert (= (and b!4722981 res!1998215) b!4722982))

(declare-fun m!5659099 () Bool)

(assert (=> b!4722981 m!5659099))

(declare-fun m!5659101 () Bool)

(assert (=> b!4722982 m!5659101))

(assert (=> b!4722701 d!1503913))

(declare-fun b!4722987 () Bool)

(declare-fun tp!1348420 () Bool)

(declare-fun e!2945562 () Bool)

(assert (=> b!4722987 (= e!2945562 (and tp_is_empty!31349 tp_is_empty!31351 tp!1348420))))

(assert (=> b!4722691 (= tp!1348405 e!2945562)))

(assert (= (and b!4722691 ((_ is Cons!52830) (t!360220 newBucket!218))) b!4722987))

(declare-fun e!2945563 () Bool)

(declare-fun b!4722988 () Bool)

(declare-fun tp!1348421 () Bool)

(assert (=> b!4722988 (= e!2945563 (and tp_is_empty!31349 tp_is_empty!31351 tp!1348421))))

(assert (=> b!4722692 (= tp!1348406 e!2945563)))

(assert (= (and b!4722692 ((_ is Cons!52830) (t!360220 oldBucket!34))) b!4722988))

(declare-fun b!4722993 () Bool)

(declare-fun e!2945566 () Bool)

(declare-fun tp!1348426 () Bool)

(declare-fun tp!1348427 () Bool)

(assert (=> b!4722993 (= e!2945566 (and tp!1348426 tp!1348427))))

(assert (=> b!4722703 (= tp!1348407 e!2945566)))

(assert (= (and b!4722703 ((_ is Cons!52831) (toList!5918 lm!2023))) b!4722993))

(declare-fun b_lambda!178749 () Bool)

(assert (= b_lambda!178745 (or start!480732 b_lambda!178749)))

(declare-fun bs!1112476 () Bool)

(declare-fun d!1503915 () Bool)

(assert (= bs!1112476 (and d!1503915 start!480732)))

(assert (=> bs!1112476 (= (dynLambda!21820 lambda!215550 (h!59178 lt!1887719)) (noDuplicateKeys!2014 (_2!30520 (h!59178 lt!1887719))))))

(declare-fun m!5659103 () Bool)

(assert (=> bs!1112476 m!5659103))

(assert (=> b!4722943 d!1503915))

(declare-fun b_lambda!178751 () Bool)

(assert (= b_lambda!178747 (or start!480732 b_lambda!178751)))

(declare-fun bs!1112477 () Bool)

(declare-fun d!1503917 () Bool)

(assert (= bs!1112477 (and d!1503917 start!480732)))

(assert (=> bs!1112477 (= (dynLambda!21820 lambda!215550 (h!59178 (toList!5918 lm!2023))) (noDuplicateKeys!2014 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))

(assert (=> bs!1112477 m!5658739))

(assert (=> b!4722945 d!1503917))

(check-sat (not b!4722755) (not b!4722845) (not b!4722953) (not b!4722975) (not bm!330337) (not b!4722950) (not bm!330336) (not b!4722919) (not bm!330340) (not d!1503873) (not d!1503903) (not b!4722920) (not d!1503887) (not d!1503897) (not bm!330338) (not b!4722972) (not d!1503889) (not bm!330342) (not b!4722759) tp_is_empty!31349 (not b!4722913) (not d!1503907) (not b!4722988) (not d!1503881) (not b!4722917) (not bm!330345) (not d!1503797) (not b!4722974) (not b!4722969) (not bm!330344) (not bm!330327) (not b_lambda!178749) (not b!4722914) (not bm!330326) (not d!1503783) (not b!4722846) (not b!4722865) (not b!4722946) (not d!1503791) (not bm!330339) (not b!4722981) (not b!4722980) (not b!4722866) (not b!4722912) (not b!4722973) (not b!4722937) (not bs!1112477) (not d!1503909) (not b_lambda!178751) (not d!1503901) (not d!1503843) (not d!1503877) (not b!4722948) (not b!4722849) (not b!4722976) (not b!4722982) (not bm!330341) (not b!4722977) (not b!4722956) (not b!4722955) (not b!4722880) (not bm!330346) (not b!4722947) (not bm!330347) (not d!1503851) (not b!4722970) (not b!4722967) (not d!1503871) (not d!1503799) (not bm!330348) (not b!4722952) (not b!4722962) (not b!4722859) (not bm!330343) (not b!4722878) (not bs!1112476) (not d!1503911) (not b!4722968) (not d!1503845) (not bm!330325) (not d!1503875) (not d!1503905) (not d!1503899) (not b!4722848) (not b!4722987) (not b!4722915) (not b!4722921) (not b!4722993) (not d!1503885) (not b!4722979) tp_is_empty!31351 (not d!1503859) (not b!4722951) (not b!4722944))
(check-sat)
(get-model)

(declare-fun d!1503919 () Bool)

(declare-fun noDuplicatedKeys!374 (List!52954) Bool)

(assert (=> d!1503919 (= (invariantList!1511 (toList!5917 lt!1887948)) (noDuplicatedKeys!374 (toList!5917 lt!1887948)))))

(declare-fun bs!1112478 () Bool)

(assert (= bs!1112478 d!1503919))

(declare-fun m!5659105 () Bool)

(assert (=> bs!1112478 m!5659105))

(assert (=> b!4722848 d!1503919))

(declare-fun d!1503921 () Bool)

(declare-fun res!1998220 () Bool)

(declare-fun e!2945571 () Bool)

(assert (=> d!1503921 (=> res!1998220 e!2945571)))

(assert (=> d!1503921 (= res!1998220 ((_ is Nil!52830) (toList!5917 lt!1887727)))))

(assert (=> d!1503921 (= (forall!11590 (toList!5917 lt!1887727) (ite c!806594 lambda!215658 lambda!215660)) e!2945571)))

(declare-fun b!4722998 () Bool)

(declare-fun e!2945572 () Bool)

(assert (=> b!4722998 (= e!2945571 e!2945572)))

(declare-fun res!1998221 () Bool)

(assert (=> b!4722998 (=> (not res!1998221) (not e!2945572))))

(declare-fun dynLambda!21821 (Int tuple2!54450) Bool)

(assert (=> b!4722998 (= res!1998221 (dynLambda!21821 (ite c!806594 lambda!215658 lambda!215660) (h!59177 (toList!5917 lt!1887727))))))

(declare-fun b!4722999 () Bool)

(assert (=> b!4722999 (= e!2945572 (forall!11590 (t!360220 (toList!5917 lt!1887727)) (ite c!806594 lambda!215658 lambda!215660)))))

(assert (= (and d!1503921 (not res!1998220)) b!4722998))

(assert (= (and b!4722998 res!1998221) b!4722999))

(declare-fun b_lambda!178753 () Bool)

(assert (=> (not b_lambda!178753) (not b!4722998)))

(declare-fun m!5659107 () Bool)

(assert (=> b!4722998 m!5659107))

(declare-fun m!5659109 () Bool)

(assert (=> b!4722999 m!5659109))

(assert (=> bm!330338 d!1503921))

(declare-fun d!1503923 () Bool)

(declare-fun lt!1888152 () Bool)

(assert (=> d!1503923 (= lt!1888152 (select (content!9395 (toList!5917 lt!1888099)) lt!1887722))))

(declare-fun e!2945578 () Bool)

(assert (=> d!1503923 (= lt!1888152 e!2945578)))

(declare-fun res!1998227 () Bool)

(assert (=> d!1503923 (=> (not res!1998227) (not e!2945578))))

(assert (=> d!1503923 (= res!1998227 ((_ is Cons!52830) (toList!5917 lt!1888099)))))

(assert (=> d!1503923 (= (contains!16180 (toList!5917 lt!1888099) lt!1887722) lt!1888152)))

(declare-fun b!4723004 () Bool)

(declare-fun e!2945577 () Bool)

(assert (=> b!4723004 (= e!2945578 e!2945577)))

(declare-fun res!1998226 () Bool)

(assert (=> b!4723004 (=> res!1998226 e!2945577)))

(assert (=> b!4723004 (= res!1998226 (= (h!59177 (toList!5917 lt!1888099)) lt!1887722))))

(declare-fun b!4723005 () Bool)

(assert (=> b!4723005 (= e!2945577 (contains!16180 (t!360220 (toList!5917 lt!1888099)) lt!1887722))))

(assert (= (and d!1503923 res!1998227) b!4723004))

(assert (= (and b!4723004 (not res!1998226)) b!4723005))

(declare-fun m!5659111 () Bool)

(assert (=> d!1503923 m!5659111))

(declare-fun m!5659113 () Bool)

(assert (=> d!1503923 m!5659113))

(declare-fun m!5659115 () Bool)

(assert (=> b!4723005 m!5659115))

(assert (=> b!4722968 d!1503923))

(declare-fun d!1503925 () Bool)

(declare-fun res!1998228 () Bool)

(declare-fun e!2945579 () Bool)

(assert (=> d!1503925 (=> res!1998228 e!2945579)))

(assert (=> d!1503925 (= res!1998228 ((_ is Nil!52830) (_2!30520 (h!59178 (toList!5918 lm!2023)))))))

(assert (=> d!1503925 (= (forall!11590 (_2!30520 (h!59178 (toList!5918 lm!2023))) lambda!215641) e!2945579)))

(declare-fun b!4723006 () Bool)

(declare-fun e!2945580 () Bool)

(assert (=> b!4723006 (= e!2945579 e!2945580)))

(declare-fun res!1998229 () Bool)

(assert (=> b!4723006 (=> (not res!1998229) (not e!2945580))))

(assert (=> b!4723006 (= res!1998229 (dynLambda!21821 lambda!215641 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(declare-fun b!4723007 () Bool)

(assert (=> b!4723007 (= e!2945580 (forall!11590 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023)))) lambda!215641))))

(assert (= (and d!1503925 (not res!1998228)) b!4723006))

(assert (= (and b!4723006 res!1998229) b!4723007))

(declare-fun b_lambda!178755 () Bool)

(assert (=> (not b_lambda!178755) (not b!4723006)))

(declare-fun m!5659117 () Bool)

(assert (=> b!4723006 m!5659117))

(declare-fun m!5659119 () Bool)

(assert (=> b!4723007 m!5659119))

(assert (=> d!1503799 d!1503925))

(declare-fun d!1503927 () Bool)

(declare-fun res!1998230 () Bool)

(declare-fun e!2945581 () Bool)

(assert (=> d!1503927 (=> res!1998230 e!2945581)))

(assert (=> d!1503927 (= res!1998230 (not ((_ is Cons!52830) (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(assert (=> d!1503927 (= (noDuplicateKeys!2014 (_2!30520 (h!59178 (toList!5918 lm!2023)))) e!2945581)))

(declare-fun b!4723008 () Bool)

(declare-fun e!2945582 () Bool)

(assert (=> b!4723008 (= e!2945581 e!2945582)))

(declare-fun res!1998231 () Bool)

(assert (=> b!4723008 (=> (not res!1998231) (not e!2945582))))

(assert (=> b!4723008 (= res!1998231 (not (containsKey!3369 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023)))) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))))

(declare-fun b!4723009 () Bool)

(assert (=> b!4723009 (= e!2945582 (noDuplicateKeys!2014 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(assert (= (and d!1503927 (not res!1998230)) b!4723008))

(assert (= (and b!4723008 res!1998231) b!4723009))

(declare-fun m!5659121 () Bool)

(assert (=> b!4723008 m!5659121))

(declare-fun m!5659123 () Bool)

(assert (=> b!4723009 m!5659123))

(assert (=> d!1503799 d!1503927))

(declare-fun d!1503929 () Bool)

(declare-fun res!1998232 () Bool)

(declare-fun e!2945583 () Bool)

(assert (=> d!1503929 (=> res!1998232 e!2945583)))

(assert (=> d!1503929 (= res!1998232 ((_ is Nil!52830) (toList!5917 lt!1887727)))))

(assert (=> d!1503929 (= (forall!11590 (toList!5917 lt!1887727) lambda!215640) e!2945583)))

(declare-fun b!4723010 () Bool)

(declare-fun e!2945584 () Bool)

(assert (=> b!4723010 (= e!2945583 e!2945584)))

(declare-fun res!1998233 () Bool)

(assert (=> b!4723010 (=> (not res!1998233) (not e!2945584))))

(assert (=> b!4723010 (= res!1998233 (dynLambda!21821 lambda!215640 (h!59177 (toList!5917 lt!1887727))))))

(declare-fun b!4723011 () Bool)

(assert (=> b!4723011 (= e!2945584 (forall!11590 (t!360220 (toList!5917 lt!1887727)) lambda!215640))))

(assert (= (and d!1503929 (not res!1998232)) b!4723010))

(assert (= (and b!4723010 res!1998233) b!4723011))

(declare-fun b_lambda!178757 () Bool)

(assert (=> (not b_lambda!178757) (not b!4723010)))

(declare-fun m!5659125 () Bool)

(assert (=> b!4723010 m!5659125))

(declare-fun m!5659127 () Bool)

(assert (=> b!4723011 m!5659127))

(assert (=> b!4722846 d!1503929))

(declare-fun d!1503931 () Bool)

(assert (=> d!1503931 (= (invariantList!1511 (toList!5917 lt!1888057)) (noDuplicatedKeys!374 (toList!5917 lt!1888057)))))

(declare-fun bs!1112479 () Bool)

(assert (= bs!1112479 d!1503931))

(declare-fun m!5659129 () Bool)

(assert (=> bs!1112479 m!5659129))

(assert (=> b!4722950 d!1503931))

(declare-fun d!1503933 () Bool)

(declare-fun res!1998234 () Bool)

(declare-fun e!2945585 () Bool)

(assert (=> d!1503933 (=> res!1998234 e!2945585)))

(assert (=> d!1503933 (= res!1998234 (and ((_ is Cons!52830) lt!1888046) (= (_1!30519 (h!59177 lt!1888046)) key!4653)))))

(assert (=> d!1503933 (= (containsKey!3369 lt!1888046 key!4653) e!2945585)))

(declare-fun b!4723012 () Bool)

(declare-fun e!2945586 () Bool)

(assert (=> b!4723012 (= e!2945585 e!2945586)))

(declare-fun res!1998235 () Bool)

(assert (=> b!4723012 (=> (not res!1998235) (not e!2945586))))

(assert (=> b!4723012 (= res!1998235 ((_ is Cons!52830) lt!1888046))))

(declare-fun b!4723013 () Bool)

(assert (=> b!4723013 (= e!2945586 (containsKey!3369 (t!360220 lt!1888046) key!4653))))

(assert (= (and d!1503933 (not res!1998234)) b!4723012))

(assert (= (and b!4723012 res!1998235) b!4723013))

(declare-fun m!5659131 () Bool)

(assert (=> b!4723013 m!5659131))

(assert (=> d!1503877 d!1503933))

(assert (=> d!1503877 d!1503847))

(declare-fun d!1503935 () Bool)

(assert (=> d!1503935 (= (invariantList!1511 (toList!5917 lt!1887761)) (noDuplicatedKeys!374 (toList!5917 lt!1887761)))))

(declare-fun bs!1112480 () Bool)

(assert (= bs!1112480 d!1503935))

(declare-fun m!5659133 () Bool)

(assert (=> bs!1112480 m!5659133))

(assert (=> d!1503797 d!1503935))

(declare-fun d!1503937 () Bool)

(declare-fun res!1998236 () Bool)

(declare-fun e!2945587 () Bool)

(assert (=> d!1503937 (=> res!1998236 e!2945587)))

(assert (=> d!1503937 (= res!1998236 ((_ is Nil!52831) lt!1887719))))

(assert (=> d!1503937 (= (forall!11588 lt!1887719 lambda!215560) e!2945587)))

(declare-fun b!4723014 () Bool)

(declare-fun e!2945588 () Bool)

(assert (=> b!4723014 (= e!2945587 e!2945588)))

(declare-fun res!1998237 () Bool)

(assert (=> b!4723014 (=> (not res!1998237) (not e!2945588))))

(assert (=> b!4723014 (= res!1998237 (dynLambda!21820 lambda!215560 (h!59178 lt!1887719)))))

(declare-fun b!4723015 () Bool)

(assert (=> b!4723015 (= e!2945588 (forall!11588 (t!360221 lt!1887719) lambda!215560))))

(assert (= (and d!1503937 (not res!1998236)) b!4723014))

(assert (= (and b!4723014 res!1998237) b!4723015))

(declare-fun b_lambda!178759 () Bool)

(assert (=> (not b_lambda!178759) (not b!4723014)))

(declare-fun m!5659135 () Bool)

(assert (=> b!4723014 m!5659135))

(declare-fun m!5659137 () Bool)

(assert (=> b!4723015 m!5659137))

(assert (=> d!1503797 d!1503937))

(declare-fun d!1503939 () Bool)

(declare-fun res!1998242 () Bool)

(declare-fun e!2945593 () Bool)

(assert (=> d!1503939 (=> res!1998242 e!2945593)))

(assert (=> d!1503939 (= res!1998242 (or ((_ is Nil!52831) (toList!5918 lm!2023)) ((_ is Nil!52831) (t!360221 (toList!5918 lm!2023)))))))

(assert (=> d!1503939 (= (isStrictlySorted!750 (toList!5918 lm!2023)) e!2945593)))

(declare-fun b!4723020 () Bool)

(declare-fun e!2945594 () Bool)

(assert (=> b!4723020 (= e!2945593 e!2945594)))

(declare-fun res!1998243 () Bool)

(assert (=> b!4723020 (=> (not res!1998243) (not e!2945594))))

(assert (=> b!4723020 (= res!1998243 (bvslt (_1!30520 (h!59178 (toList!5918 lm!2023))) (_1!30520 (h!59178 (t!360221 (toList!5918 lm!2023))))))))

(declare-fun b!4723021 () Bool)

(assert (=> b!4723021 (= e!2945594 (isStrictlySorted!750 (t!360221 (toList!5918 lm!2023))))))

(assert (= (and d!1503939 (not res!1998242)) b!4723020))

(assert (= (and b!4723020 res!1998243) b!4723021))

(declare-fun m!5659139 () Bool)

(assert (=> b!4723021 m!5659139))

(assert (=> d!1503885 d!1503939))

(declare-fun d!1503941 () Bool)

(declare-fun res!1998244 () Bool)

(declare-fun e!2945595 () Bool)

(assert (=> d!1503941 (=> res!1998244 e!2945595)))

(assert (=> d!1503941 (= res!1998244 (and ((_ is Cons!52830) (t!360220 lt!1887720)) (= (_1!30519 (h!59177 (t!360220 lt!1887720))) key!4653)))))

(assert (=> d!1503941 (= (containsKey!3369 (t!360220 lt!1887720) key!4653) e!2945595)))

(declare-fun b!4723022 () Bool)

(declare-fun e!2945596 () Bool)

(assert (=> b!4723022 (= e!2945595 e!2945596)))

(declare-fun res!1998245 () Bool)

(assert (=> b!4723022 (=> (not res!1998245) (not e!2945596))))

(assert (=> b!4723022 (= res!1998245 ((_ is Cons!52830) (t!360220 lt!1887720)))))

(declare-fun b!4723023 () Bool)

(assert (=> b!4723023 (= e!2945596 (containsKey!3369 (t!360220 (t!360220 lt!1887720)) key!4653))))

(assert (= (and d!1503941 (not res!1998244)) b!4723022))

(assert (= (and b!4723022 res!1998245) b!4723023))

(declare-fun m!5659141 () Bool)

(assert (=> b!4723023 m!5659141))

(assert (=> b!4722962 d!1503941))

(declare-fun d!1503943 () Bool)

(declare-fun res!1998246 () Bool)

(declare-fun e!2945597 () Bool)

(assert (=> d!1503943 (=> res!1998246 e!2945597)))

(assert (=> d!1503943 (= res!1998246 ((_ is Nil!52830) (ite c!806570 (toList!5917 lt!1887727) (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(assert (=> d!1503943 (= (forall!11590 (ite c!806570 (toList!5917 lt!1887727) (_2!30520 (h!59178 (toList!5918 lm!2023)))) (ite c!806570 lambda!215638 lambda!215640)) e!2945597)))

(declare-fun b!4723024 () Bool)

(declare-fun e!2945598 () Bool)

(assert (=> b!4723024 (= e!2945597 e!2945598)))

(declare-fun res!1998247 () Bool)

(assert (=> b!4723024 (=> (not res!1998247) (not e!2945598))))

(assert (=> b!4723024 (= res!1998247 (dynLambda!21821 (ite c!806570 lambda!215638 lambda!215640) (h!59177 (ite c!806570 (toList!5917 lt!1887727) (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(declare-fun b!4723025 () Bool)

(assert (=> b!4723025 (= e!2945598 (forall!11590 (t!360220 (ite c!806570 (toList!5917 lt!1887727) (_2!30520 (h!59178 (toList!5918 lm!2023))))) (ite c!806570 lambda!215638 lambda!215640)))))

(assert (= (and d!1503943 (not res!1998246)) b!4723024))

(assert (= (and b!4723024 res!1998247) b!4723025))

(declare-fun b_lambda!178761 () Bool)

(assert (=> (not b_lambda!178761) (not b!4723024)))

(declare-fun m!5659143 () Bool)

(assert (=> b!4723024 m!5659143))

(declare-fun m!5659145 () Bool)

(assert (=> b!4723025 m!5659145))

(assert (=> bm!330325 d!1503943))

(declare-fun d!1503945 () Bool)

(declare-fun res!1998248 () Bool)

(declare-fun e!2945599 () Bool)

(assert (=> d!1503945 (=> res!1998248 e!2945599)))

(assert (=> d!1503945 (= res!1998248 ((_ is Nil!52830) (toList!5917 lt!1887727)))))

(assert (=> d!1503945 (= (forall!11590 (toList!5917 lt!1887727) lambda!215660) e!2945599)))

(declare-fun b!4723026 () Bool)

(declare-fun e!2945600 () Bool)

(assert (=> b!4723026 (= e!2945599 e!2945600)))

(declare-fun res!1998249 () Bool)

(assert (=> b!4723026 (=> (not res!1998249) (not e!2945600))))

(assert (=> b!4723026 (= res!1998249 (dynLambda!21821 lambda!215660 (h!59177 (toList!5917 lt!1887727))))))

(declare-fun b!4723027 () Bool)

(assert (=> b!4723027 (= e!2945600 (forall!11590 (t!360220 (toList!5917 lt!1887727)) lambda!215660))))

(assert (= (and d!1503945 (not res!1998248)) b!4723026))

(assert (= (and b!4723026 res!1998249) b!4723027))

(declare-fun b_lambda!178763 () Bool)

(assert (=> (not b_lambda!178763) (not b!4723026)))

(declare-fun m!5659147 () Bool)

(assert (=> b!4723026 m!5659147))

(declare-fun m!5659149 () Bool)

(assert (=> b!4723027 m!5659149))

(assert (=> b!4722948 d!1503945))

(declare-fun c!806600 () Bool)

(declare-fun d!1503947 () Bool)

(assert (=> d!1503947 (= c!806600 ((_ is Nil!52830) (toList!5917 (addToMapMapFromBucket!1444 (Cons!52830 lt!1887722 lt!1887720) lt!1887727))))))

(declare-fun e!2945603 () (InoxSet tuple2!54450))

(assert (=> d!1503947 (= (content!9395 (toList!5917 (addToMapMapFromBucket!1444 (Cons!52830 lt!1887722 lt!1887720) lt!1887727))) e!2945603)))

(declare-fun b!4723032 () Bool)

(assert (=> b!4723032 (= e!2945603 ((as const (Array tuple2!54450 Bool)) false))))

(declare-fun b!4723033 () Bool)

(assert (=> b!4723033 (= e!2945603 ((_ map or) (store ((as const (Array tuple2!54450 Bool)) false) (h!59177 (toList!5917 (addToMapMapFromBucket!1444 (Cons!52830 lt!1887722 lt!1887720) lt!1887727))) true) (content!9395 (t!360220 (toList!5917 (addToMapMapFromBucket!1444 (Cons!52830 lt!1887722 lt!1887720) lt!1887727))))))))

(assert (= (and d!1503947 c!806600) b!4723032))

(assert (= (and d!1503947 (not c!806600)) b!4723033))

(declare-fun m!5659151 () Bool)

(assert (=> b!4723033 m!5659151))

(declare-fun m!5659153 () Bool)

(assert (=> b!4723033 m!5659153))

(assert (=> d!1503901 d!1503947))

(declare-fun d!1503949 () Bool)

(declare-fun c!806601 () Bool)

(assert (=> d!1503949 (= c!806601 ((_ is Nil!52830) (toList!5917 (+!2269 lt!1887723 lt!1887722))))))

(declare-fun e!2945604 () (InoxSet tuple2!54450))

(assert (=> d!1503949 (= (content!9395 (toList!5917 (+!2269 lt!1887723 lt!1887722))) e!2945604)))

(declare-fun b!4723034 () Bool)

(assert (=> b!4723034 (= e!2945604 ((as const (Array tuple2!54450 Bool)) false))))

(declare-fun b!4723035 () Bool)

(assert (=> b!4723035 (= e!2945604 ((_ map or) (store ((as const (Array tuple2!54450 Bool)) false) (h!59177 (toList!5917 (+!2269 lt!1887723 lt!1887722))) true) (content!9395 (t!360220 (toList!5917 (+!2269 lt!1887723 lt!1887722))))))))

(assert (= (and d!1503949 c!806601) b!4723034))

(assert (= (and d!1503949 (not c!806601)) b!4723035))

(declare-fun m!5659155 () Bool)

(assert (=> b!4723035 m!5659155))

(declare-fun m!5659157 () Bool)

(assert (=> b!4723035 m!5659157))

(assert (=> d!1503901 d!1503949))

(declare-fun d!1503951 () Bool)

(declare-fun c!806606 () Bool)

(assert (=> d!1503951 (= c!806606 (and ((_ is Cons!52830) (toList!5917 lt!1888124)) (= (_1!30519 (h!59177 (toList!5917 lt!1888124))) (_1!30519 (h!59177 oldBucket!34)))))))

(declare-fun e!2945609 () Option!12361)

(assert (=> d!1503951 (= (getValueByKey!1957 (toList!5917 lt!1888124) (_1!30519 (h!59177 oldBucket!34))) e!2945609)))

(declare-fun b!4723046 () Bool)

(declare-fun e!2945610 () Option!12361)

(assert (=> b!4723046 (= e!2945610 (getValueByKey!1957 (t!360220 (toList!5917 lt!1888124)) (_1!30519 (h!59177 oldBucket!34))))))

(declare-fun b!4723045 () Bool)

(assert (=> b!4723045 (= e!2945609 e!2945610)))

(declare-fun c!806607 () Bool)

(assert (=> b!4723045 (= c!806607 (and ((_ is Cons!52830) (toList!5917 lt!1888124)) (not (= (_1!30519 (h!59177 (toList!5917 lt!1888124))) (_1!30519 (h!59177 oldBucket!34))))))))

(declare-fun b!4723047 () Bool)

(assert (=> b!4723047 (= e!2945610 None!12360)))

(declare-fun b!4723044 () Bool)

(assert (=> b!4723044 (= e!2945609 (Some!12360 (_2!30519 (h!59177 (toList!5917 lt!1888124)))))))

(assert (= (and d!1503951 c!806606) b!4723044))

(assert (= (and d!1503951 (not c!806606)) b!4723045))

(assert (= (and b!4723045 c!806607) b!4723046))

(assert (= (and b!4723045 (not c!806607)) b!4723047))

(declare-fun m!5659159 () Bool)

(assert (=> b!4723046 m!5659159))

(assert (=> b!4722974 d!1503951))

(declare-fun d!1503953 () Bool)

(declare-fun res!1998250 () Bool)

(declare-fun e!2945611 () Bool)

(assert (=> d!1503953 (=> res!1998250 e!2945611)))

(assert (=> d!1503953 (= res!1998250 ((_ is Nil!52830) (ite c!806594 (toList!5917 lt!1887727) newBucket!218)))))

(assert (=> d!1503953 (= (forall!11590 (ite c!806594 (toList!5917 lt!1887727) newBucket!218) (ite c!806594 lambda!215658 lambda!215660)) e!2945611)))

(declare-fun b!4723048 () Bool)

(declare-fun e!2945612 () Bool)

(assert (=> b!4723048 (= e!2945611 e!2945612)))

(declare-fun res!1998251 () Bool)

(assert (=> b!4723048 (=> (not res!1998251) (not e!2945612))))

(assert (=> b!4723048 (= res!1998251 (dynLambda!21821 (ite c!806594 lambda!215658 lambda!215660) (h!59177 (ite c!806594 (toList!5917 lt!1887727) newBucket!218))))))

(declare-fun b!4723049 () Bool)

(assert (=> b!4723049 (= e!2945612 (forall!11590 (t!360220 (ite c!806594 (toList!5917 lt!1887727) newBucket!218)) (ite c!806594 lambda!215658 lambda!215660)))))

(assert (= (and d!1503953 (not res!1998250)) b!4723048))

(assert (= (and b!4723048 res!1998251) b!4723049))

(declare-fun b_lambda!178765 () Bool)

(assert (=> (not b_lambda!178765) (not b!4723048)))

(declare-fun m!5659161 () Bool)

(assert (=> b!4723048 m!5659161))

(declare-fun m!5659163 () Bool)

(assert (=> b!4723049 m!5659163))

(assert (=> bm!330337 d!1503953))

(declare-fun d!1503955 () Bool)

(assert (=> d!1503955 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1887721) key!4653))))

(declare-fun lt!1888155 () Unit!130119)

(declare-fun choose!33323 (List!52954 K!14185) Unit!130119)

(assert (=> d!1503955 (= lt!1888155 (choose!33323 (toList!5917 lt!1887721) key!4653))))

(assert (=> d!1503955 (invariantList!1511 (toList!5917 lt!1887721))))

(assert (=> d!1503955 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1848 (toList!5917 lt!1887721) key!4653) lt!1888155)))

(declare-fun bs!1112481 () Bool)

(assert (= bs!1112481 d!1503955))

(assert (=> bs!1112481 m!5658881))

(assert (=> bs!1112481 m!5658881))

(assert (=> bs!1112481 m!5658883))

(declare-fun m!5659165 () Bool)

(assert (=> bs!1112481 m!5659165))

(declare-fun m!5659167 () Bool)

(assert (=> bs!1112481 m!5659167))

(assert (=> b!4722920 d!1503955))

(declare-fun d!1503957 () Bool)

(declare-fun isEmpty!29174 (Option!12361) Bool)

(assert (=> d!1503957 (= (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1887721) key!4653)) (not (isEmpty!29174 (getValueByKey!1957 (toList!5917 lt!1887721) key!4653))))))

(declare-fun bs!1112482 () Bool)

(assert (= bs!1112482 d!1503957))

(assert (=> bs!1112482 m!5658881))

(declare-fun m!5659169 () Bool)

(assert (=> bs!1112482 m!5659169))

(assert (=> b!4722920 d!1503957))

(declare-fun d!1503959 () Bool)

(declare-fun c!806608 () Bool)

(assert (=> d!1503959 (= c!806608 (and ((_ is Cons!52830) (toList!5917 lt!1887721)) (= (_1!30519 (h!59177 (toList!5917 lt!1887721))) key!4653)))))

(declare-fun e!2945613 () Option!12361)

(assert (=> d!1503959 (= (getValueByKey!1957 (toList!5917 lt!1887721) key!4653) e!2945613)))

(declare-fun b!4723052 () Bool)

(declare-fun e!2945614 () Option!12361)

(assert (=> b!4723052 (= e!2945614 (getValueByKey!1957 (t!360220 (toList!5917 lt!1887721)) key!4653))))

(declare-fun b!4723051 () Bool)

(assert (=> b!4723051 (= e!2945613 e!2945614)))

(declare-fun c!806609 () Bool)

(assert (=> b!4723051 (= c!806609 (and ((_ is Cons!52830) (toList!5917 lt!1887721)) (not (= (_1!30519 (h!59177 (toList!5917 lt!1887721))) key!4653))))))

(declare-fun b!4723053 () Bool)

(assert (=> b!4723053 (= e!2945614 None!12360)))

(declare-fun b!4723050 () Bool)

(assert (=> b!4723050 (= e!2945613 (Some!12360 (_2!30519 (h!59177 (toList!5917 lt!1887721)))))))

(assert (= (and d!1503959 c!806608) b!4723050))

(assert (= (and d!1503959 (not c!806608)) b!4723051))

(assert (= (and b!4723051 c!806609) b!4723052))

(assert (= (and b!4723051 (not c!806609)) b!4723053))

(declare-fun m!5659171 () Bool)

(assert (=> b!4723052 m!5659171))

(assert (=> b!4722920 d!1503959))

(declare-fun d!1503961 () Bool)

(assert (=> d!1503961 (contains!16179 (getKeysList!951 (toList!5917 lt!1887721)) key!4653)))

(declare-fun lt!1888158 () Unit!130119)

(declare-fun choose!33324 (List!52954 K!14185) Unit!130119)

(assert (=> d!1503961 (= lt!1888158 (choose!33324 (toList!5917 lt!1887721) key!4653))))

(assert (=> d!1503961 (invariantList!1511 (toList!5917 lt!1887721))))

(assert (=> d!1503961 (= (lemmaInListThenGetKeysListContains!946 (toList!5917 lt!1887721) key!4653) lt!1888158)))

(declare-fun bs!1112483 () Bool)

(assert (= bs!1112483 d!1503961))

(assert (=> bs!1112483 m!5658893))

(assert (=> bs!1112483 m!5658893))

(declare-fun m!5659173 () Bool)

(assert (=> bs!1112483 m!5659173))

(declare-fun m!5659175 () Bool)

(assert (=> bs!1112483 m!5659175))

(assert (=> bs!1112483 m!5659167))

(assert (=> b!4722920 d!1503961))

(declare-fun bs!1112484 () Bool)

(declare-fun b!4723056 () Bool)

(assert (= bs!1112484 (and b!4723056 b!4722969)))

(declare-fun lambda!215675 () Int)

(assert (=> bs!1112484 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1888110) (= lambda!215675 lambda!215668))))

(declare-fun bs!1112485 () Bool)

(assert (= bs!1112485 (and b!4723056 b!4722954)))

(assert (=> bs!1112485 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887727) (= lambda!215675 lambda!215662))))

(declare-fun bs!1112486 () Bool)

(assert (= bs!1112486 (and b!4723056 b!4722952)))

(assert (=> bs!1112486 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887727) (= lambda!215675 lambda!215663))))

(declare-fun bs!1112487 () Bool)

(assert (= bs!1112487 (and b!4723056 d!1503873)))

(assert (=> bs!1112487 (not (= lambda!215675 lambda!215656))))

(declare-fun bs!1112488 () Bool)

(assert (= bs!1112488 (and b!4723056 b!4722976)))

(assert (=> bs!1112488 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1888135) (= lambda!215675 lambda!215672))))

(assert (=> bs!1112484 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887727) (= lambda!215675 lambda!215667))))

(declare-fun bs!1112489 () Bool)

(assert (= bs!1112489 (and b!4723056 d!1503907)))

(assert (=> bs!1112489 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1888136) (= lambda!215675 lambda!215673))))

(declare-fun bs!1112490 () Bool)

(assert (= bs!1112490 (and b!4723056 b!4722971)))

(assert (=> bs!1112490 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887727) (= lambda!215675 lambda!215666))))

(declare-fun bs!1112491 () Bool)

(assert (= bs!1112491 (and b!4723056 b!4722847)))

(assert (=> bs!1112491 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887727) (= lambda!215675 lambda!215638))))

(declare-fun bs!1112492 () Bool)

(assert (= bs!1112492 (and b!4723056 d!1503899)))

(assert (=> bs!1112492 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1888111) (= lambda!215675 lambda!215669))))

(declare-fun bs!1112493 () Bool)

(assert (= bs!1112493 (and b!4723056 d!1503889)))

(assert (=> bs!1112493 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1888078) (= lambda!215675 lambda!215665))))

(declare-fun bs!1112494 () Bool)

(assert (= bs!1112494 (and b!4723056 b!4722949)))

(assert (=> bs!1112494 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887727) (= lambda!215675 lambda!215658))))

(declare-fun bs!1112495 () Bool)

(assert (= bs!1112495 (and b!4723056 b!4722845)))

(assert (=> bs!1112495 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887947) (= lambda!215675 lambda!215640))))

(declare-fun bs!1112496 () Bool)

(assert (= bs!1112496 (and b!4723056 d!1503887)))

(assert (=> bs!1112496 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1888057) (= lambda!215675 lambda!215661))))

(declare-fun bs!1112497 () Bool)

(assert (= bs!1112497 (and b!4723056 b!4722978)))

(assert (=> bs!1112497 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887727) (= lambda!215675 lambda!215670))))

(declare-fun bs!1112498 () Bool)

(assert (= bs!1112498 (and b!4723056 d!1503799)))

(assert (=> bs!1112498 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887948) (= lambda!215675 lambda!215641))))

(declare-fun bs!1112499 () Bool)

(assert (= bs!1112499 (and b!4723056 b!4722947)))

(assert (=> bs!1112499 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1888056) (= lambda!215675 lambda!215660))))

(declare-fun bs!1112500 () Bool)

(assert (= bs!1112500 (and b!4723056 d!1503911)))

(assert (=> bs!1112500 (not (= lambda!215675 lambda!215674))))

(assert (=> bs!1112495 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887727) (= lambda!215675 lambda!215639))))

(assert (=> bs!1112488 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887727) (= lambda!215675 lambda!215671))))

(assert (=> bs!1112499 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887727) (= lambda!215675 lambda!215659))))

(assert (=> bs!1112486 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1888077) (= lambda!215675 lambda!215664))))

(assert (=> b!4723056 true))

(declare-fun bs!1112501 () Bool)

(declare-fun b!4723054 () Bool)

(assert (= bs!1112501 (and b!4723054 b!4722969)))

(declare-fun lambda!215676 () Int)

(assert (=> bs!1112501 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1888110) (= lambda!215676 lambda!215668))))

(declare-fun bs!1112502 () Bool)

(assert (= bs!1112502 (and b!4723054 b!4722954)))

(assert (=> bs!1112502 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887727) (= lambda!215676 lambda!215662))))

(declare-fun bs!1112503 () Bool)

(assert (= bs!1112503 (and b!4723054 d!1503873)))

(assert (=> bs!1112503 (not (= lambda!215676 lambda!215656))))

(declare-fun bs!1112504 () Bool)

(assert (= bs!1112504 (and b!4723054 b!4722976)))

(assert (=> bs!1112504 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1888135) (= lambda!215676 lambda!215672))))

(assert (=> bs!1112501 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887727) (= lambda!215676 lambda!215667))))

(declare-fun bs!1112505 () Bool)

(assert (= bs!1112505 (and b!4723054 d!1503907)))

(assert (=> bs!1112505 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1888136) (= lambda!215676 lambda!215673))))

(declare-fun bs!1112506 () Bool)

(assert (= bs!1112506 (and b!4723054 b!4722971)))

(assert (=> bs!1112506 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887727) (= lambda!215676 lambda!215666))))

(declare-fun bs!1112507 () Bool)

(assert (= bs!1112507 (and b!4723054 b!4722847)))

(assert (=> bs!1112507 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887727) (= lambda!215676 lambda!215638))))

(declare-fun bs!1112508 () Bool)

(assert (= bs!1112508 (and b!4723054 d!1503899)))

(assert (=> bs!1112508 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1888111) (= lambda!215676 lambda!215669))))

(declare-fun bs!1112509 () Bool)

(assert (= bs!1112509 (and b!4723054 d!1503889)))

(assert (=> bs!1112509 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1888078) (= lambda!215676 lambda!215665))))

(declare-fun bs!1112510 () Bool)

(assert (= bs!1112510 (and b!4723054 b!4722949)))

(assert (=> bs!1112510 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887727) (= lambda!215676 lambda!215658))))

(declare-fun bs!1112511 () Bool)

(assert (= bs!1112511 (and b!4723054 b!4722845)))

(assert (=> bs!1112511 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887947) (= lambda!215676 lambda!215640))))

(declare-fun bs!1112512 () Bool)

(assert (= bs!1112512 (and b!4723054 d!1503887)))

(assert (=> bs!1112512 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1888057) (= lambda!215676 lambda!215661))))

(declare-fun bs!1112513 () Bool)

(assert (= bs!1112513 (and b!4723054 b!4722952)))

(assert (=> bs!1112513 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887727) (= lambda!215676 lambda!215663))))

(declare-fun bs!1112514 () Bool)

(assert (= bs!1112514 (and b!4723054 b!4723056)))

(assert (=> bs!1112514 (= lambda!215676 lambda!215675)))

(declare-fun bs!1112515 () Bool)

(assert (= bs!1112515 (and b!4723054 b!4722978)))

(assert (=> bs!1112515 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887727) (= lambda!215676 lambda!215670))))

(declare-fun bs!1112516 () Bool)

(assert (= bs!1112516 (and b!4723054 d!1503799)))

(assert (=> bs!1112516 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887948) (= lambda!215676 lambda!215641))))

(declare-fun bs!1112517 () Bool)

(assert (= bs!1112517 (and b!4723054 b!4722947)))

(assert (=> bs!1112517 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1888056) (= lambda!215676 lambda!215660))))

(declare-fun bs!1112518 () Bool)

(assert (= bs!1112518 (and b!4723054 d!1503911)))

(assert (=> bs!1112518 (not (= lambda!215676 lambda!215674))))

(assert (=> bs!1112511 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887727) (= lambda!215676 lambda!215639))))

(assert (=> bs!1112504 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887727) (= lambda!215676 lambda!215671))))

(assert (=> bs!1112517 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1887727) (= lambda!215676 lambda!215659))))

(assert (=> bs!1112513 (= (= (extractMap!2040 (t!360221 lt!1887719)) lt!1888077) (= lambda!215676 lambda!215664))))

(assert (=> b!4723054 true))

(declare-fun lambda!215677 () Int)

(declare-fun lt!1888168 () ListMap!5281)

(assert (=> bs!1112501 (= (= lt!1888168 lt!1888110) (= lambda!215677 lambda!215668))))

(assert (=> bs!1112502 (= (= lt!1888168 lt!1887727) (= lambda!215677 lambda!215662))))

(assert (=> bs!1112503 (not (= lambda!215677 lambda!215656))))

(assert (=> bs!1112504 (= (= lt!1888168 lt!1888135) (= lambda!215677 lambda!215672))))

(assert (=> bs!1112501 (= (= lt!1888168 lt!1887727) (= lambda!215677 lambda!215667))))

(assert (=> bs!1112505 (= (= lt!1888168 lt!1888136) (= lambda!215677 lambda!215673))))

(assert (=> b!4723054 (= (= lt!1888168 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215677 lambda!215676))))

(assert (=> bs!1112506 (= (= lt!1888168 lt!1887727) (= lambda!215677 lambda!215666))))

(assert (=> bs!1112507 (= (= lt!1888168 lt!1887727) (= lambda!215677 lambda!215638))))

(assert (=> bs!1112508 (= (= lt!1888168 lt!1888111) (= lambda!215677 lambda!215669))))

(assert (=> bs!1112509 (= (= lt!1888168 lt!1888078) (= lambda!215677 lambda!215665))))

(assert (=> bs!1112510 (= (= lt!1888168 lt!1887727) (= lambda!215677 lambda!215658))))

(assert (=> bs!1112511 (= (= lt!1888168 lt!1887947) (= lambda!215677 lambda!215640))))

(assert (=> bs!1112512 (= (= lt!1888168 lt!1888057) (= lambda!215677 lambda!215661))))

(assert (=> bs!1112513 (= (= lt!1888168 lt!1887727) (= lambda!215677 lambda!215663))))

(assert (=> bs!1112514 (= (= lt!1888168 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215677 lambda!215675))))

(assert (=> bs!1112515 (= (= lt!1888168 lt!1887727) (= lambda!215677 lambda!215670))))

(assert (=> bs!1112516 (= (= lt!1888168 lt!1887948) (= lambda!215677 lambda!215641))))

(assert (=> bs!1112517 (= (= lt!1888168 lt!1888056) (= lambda!215677 lambda!215660))))

(assert (=> bs!1112518 (not (= lambda!215677 lambda!215674))))

(assert (=> bs!1112511 (= (= lt!1888168 lt!1887727) (= lambda!215677 lambda!215639))))

(assert (=> bs!1112504 (= (= lt!1888168 lt!1887727) (= lambda!215677 lambda!215671))))

(assert (=> bs!1112517 (= (= lt!1888168 lt!1887727) (= lambda!215677 lambda!215659))))

(assert (=> bs!1112513 (= (= lt!1888168 lt!1888077) (= lambda!215677 lambda!215664))))

(assert (=> b!4723054 true))

(declare-fun bs!1112519 () Bool)

(declare-fun d!1503963 () Bool)

(assert (= bs!1112519 (and d!1503963 b!4722954)))

(declare-fun lt!1888169 () ListMap!5281)

(declare-fun lambda!215678 () Int)

(assert (=> bs!1112519 (= (= lt!1888169 lt!1887727) (= lambda!215678 lambda!215662))))

(declare-fun bs!1112520 () Bool)

(assert (= bs!1112520 (and d!1503963 d!1503873)))

(assert (=> bs!1112520 (not (= lambda!215678 lambda!215656))))

(declare-fun bs!1112521 () Bool)

(assert (= bs!1112521 (and d!1503963 b!4722976)))

(assert (=> bs!1112521 (= (= lt!1888169 lt!1888135) (= lambda!215678 lambda!215672))))

(declare-fun bs!1112522 () Bool)

(assert (= bs!1112522 (and d!1503963 b!4722969)))

(assert (=> bs!1112522 (= (= lt!1888169 lt!1887727) (= lambda!215678 lambda!215667))))

(declare-fun bs!1112523 () Bool)

(assert (= bs!1112523 (and d!1503963 d!1503907)))

(assert (=> bs!1112523 (= (= lt!1888169 lt!1888136) (= lambda!215678 lambda!215673))))

(declare-fun bs!1112524 () Bool)

(assert (= bs!1112524 (and d!1503963 b!4723054)))

(assert (=> bs!1112524 (= (= lt!1888169 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215678 lambda!215676))))

(declare-fun bs!1112525 () Bool)

(assert (= bs!1112525 (and d!1503963 b!4722971)))

(assert (=> bs!1112525 (= (= lt!1888169 lt!1887727) (= lambda!215678 lambda!215666))))

(declare-fun bs!1112526 () Bool)

(assert (= bs!1112526 (and d!1503963 b!4722847)))

(assert (=> bs!1112526 (= (= lt!1888169 lt!1887727) (= lambda!215678 lambda!215638))))

(declare-fun bs!1112527 () Bool)

(assert (= bs!1112527 (and d!1503963 d!1503899)))

(assert (=> bs!1112527 (= (= lt!1888169 lt!1888111) (= lambda!215678 lambda!215669))))

(declare-fun bs!1112528 () Bool)

(assert (= bs!1112528 (and d!1503963 d!1503889)))

(assert (=> bs!1112528 (= (= lt!1888169 lt!1888078) (= lambda!215678 lambda!215665))))

(declare-fun bs!1112529 () Bool)

(assert (= bs!1112529 (and d!1503963 b!4722949)))

(assert (=> bs!1112529 (= (= lt!1888169 lt!1887727) (= lambda!215678 lambda!215658))))

(declare-fun bs!1112530 () Bool)

(assert (= bs!1112530 (and d!1503963 b!4722845)))

(assert (=> bs!1112530 (= (= lt!1888169 lt!1887947) (= lambda!215678 lambda!215640))))

(declare-fun bs!1112531 () Bool)

(assert (= bs!1112531 (and d!1503963 d!1503887)))

(assert (=> bs!1112531 (= (= lt!1888169 lt!1888057) (= lambda!215678 lambda!215661))))

(assert (=> bs!1112522 (= (= lt!1888169 lt!1888110) (= lambda!215678 lambda!215668))))

(assert (=> bs!1112524 (= (= lt!1888169 lt!1888168) (= lambda!215678 lambda!215677))))

(declare-fun bs!1112532 () Bool)

(assert (= bs!1112532 (and d!1503963 b!4722952)))

(assert (=> bs!1112532 (= (= lt!1888169 lt!1887727) (= lambda!215678 lambda!215663))))

(declare-fun bs!1112533 () Bool)

(assert (= bs!1112533 (and d!1503963 b!4723056)))

(assert (=> bs!1112533 (= (= lt!1888169 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215678 lambda!215675))))

(declare-fun bs!1112534 () Bool)

(assert (= bs!1112534 (and d!1503963 b!4722978)))

(assert (=> bs!1112534 (= (= lt!1888169 lt!1887727) (= lambda!215678 lambda!215670))))

(declare-fun bs!1112535 () Bool)

(assert (= bs!1112535 (and d!1503963 d!1503799)))

(assert (=> bs!1112535 (= (= lt!1888169 lt!1887948) (= lambda!215678 lambda!215641))))

(declare-fun bs!1112536 () Bool)

(assert (= bs!1112536 (and d!1503963 b!4722947)))

(assert (=> bs!1112536 (= (= lt!1888169 lt!1888056) (= lambda!215678 lambda!215660))))

(declare-fun bs!1112538 () Bool)

(assert (= bs!1112538 (and d!1503963 d!1503911)))

(assert (=> bs!1112538 (not (= lambda!215678 lambda!215674))))

(assert (=> bs!1112530 (= (= lt!1888169 lt!1887727) (= lambda!215678 lambda!215639))))

(assert (=> bs!1112521 (= (= lt!1888169 lt!1887727) (= lambda!215678 lambda!215671))))

(assert (=> bs!1112536 (= (= lt!1888169 lt!1887727) (= lambda!215678 lambda!215659))))

(assert (=> bs!1112532 (= (= lt!1888169 lt!1888077) (= lambda!215678 lambda!215664))))

(assert (=> d!1503963 true))

(declare-fun c!806610 () Bool)

(declare-fun bm!330349 () Bool)

(declare-fun call!330355 () Bool)

(assert (=> bm!330349 (= call!330355 (forall!11590 (ite c!806610 (toList!5917 (extractMap!2040 (t!360221 lt!1887719))) (_2!30520 (h!59178 lt!1887719))) (ite c!806610 lambda!215675 lambda!215677)))))

(declare-fun e!2945615 () ListMap!5281)

(assert (=> b!4723054 (= e!2945615 lt!1888168)))

(declare-fun lt!1888163 () ListMap!5281)

(assert (=> b!4723054 (= lt!1888163 (+!2269 (extractMap!2040 (t!360221 lt!1887719)) (h!59177 (_2!30520 (h!59178 lt!1887719)))))))

(assert (=> b!4723054 (= lt!1888168 (addToMapMapFromBucket!1444 (t!360220 (_2!30520 (h!59178 lt!1887719))) (+!2269 (extractMap!2040 (t!360221 lt!1887719)) (h!59177 (_2!30520 (h!59178 lt!1887719))))))))

(declare-fun lt!1888178 () Unit!130119)

(declare-fun call!330356 () Unit!130119)

(assert (=> b!4723054 (= lt!1888178 call!330356)))

(assert (=> b!4723054 (forall!11590 (toList!5917 (extractMap!2040 (t!360221 lt!1887719))) lambda!215676)))

(declare-fun lt!1888166 () Unit!130119)

(assert (=> b!4723054 (= lt!1888166 lt!1888178)))

(assert (=> b!4723054 (forall!11590 (toList!5917 lt!1888163) lambda!215677)))

(declare-fun lt!1888164 () Unit!130119)

(declare-fun Unit!130237 () Unit!130119)

(assert (=> b!4723054 (= lt!1888164 Unit!130237)))

(assert (=> b!4723054 (forall!11590 (t!360220 (_2!30520 (h!59178 lt!1887719))) lambda!215677)))

(declare-fun lt!1888162 () Unit!130119)

(declare-fun Unit!130238 () Unit!130119)

(assert (=> b!4723054 (= lt!1888162 Unit!130238)))

(declare-fun lt!1888173 () Unit!130119)

(declare-fun Unit!130239 () Unit!130119)

(assert (=> b!4723054 (= lt!1888173 Unit!130239)))

(declare-fun lt!1888176 () Unit!130119)

(assert (=> b!4723054 (= lt!1888176 (forallContained!3639 (toList!5917 lt!1888163) lambda!215677 (h!59177 (_2!30520 (h!59178 lt!1887719)))))))

(assert (=> b!4723054 (contains!16175 lt!1888163 (_1!30519 (h!59177 (_2!30520 (h!59178 lt!1887719)))))))

(declare-fun lt!1888179 () Unit!130119)

(declare-fun Unit!130240 () Unit!130119)

(assert (=> b!4723054 (= lt!1888179 Unit!130240)))

(assert (=> b!4723054 (contains!16175 lt!1888168 (_1!30519 (h!59177 (_2!30520 (h!59178 lt!1887719)))))))

(declare-fun lt!1888172 () Unit!130119)

(declare-fun Unit!130241 () Unit!130119)

(assert (=> b!4723054 (= lt!1888172 Unit!130241)))

(assert (=> b!4723054 call!330355))

(declare-fun lt!1888160 () Unit!130119)

(declare-fun Unit!130242 () Unit!130119)

(assert (=> b!4723054 (= lt!1888160 Unit!130242)))

(assert (=> b!4723054 (forall!11590 (toList!5917 lt!1888163) lambda!215677)))

(declare-fun lt!1888159 () Unit!130119)

(declare-fun Unit!130243 () Unit!130119)

(assert (=> b!4723054 (= lt!1888159 Unit!130243)))

(declare-fun lt!1888170 () Unit!130119)

(declare-fun Unit!130244 () Unit!130119)

(assert (=> b!4723054 (= lt!1888170 Unit!130244)))

(declare-fun lt!1888161 () Unit!130119)

(assert (=> b!4723054 (= lt!1888161 (addForallContainsKeyThenBeforeAdding!796 (extractMap!2040 (t!360221 lt!1887719)) lt!1888168 (_1!30519 (h!59177 (_2!30520 (h!59178 lt!1887719)))) (_2!30519 (h!59177 (_2!30520 (h!59178 lt!1887719))))))))

(assert (=> b!4723054 (forall!11590 (toList!5917 (extractMap!2040 (t!360221 lt!1887719))) lambda!215677)))

(declare-fun lt!1888174 () Unit!130119)

(assert (=> b!4723054 (= lt!1888174 lt!1888161)))

(declare-fun call!330354 () Bool)

(assert (=> b!4723054 call!330354))

(declare-fun lt!1888165 () Unit!130119)

(declare-fun Unit!130245 () Unit!130119)

(assert (=> b!4723054 (= lt!1888165 Unit!130245)))

(declare-fun res!1998252 () Bool)

(assert (=> b!4723054 (= res!1998252 (forall!11590 (_2!30520 (h!59178 lt!1887719)) lambda!215677))))

(declare-fun e!2945617 () Bool)

(assert (=> b!4723054 (=> (not res!1998252) (not e!2945617))))

(assert (=> b!4723054 e!2945617))

(declare-fun lt!1888171 () Unit!130119)

(declare-fun Unit!130246 () Unit!130119)

(assert (=> b!4723054 (= lt!1888171 Unit!130246)))

(declare-fun e!2945616 () Bool)

(assert (=> d!1503963 e!2945616))

(declare-fun res!1998254 () Bool)

(assert (=> d!1503963 (=> (not res!1998254) (not e!2945616))))

(assert (=> d!1503963 (= res!1998254 (forall!11590 (_2!30520 (h!59178 lt!1887719)) lambda!215678))))

(assert (=> d!1503963 (= lt!1888169 e!2945615)))

(assert (=> d!1503963 (= c!806610 ((_ is Nil!52830) (_2!30520 (h!59178 lt!1887719))))))

(assert (=> d!1503963 (noDuplicateKeys!2014 (_2!30520 (h!59178 lt!1887719)))))

(assert (=> d!1503963 (= (addToMapMapFromBucket!1444 (_2!30520 (h!59178 lt!1887719)) (extractMap!2040 (t!360221 lt!1887719))) lt!1888169)))

(declare-fun b!4723055 () Bool)

(assert (=> b!4723055 (= e!2945617 (forall!11590 (toList!5917 (extractMap!2040 (t!360221 lt!1887719))) lambda!215677))))

(assert (=> b!4723056 (= e!2945615 (extractMap!2040 (t!360221 lt!1887719)))))

(declare-fun lt!1888167 () Unit!130119)

(assert (=> b!4723056 (= lt!1888167 call!330356)))

(assert (=> b!4723056 call!330355))

(declare-fun lt!1888177 () Unit!130119)

(assert (=> b!4723056 (= lt!1888177 lt!1888167)))

(assert (=> b!4723056 call!330354))

(declare-fun lt!1888175 () Unit!130119)

(declare-fun Unit!130247 () Unit!130119)

(assert (=> b!4723056 (= lt!1888175 Unit!130247)))

(declare-fun b!4723057 () Bool)

(assert (=> b!4723057 (= e!2945616 (invariantList!1511 (toList!5917 lt!1888169)))))

(declare-fun b!4723058 () Bool)

(declare-fun res!1998253 () Bool)

(assert (=> b!4723058 (=> (not res!1998253) (not e!2945616))))

(assert (=> b!4723058 (= res!1998253 (forall!11590 (toList!5917 (extractMap!2040 (t!360221 lt!1887719))) lambda!215678))))

(declare-fun bm!330350 () Bool)

(assert (=> bm!330350 (= call!330354 (forall!11590 (toList!5917 (extractMap!2040 (t!360221 lt!1887719))) (ite c!806610 lambda!215675 lambda!215677)))))

(declare-fun bm!330351 () Bool)

(assert (=> bm!330351 (= call!330356 (lemmaContainsAllItsOwnKeys!797 (extractMap!2040 (t!360221 lt!1887719))))))

(assert (= (and d!1503963 c!806610) b!4723056))

(assert (= (and d!1503963 (not c!806610)) b!4723054))

(assert (= (and b!4723054 res!1998252) b!4723055))

(assert (= (or b!4723056 b!4723054) bm!330351))

(assert (= (or b!4723056 b!4723054) bm!330350))

(assert (= (or b!4723056 b!4723054) bm!330349))

(assert (= (and d!1503963 res!1998254) b!4723058))

(assert (= (and b!4723058 res!1998253) b!4723057))

(declare-fun m!5659179 () Bool)

(assert (=> bm!330350 m!5659179))

(assert (=> bm!330351 m!5658547))

(declare-fun m!5659181 () Bool)

(assert (=> bm!330351 m!5659181))

(declare-fun m!5659183 () Bool)

(assert (=> b!4723057 m!5659183))

(declare-fun m!5659185 () Bool)

(assert (=> d!1503963 m!5659185))

(assert (=> d!1503963 m!5659103))

(declare-fun m!5659187 () Bool)

(assert (=> b!4723058 m!5659187))

(declare-fun m!5659189 () Bool)

(assert (=> bm!330349 m!5659189))

(declare-fun m!5659191 () Bool)

(assert (=> b!4723054 m!5659191))

(declare-fun m!5659193 () Bool)

(assert (=> b!4723054 m!5659193))

(declare-fun m!5659195 () Bool)

(assert (=> b!4723054 m!5659195))

(declare-fun m!5659197 () Bool)

(assert (=> b!4723054 m!5659197))

(assert (=> b!4723054 m!5658547))

(declare-fun m!5659199 () Bool)

(assert (=> b!4723054 m!5659199))

(declare-fun m!5659201 () Bool)

(assert (=> b!4723054 m!5659201))

(declare-fun m!5659203 () Bool)

(assert (=> b!4723054 m!5659203))

(declare-fun m!5659205 () Bool)

(assert (=> b!4723054 m!5659205))

(declare-fun m!5659207 () Bool)

(assert (=> b!4723054 m!5659207))

(assert (=> b!4723054 m!5659197))

(assert (=> b!4723054 m!5658547))

(assert (=> b!4723054 m!5659201))

(declare-fun m!5659209 () Bool)

(assert (=> b!4723054 m!5659209))

(declare-fun m!5659211 () Bool)

(assert (=> b!4723054 m!5659211))

(assert (=> b!4723055 m!5659193))

(assert (=> b!4722759 d!1503963))

(declare-fun bs!1112539 () Bool)

(declare-fun d!1503969 () Bool)

(assert (= bs!1112539 (and d!1503969 d!1503881)))

(declare-fun lambda!215679 () Int)

(assert (=> bs!1112539 (not (= lambda!215679 lambda!215657))))

(declare-fun bs!1112540 () Bool)

(assert (= bs!1112540 (and d!1503969 d!1503783)))

(assert (=> bs!1112540 (not (= lambda!215679 lambda!215553))))

(declare-fun bs!1112541 () Bool)

(assert (= bs!1112541 (and d!1503969 d!1503871)))

(assert (=> bs!1112541 (= lambda!215679 lambda!215653)))

(declare-fun bs!1112542 () Bool)

(assert (= bs!1112542 (and d!1503969 start!480732)))

(assert (=> bs!1112542 (= lambda!215679 lambda!215550)))

(declare-fun bs!1112543 () Bool)

(assert (= bs!1112543 (and d!1503969 d!1503843)))

(assert (=> bs!1112543 (= lambda!215679 lambda!215642)))

(declare-fun bs!1112544 () Bool)

(assert (= bs!1112544 (and d!1503969 d!1503797)))

(assert (=> bs!1112544 (= lambda!215679 lambda!215560)))

(declare-fun bs!1112545 () Bool)

(assert (= bs!1112545 (and d!1503969 d!1503791)))

(assert (=> bs!1112545 (= lambda!215679 lambda!215558)))

(declare-fun lt!1888180 () ListMap!5281)

(assert (=> d!1503969 (invariantList!1511 (toList!5917 lt!1888180))))

(declare-fun e!2945622 () ListMap!5281)

(assert (=> d!1503969 (= lt!1888180 e!2945622)))

(declare-fun c!806611 () Bool)

(assert (=> d!1503969 (= c!806611 ((_ is Cons!52831) (t!360221 lt!1887719)))))

(assert (=> d!1503969 (forall!11588 (t!360221 lt!1887719) lambda!215679)))

(assert (=> d!1503969 (= (extractMap!2040 (t!360221 lt!1887719)) lt!1888180)))

(declare-fun b!4723063 () Bool)

(assert (=> b!4723063 (= e!2945622 (addToMapMapFromBucket!1444 (_2!30520 (h!59178 (t!360221 lt!1887719))) (extractMap!2040 (t!360221 (t!360221 lt!1887719)))))))

(declare-fun b!4723064 () Bool)

(assert (=> b!4723064 (= e!2945622 (ListMap!5282 Nil!52830))))

(assert (= (and d!1503969 c!806611) b!4723063))

(assert (= (and d!1503969 (not c!806611)) b!4723064))

(declare-fun m!5659213 () Bool)

(assert (=> d!1503969 m!5659213))

(declare-fun m!5659215 () Bool)

(assert (=> d!1503969 m!5659215))

(declare-fun m!5659217 () Bool)

(assert (=> b!4723063 m!5659217))

(assert (=> b!4723063 m!5659217))

(declare-fun m!5659219 () Bool)

(assert (=> b!4723063 m!5659219))

(assert (=> b!4722759 d!1503969))

(declare-fun d!1503971 () Bool)

(declare-fun res!1998261 () Bool)

(declare-fun e!2945625 () Bool)

(assert (=> d!1503971 (=> res!1998261 e!2945625)))

(assert (=> d!1503971 (= res!1998261 ((_ is Nil!52830) newBucket!218))))

(assert (=> d!1503971 (= (forall!11590 newBucket!218 lambda!215656) e!2945625)))

(declare-fun b!4723067 () Bool)

(declare-fun e!2945626 () Bool)

(assert (=> b!4723067 (= e!2945625 e!2945626)))

(declare-fun res!1998262 () Bool)

(assert (=> b!4723067 (=> (not res!1998262) (not e!2945626))))

(assert (=> b!4723067 (= res!1998262 (dynLambda!21821 lambda!215656 (h!59177 newBucket!218)))))

(declare-fun b!4723068 () Bool)

(assert (=> b!4723068 (= e!2945626 (forall!11590 (t!360220 newBucket!218) lambda!215656))))

(assert (= (and d!1503971 (not res!1998261)) b!4723067))

(assert (= (and b!4723067 res!1998262) b!4723068))

(declare-fun b_lambda!178767 () Bool)

(assert (=> (not b_lambda!178767) (not b!4723067)))

(declare-fun m!5659221 () Bool)

(assert (=> b!4723067 m!5659221))

(declare-fun m!5659223 () Bool)

(assert (=> b!4723068 m!5659223))

(assert (=> d!1503873 d!1503971))

(declare-fun d!1503973 () Bool)

(declare-fun res!1998263 () Bool)

(declare-fun e!2945627 () Bool)

(assert (=> d!1503973 (=> res!1998263 e!2945627)))

(assert (=> d!1503973 (= res!1998263 (not ((_ is Cons!52830) (t!360220 newBucket!218))))))

(assert (=> d!1503973 (= (noDuplicateKeys!2014 (t!360220 newBucket!218)) e!2945627)))

(declare-fun b!4723069 () Bool)

(declare-fun e!2945628 () Bool)

(assert (=> b!4723069 (= e!2945627 e!2945628)))

(declare-fun res!1998264 () Bool)

(assert (=> b!4723069 (=> (not res!1998264) (not e!2945628))))

(assert (=> b!4723069 (= res!1998264 (not (containsKey!3369 (t!360220 (t!360220 newBucket!218)) (_1!30519 (h!59177 (t!360220 newBucket!218))))))))

(declare-fun b!4723070 () Bool)

(assert (=> b!4723070 (= e!2945628 (noDuplicateKeys!2014 (t!360220 (t!360220 newBucket!218))))))

(assert (= (and d!1503973 (not res!1998263)) b!4723069))

(assert (= (and b!4723069 res!1998264) b!4723070))

(declare-fun m!5659225 () Bool)

(assert (=> b!4723069 m!5659225))

(declare-fun m!5659227 () Bool)

(assert (=> b!4723070 m!5659227))

(assert (=> b!4722982 d!1503973))

(declare-fun d!1503975 () Bool)

(declare-fun lt!1888183 () Bool)

(declare-fun content!9396 (List!52957) (InoxSet K!14185))

(assert (=> d!1503975 (= lt!1888183 (select (content!9396 (keys!18974 lt!1887721)) key!4653))))

(declare-fun e!2945633 () Bool)

(assert (=> d!1503975 (= lt!1888183 e!2945633)))

(declare-fun res!1998270 () Bool)

(assert (=> d!1503975 (=> (not res!1998270) (not e!2945633))))

(assert (=> d!1503975 (= res!1998270 ((_ is Cons!52833) (keys!18974 lt!1887721)))))

(assert (=> d!1503975 (= (contains!16179 (keys!18974 lt!1887721) key!4653) lt!1888183)))

(declare-fun b!4723075 () Bool)

(declare-fun e!2945634 () Bool)

(assert (=> b!4723075 (= e!2945633 e!2945634)))

(declare-fun res!1998269 () Bool)

(assert (=> b!4723075 (=> res!1998269 e!2945634)))

(assert (=> b!4723075 (= res!1998269 (= (h!59182 (keys!18974 lt!1887721)) key!4653))))

(declare-fun b!4723076 () Bool)

(assert (=> b!4723076 (= e!2945634 (contains!16179 (t!360225 (keys!18974 lt!1887721)) key!4653))))

(assert (= (and d!1503975 res!1998270) b!4723075))

(assert (= (and b!4723075 (not res!1998269)) b!4723076))

(assert (=> d!1503975 m!5658891))

(declare-fun m!5659235 () Bool)

(assert (=> d!1503975 m!5659235))

(declare-fun m!5659237 () Bool)

(assert (=> d!1503975 m!5659237))

(declare-fun m!5659239 () Bool)

(assert (=> b!4723076 m!5659239))

(assert (=> b!4722919 d!1503975))

(declare-fun b!4723096 () Bool)

(assert (=> b!4723096 true))

(declare-fun d!1503981 () Bool)

(declare-fun e!2945645 () Bool)

(assert (=> d!1503981 e!2945645))

(declare-fun res!1998283 () Bool)

(assert (=> d!1503981 (=> (not res!1998283) (not e!2945645))))

(declare-fun lt!1888186 () List!52957)

(declare-fun noDuplicate!860 (List!52957) Bool)

(assert (=> d!1503981 (= res!1998283 (noDuplicate!860 lt!1888186))))

(assert (=> d!1503981 (= lt!1888186 (getKeysList!951 (toList!5917 lt!1887721)))))

(assert (=> d!1503981 (= (keys!18974 lt!1887721) lt!1888186)))

(declare-fun b!4723095 () Bool)

(declare-fun res!1998281 () Bool)

(assert (=> b!4723095 (=> (not res!1998281) (not e!2945645))))

(declare-fun length!576 (List!52957) Int)

(declare-fun length!577 (List!52954) Int)

(assert (=> b!4723095 (= res!1998281 (= (length!576 lt!1888186) (length!577 (toList!5917 lt!1887721))))))

(declare-fun res!1998282 () Bool)

(assert (=> b!4723096 (=> (not res!1998282) (not e!2945645))))

(declare-fun lambda!215684 () Int)

(declare-fun forall!11591 (List!52957 Int) Bool)

(assert (=> b!4723096 (= res!1998282 (forall!11591 lt!1888186 lambda!215684))))

(declare-fun lambda!215685 () Int)

(declare-fun b!4723097 () Bool)

(declare-fun map!11680 (List!52954 Int) List!52957)

(assert (=> b!4723097 (= e!2945645 (= (content!9396 lt!1888186) (content!9396 (map!11680 (toList!5917 lt!1887721) lambda!215685))))))

(assert (= (and d!1503981 res!1998283) b!4723095))

(assert (= (and b!4723095 res!1998281) b!4723096))

(assert (= (and b!4723096 res!1998282) b!4723097))

(declare-fun m!5659251 () Bool)

(assert (=> d!1503981 m!5659251))

(assert (=> d!1503981 m!5658893))

(declare-fun m!5659253 () Bool)

(assert (=> b!4723095 m!5659253))

(declare-fun m!5659255 () Bool)

(assert (=> b!4723095 m!5659255))

(declare-fun m!5659257 () Bool)

(assert (=> b!4723096 m!5659257))

(declare-fun m!5659259 () Bool)

(assert (=> b!4723097 m!5659259))

(declare-fun m!5659261 () Bool)

(assert (=> b!4723097 m!5659261))

(assert (=> b!4723097 m!5659261))

(declare-fun m!5659263 () Bool)

(assert (=> b!4723097 m!5659263))

(assert (=> b!4722919 d!1503981))

(declare-fun d!1503989 () Bool)

(declare-fun res!1998288 () Bool)

(declare-fun e!2945650 () Bool)

(assert (=> d!1503989 (=> res!1998288 e!2945650)))

(assert (=> d!1503989 (= res!1998288 ((_ is Nil!52831) (toList!5918 lt!1887718)))))

(assert (=> d!1503989 (= (forall!11588 (toList!5918 lt!1887718) lambda!215657) e!2945650)))

(declare-fun b!4723104 () Bool)

(declare-fun e!2945651 () Bool)

(assert (=> b!4723104 (= e!2945650 e!2945651)))

(declare-fun res!1998289 () Bool)

(assert (=> b!4723104 (=> (not res!1998289) (not e!2945651))))

(assert (=> b!4723104 (= res!1998289 (dynLambda!21820 lambda!215657 (h!59178 (toList!5918 lt!1887718))))))

(declare-fun b!4723105 () Bool)

(assert (=> b!4723105 (= e!2945651 (forall!11588 (t!360221 (toList!5918 lt!1887718)) lambda!215657))))

(assert (= (and d!1503989 (not res!1998288)) b!4723104))

(assert (= (and b!4723104 res!1998289) b!4723105))

(declare-fun b_lambda!178772 () Bool)

(assert (=> (not b_lambda!178772) (not b!4723104)))

(declare-fun m!5659265 () Bool)

(assert (=> b!4723104 m!5659265))

(declare-fun m!5659267 () Bool)

(assert (=> b!4723105 m!5659267))

(assert (=> d!1503881 d!1503989))

(declare-fun bs!1112547 () Bool)

(declare-fun d!1503991 () Bool)

(assert (= bs!1112547 (and d!1503991 b!4722954)))

(declare-fun lambda!215688 () Int)

(assert (=> bs!1112547 (= lambda!215688 lambda!215662)))

(declare-fun bs!1112548 () Bool)

(assert (= bs!1112548 (and d!1503991 d!1503873)))

(assert (=> bs!1112548 (not (= lambda!215688 lambda!215656))))

(declare-fun bs!1112549 () Bool)

(assert (= bs!1112549 (and d!1503991 b!4722976)))

(assert (=> bs!1112549 (= (= lt!1887727 lt!1888135) (= lambda!215688 lambda!215672))))

(declare-fun bs!1112550 () Bool)

(assert (= bs!1112550 (and d!1503991 b!4722969)))

(assert (=> bs!1112550 (= lambda!215688 lambda!215667)))

(declare-fun bs!1112551 () Bool)

(assert (= bs!1112551 (and d!1503991 d!1503907)))

(assert (=> bs!1112551 (= (= lt!1887727 lt!1888136) (= lambda!215688 lambda!215673))))

(declare-fun bs!1112552 () Bool)

(assert (= bs!1112552 (and d!1503991 b!4723054)))

(assert (=> bs!1112552 (= (= lt!1887727 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215688 lambda!215676))))

(declare-fun bs!1112553 () Bool)

(assert (= bs!1112553 (and d!1503991 b!4722971)))

(assert (=> bs!1112553 (= lambda!215688 lambda!215666)))

(declare-fun bs!1112554 () Bool)

(assert (= bs!1112554 (and d!1503991 d!1503963)))

(assert (=> bs!1112554 (= (= lt!1887727 lt!1888169) (= lambda!215688 lambda!215678))))

(declare-fun bs!1112555 () Bool)

(assert (= bs!1112555 (and d!1503991 b!4722847)))

(assert (=> bs!1112555 (= lambda!215688 lambda!215638)))

(declare-fun bs!1112556 () Bool)

(assert (= bs!1112556 (and d!1503991 d!1503899)))

(assert (=> bs!1112556 (= (= lt!1887727 lt!1888111) (= lambda!215688 lambda!215669))))

(declare-fun bs!1112557 () Bool)

(assert (= bs!1112557 (and d!1503991 d!1503889)))

(assert (=> bs!1112557 (= (= lt!1887727 lt!1888078) (= lambda!215688 lambda!215665))))

(declare-fun bs!1112558 () Bool)

(assert (= bs!1112558 (and d!1503991 b!4722949)))

(assert (=> bs!1112558 (= lambda!215688 lambda!215658)))

(declare-fun bs!1112559 () Bool)

(assert (= bs!1112559 (and d!1503991 b!4722845)))

(assert (=> bs!1112559 (= (= lt!1887727 lt!1887947) (= lambda!215688 lambda!215640))))

(declare-fun bs!1112560 () Bool)

(assert (= bs!1112560 (and d!1503991 d!1503887)))

(assert (=> bs!1112560 (= (= lt!1887727 lt!1888057) (= lambda!215688 lambda!215661))))

(assert (=> bs!1112550 (= (= lt!1887727 lt!1888110) (= lambda!215688 lambda!215668))))

(assert (=> bs!1112552 (= (= lt!1887727 lt!1888168) (= lambda!215688 lambda!215677))))

(declare-fun bs!1112561 () Bool)

(assert (= bs!1112561 (and d!1503991 b!4722952)))

(assert (=> bs!1112561 (= lambda!215688 lambda!215663)))

(declare-fun bs!1112562 () Bool)

(assert (= bs!1112562 (and d!1503991 b!4723056)))

(assert (=> bs!1112562 (= (= lt!1887727 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215688 lambda!215675))))

(declare-fun bs!1112563 () Bool)

(assert (= bs!1112563 (and d!1503991 b!4722978)))

(assert (=> bs!1112563 (= lambda!215688 lambda!215670)))

(declare-fun bs!1112564 () Bool)

(assert (= bs!1112564 (and d!1503991 d!1503799)))

(assert (=> bs!1112564 (= (= lt!1887727 lt!1887948) (= lambda!215688 lambda!215641))))

(declare-fun bs!1112565 () Bool)

(assert (= bs!1112565 (and d!1503991 b!4722947)))

(assert (=> bs!1112565 (= (= lt!1887727 lt!1888056) (= lambda!215688 lambda!215660))))

(declare-fun bs!1112566 () Bool)

(assert (= bs!1112566 (and d!1503991 d!1503911)))

(assert (=> bs!1112566 (not (= lambda!215688 lambda!215674))))

(assert (=> bs!1112559 (= lambda!215688 lambda!215639)))

(assert (=> bs!1112549 (= lambda!215688 lambda!215671)))

(assert (=> bs!1112565 (= lambda!215688 lambda!215659)))

(assert (=> bs!1112561 (= (= lt!1887727 lt!1888077) (= lambda!215688 lambda!215664))))

(assert (=> d!1503991 true))

(assert (=> d!1503991 (forall!11590 (toList!5917 lt!1887727) lambda!215688)))

(declare-fun lt!1888197 () Unit!130119)

(declare-fun choose!33327 (ListMap!5281) Unit!130119)

(assert (=> d!1503991 (= lt!1888197 (choose!33327 lt!1887727))))

(assert (=> d!1503991 (= (lemmaContainsAllItsOwnKeys!797 lt!1887727) lt!1888197)))

(declare-fun bs!1112567 () Bool)

(assert (= bs!1112567 d!1503991))

(declare-fun m!5659295 () Bool)

(assert (=> bs!1112567 m!5659295))

(declare-fun m!5659297 () Bool)

(assert (=> bs!1112567 m!5659297))

(assert (=> bm!330348 d!1503991))

(declare-fun d!1503999 () Bool)

(declare-fun res!1998295 () Bool)

(declare-fun e!2945664 () Bool)

(assert (=> d!1503999 (=> res!1998295 e!2945664)))

(assert (=> d!1503999 (= res!1998295 ((_ is Nil!52830) lt!1887720))))

(assert (=> d!1503999 (= (forall!11590 lt!1887720 lambda!215665) e!2945664)))

(declare-fun b!4723125 () Bool)

(declare-fun e!2945665 () Bool)

(assert (=> b!4723125 (= e!2945664 e!2945665)))

(declare-fun res!1998296 () Bool)

(assert (=> b!4723125 (=> (not res!1998296) (not e!2945665))))

(assert (=> b!4723125 (= res!1998296 (dynLambda!21821 lambda!215665 (h!59177 lt!1887720)))))

(declare-fun b!4723126 () Bool)

(assert (=> b!4723126 (= e!2945665 (forall!11590 (t!360220 lt!1887720) lambda!215665))))

(assert (= (and d!1503999 (not res!1998295)) b!4723125))

(assert (= (and b!4723125 res!1998296) b!4723126))

(declare-fun b_lambda!178775 () Bool)

(assert (=> (not b_lambda!178775) (not b!4723125)))

(declare-fun m!5659299 () Bool)

(assert (=> b!4723125 m!5659299))

(declare-fun m!5659301 () Bool)

(assert (=> b!4723126 m!5659301))

(assert (=> d!1503889 d!1503999))

(declare-fun d!1504001 () Bool)

(declare-fun res!1998297 () Bool)

(declare-fun e!2945666 () Bool)

(assert (=> d!1504001 (=> res!1998297 e!2945666)))

(assert (=> d!1504001 (= res!1998297 (not ((_ is Cons!52830) lt!1887720)))))

(assert (=> d!1504001 (= (noDuplicateKeys!2014 lt!1887720) e!2945666)))

(declare-fun b!4723127 () Bool)

(declare-fun e!2945667 () Bool)

(assert (=> b!4723127 (= e!2945666 e!2945667)))

(declare-fun res!1998298 () Bool)

(assert (=> b!4723127 (=> (not res!1998298) (not e!2945667))))

(assert (=> b!4723127 (= res!1998298 (not (containsKey!3369 (t!360220 lt!1887720) (_1!30519 (h!59177 lt!1887720)))))))

(declare-fun b!4723128 () Bool)

(assert (=> b!4723128 (= e!2945667 (noDuplicateKeys!2014 (t!360220 lt!1887720)))))

(assert (= (and d!1504001 (not res!1998297)) b!4723127))

(assert (= (and b!4723127 res!1998298) b!4723128))

(declare-fun m!5659303 () Bool)

(assert (=> b!4723127 m!5659303))

(declare-fun m!5659305 () Bool)

(assert (=> b!4723128 m!5659305))

(assert (=> d!1503889 d!1504001))

(declare-fun d!1504003 () Bool)

(declare-fun res!1998299 () Bool)

(declare-fun e!2945668 () Bool)

(assert (=> d!1504003 (=> res!1998299 e!2945668)))

(assert (=> d!1504003 (= res!1998299 ((_ is Nil!52830) (toList!5917 lt!1887727)))))

(assert (=> d!1504003 (= (forall!11590 (toList!5917 lt!1887727) (ite c!806597 lambda!215670 lambda!215672)) e!2945668)))

(declare-fun b!4723129 () Bool)

(declare-fun e!2945669 () Bool)

(assert (=> b!4723129 (= e!2945668 e!2945669)))

(declare-fun res!1998300 () Bool)

(assert (=> b!4723129 (=> (not res!1998300) (not e!2945669))))

(assert (=> b!4723129 (= res!1998300 (dynLambda!21821 (ite c!806597 lambda!215670 lambda!215672) (h!59177 (toList!5917 lt!1887727))))))

(declare-fun b!4723130 () Bool)

(assert (=> b!4723130 (= e!2945669 (forall!11590 (t!360220 (toList!5917 lt!1887727)) (ite c!806597 lambda!215670 lambda!215672)))))

(assert (= (and d!1504003 (not res!1998299)) b!4723129))

(assert (= (and b!4723129 res!1998300) b!4723130))

(declare-fun b_lambda!178777 () Bool)

(assert (=> (not b_lambda!178777) (not b!4723129)))

(declare-fun m!5659307 () Bool)

(assert (=> b!4723129 m!5659307))

(declare-fun m!5659309 () Bool)

(assert (=> b!4723130 m!5659309))

(assert (=> bm!330347 d!1504003))

(declare-fun d!1504005 () Bool)

(declare-fun choose!33328 (Hashable!6383 K!14185) (_ BitVec 64))

(assert (=> d!1504005 (= (hash!4386 hashF!1323 key!4653) (choose!33328 hashF!1323 key!4653))))

(declare-fun bs!1112568 () Bool)

(assert (= bs!1112568 d!1504005))

(declare-fun m!5659311 () Bool)

(assert (=> bs!1112568 m!5659311))

(assert (=> d!1503875 d!1504005))

(declare-fun d!1504007 () Bool)

(declare-fun e!2945673 () Bool)

(assert (=> d!1504007 e!2945673))

(declare-fun res!1998302 () Bool)

(assert (=> d!1504007 (=> res!1998302 e!2945673)))

(declare-fun e!2945675 () Bool)

(assert (=> d!1504007 (= res!1998302 e!2945675)))

(declare-fun res!1998301 () Bool)

(assert (=> d!1504007 (=> (not res!1998301) (not e!2945675))))

(declare-fun lt!1888205 () Bool)

(assert (=> d!1504007 (= res!1998301 (not lt!1888205))))

(declare-fun lt!1888198 () Bool)

(assert (=> d!1504007 (= lt!1888205 lt!1888198)))

(declare-fun lt!1888199 () Unit!130119)

(declare-fun e!2945676 () Unit!130119)

(assert (=> d!1504007 (= lt!1888199 e!2945676)))

(declare-fun c!806625 () Bool)

(assert (=> d!1504007 (= c!806625 lt!1888198)))

(assert (=> d!1504007 (= lt!1888198 (containsKey!3373 (toList!5917 lt!1888099) (_1!30519 lt!1887722)))))

(assert (=> d!1504007 (= (contains!16175 lt!1888099 (_1!30519 lt!1887722)) lt!1888205)))

(declare-fun b!4723135 () Bool)

(declare-fun e!2945672 () Bool)

(assert (=> b!4723135 (= e!2945672 (contains!16179 (keys!18974 lt!1888099) (_1!30519 lt!1887722)))))

(declare-fun b!4723136 () Bool)

(assert (=> b!4723136 (= e!2945673 e!2945672)))

(declare-fun res!1998303 () Bool)

(assert (=> b!4723136 (=> (not res!1998303) (not e!2945672))))

(assert (=> b!4723136 (= res!1998303 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1888099) (_1!30519 lt!1887722))))))

(declare-fun b!4723137 () Bool)

(declare-fun e!2945677 () List!52957)

(assert (=> b!4723137 (= e!2945677 (keys!18974 lt!1888099))))

(declare-fun b!4723138 () Bool)

(assert (=> b!4723138 (= e!2945677 (getKeysList!951 (toList!5917 lt!1888099)))))

(declare-fun b!4723139 () Bool)

(declare-fun e!2945674 () Unit!130119)

(assert (=> b!4723139 (= e!2945676 e!2945674)))

(declare-fun c!806627 () Bool)

(declare-fun call!330358 () Bool)

(assert (=> b!4723139 (= c!806627 call!330358)))

(declare-fun b!4723140 () Bool)

(assert (=> b!4723140 false))

(declare-fun lt!1888201 () Unit!130119)

(declare-fun lt!1888204 () Unit!130119)

(assert (=> b!4723140 (= lt!1888201 lt!1888204)))

(assert (=> b!4723140 (containsKey!3373 (toList!5917 lt!1888099) (_1!30519 lt!1887722))))

(assert (=> b!4723140 (= lt!1888204 (lemmaInGetKeysListThenContainsKey!950 (toList!5917 lt!1888099) (_1!30519 lt!1887722)))))

(declare-fun Unit!130252 () Unit!130119)

(assert (=> b!4723140 (= e!2945674 Unit!130252)))

(declare-fun b!4723141 () Bool)

(declare-fun Unit!130253 () Unit!130119)

(assert (=> b!4723141 (= e!2945674 Unit!130253)))

(declare-fun b!4723142 () Bool)

(assert (=> b!4723142 (= e!2945675 (not (contains!16179 (keys!18974 lt!1888099) (_1!30519 lt!1887722))))))

(declare-fun bm!330353 () Bool)

(assert (=> bm!330353 (= call!330358 (contains!16179 e!2945677 (_1!30519 lt!1887722)))))

(declare-fun c!806626 () Bool)

(assert (=> bm!330353 (= c!806626 c!806625)))

(declare-fun b!4723143 () Bool)

(declare-fun lt!1888202 () Unit!130119)

(assert (=> b!4723143 (= e!2945676 lt!1888202)))

(declare-fun lt!1888200 () Unit!130119)

(assert (=> b!4723143 (= lt!1888200 (lemmaContainsKeyImpliesGetValueByKeyDefined!1848 (toList!5917 lt!1888099) (_1!30519 lt!1887722)))))

(assert (=> b!4723143 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1888099) (_1!30519 lt!1887722)))))

(declare-fun lt!1888203 () Unit!130119)

(assert (=> b!4723143 (= lt!1888203 lt!1888200)))

(assert (=> b!4723143 (= lt!1888202 (lemmaInListThenGetKeysListContains!946 (toList!5917 lt!1888099) (_1!30519 lt!1887722)))))

(assert (=> b!4723143 call!330358))

(assert (= (and d!1504007 c!806625) b!4723143))

(assert (= (and d!1504007 (not c!806625)) b!4723139))

(assert (= (and b!4723139 c!806627) b!4723140))

(assert (= (and b!4723139 (not c!806627)) b!4723141))

(assert (= (or b!4723143 b!4723139) bm!330353))

(assert (= (and bm!330353 c!806626) b!4723138))

(assert (= (and bm!330353 (not c!806626)) b!4723137))

(assert (= (and d!1504007 res!1998301) b!4723142))

(assert (= (and d!1504007 (not res!1998302)) b!4723136))

(assert (= (and b!4723136 res!1998303) b!4723135))

(declare-fun m!5659315 () Bool)

(assert (=> b!4723143 m!5659315))

(assert (=> b!4723143 m!5659001))

(assert (=> b!4723143 m!5659001))

(declare-fun m!5659317 () Bool)

(assert (=> b!4723143 m!5659317))

(declare-fun m!5659319 () Bool)

(assert (=> b!4723143 m!5659319))

(declare-fun m!5659321 () Bool)

(assert (=> b!4723140 m!5659321))

(declare-fun m!5659323 () Bool)

(assert (=> b!4723140 m!5659323))

(assert (=> b!4723136 m!5659001))

(assert (=> b!4723136 m!5659001))

(assert (=> b!4723136 m!5659317))

(declare-fun m!5659325 () Bool)

(assert (=> b!4723137 m!5659325))

(declare-fun m!5659327 () Bool)

(assert (=> b!4723138 m!5659327))

(assert (=> b!4723142 m!5659325))

(assert (=> b!4723142 m!5659325))

(declare-fun m!5659329 () Bool)

(assert (=> b!4723142 m!5659329))

(assert (=> d!1504007 m!5659321))

(declare-fun m!5659331 () Bool)

(assert (=> bm!330353 m!5659331))

(assert (=> b!4723135 m!5659325))

(assert (=> b!4723135 m!5659325))

(assert (=> b!4723135 m!5659329))

(assert (=> d!1503897 d!1504007))

(declare-fun d!1504011 () Bool)

(declare-fun c!806628 () Bool)

(assert (=> d!1504011 (= c!806628 (and ((_ is Cons!52830) lt!1888100) (= (_1!30519 (h!59177 lt!1888100)) (_1!30519 lt!1887722))))))

(declare-fun e!2945678 () Option!12361)

(assert (=> d!1504011 (= (getValueByKey!1957 lt!1888100 (_1!30519 lt!1887722)) e!2945678)))

(declare-fun b!4723146 () Bool)

(declare-fun e!2945679 () Option!12361)

(assert (=> b!4723146 (= e!2945679 (getValueByKey!1957 (t!360220 lt!1888100) (_1!30519 lt!1887722)))))

(declare-fun b!4723145 () Bool)

(assert (=> b!4723145 (= e!2945678 e!2945679)))

(declare-fun c!806629 () Bool)

(assert (=> b!4723145 (= c!806629 (and ((_ is Cons!52830) lt!1888100) (not (= (_1!30519 (h!59177 lt!1888100)) (_1!30519 lt!1887722)))))))

(declare-fun b!4723147 () Bool)

(assert (=> b!4723147 (= e!2945679 None!12360)))

(declare-fun b!4723144 () Bool)

(assert (=> b!4723144 (= e!2945678 (Some!12360 (_2!30519 (h!59177 lt!1888100))))))

(assert (= (and d!1504011 c!806628) b!4723144))

(assert (= (and d!1504011 (not c!806628)) b!4723145))

(assert (= (and b!4723145 c!806629) b!4723146))

(assert (= (and b!4723145 (not c!806629)) b!4723147))

(declare-fun m!5659333 () Bool)

(assert (=> b!4723146 m!5659333))

(assert (=> d!1503897 d!1504011))

(declare-fun d!1504013 () Bool)

(assert (=> d!1504013 (= (getValueByKey!1957 lt!1888100 (_1!30519 lt!1887722)) (Some!12360 (_2!30519 lt!1887722)))))

(declare-fun lt!1888210 () Unit!130119)

(declare-fun choose!33330 (List!52954 K!14185 V!14431) Unit!130119)

(assert (=> d!1504013 (= lt!1888210 (choose!33330 lt!1888100 (_1!30519 lt!1887722) (_2!30519 lt!1887722)))))

(declare-fun e!2945684 () Bool)

(assert (=> d!1504013 e!2945684))

(declare-fun res!1998312 () Bool)

(assert (=> d!1504013 (=> (not res!1998312) (not e!2945684))))

(assert (=> d!1504013 (= res!1998312 (invariantList!1511 lt!1888100))))

(assert (=> d!1504013 (= (lemmaContainsTupThenGetReturnValue!1086 lt!1888100 (_1!30519 lt!1887722) (_2!30519 lt!1887722)) lt!1888210)))

(declare-fun b!4723156 () Bool)

(declare-fun res!1998313 () Bool)

(assert (=> b!4723156 (=> (not res!1998313) (not e!2945684))))

(assert (=> b!4723156 (= res!1998313 (containsKey!3373 lt!1888100 (_1!30519 lt!1887722)))))

(declare-fun b!4723157 () Bool)

(assert (=> b!4723157 (= e!2945684 (contains!16180 lt!1888100 (tuple2!54451 (_1!30519 lt!1887722) (_2!30519 lt!1887722))))))

(assert (= (and d!1504013 res!1998312) b!4723156))

(assert (= (and b!4723156 res!1998313) b!4723157))

(assert (=> d!1504013 m!5658995))

(declare-fun m!5659335 () Bool)

(assert (=> d!1504013 m!5659335))

(declare-fun m!5659337 () Bool)

(assert (=> d!1504013 m!5659337))

(declare-fun m!5659339 () Bool)

(assert (=> b!4723156 m!5659339))

(declare-fun m!5659341 () Bool)

(assert (=> b!4723157 m!5659341))

(assert (=> d!1503897 d!1504013))

(declare-fun b!4723188 () Bool)

(declare-fun e!2945703 () List!52954)

(declare-fun e!2945706 () List!52954)

(assert (=> b!4723188 (= e!2945703 e!2945706)))

(declare-fun res!1998326 () Bool)

(assert (=> b!4723188 (= res!1998326 ((_ is Cons!52830) (toList!5917 lt!1887723)))))

(declare-fun e!2945704 () Bool)

(assert (=> b!4723188 (=> (not res!1998326) (not e!2945704))))

(declare-fun c!806640 () Bool)

(assert (=> b!4723188 (= c!806640 e!2945704)))

(declare-fun c!806644 () Bool)

(declare-fun c!806643 () Bool)

(declare-fun bm!330362 () Bool)

(declare-fun e!2945702 () List!52954)

(declare-fun call!330370 () List!52954)

(declare-fun $colon$colon!1078 (List!52954 tuple2!54450) List!52954)

(assert (=> bm!330362 (= call!330370 ($colon$colon!1078 (ite c!806643 (t!360220 (toList!5917 lt!1887723)) (ite c!806640 (toList!5917 lt!1887723) e!2945702)) (ite (or c!806643 c!806640) (tuple2!54451 (_1!30519 lt!1887722) (_2!30519 lt!1887722)) (ite c!806644 (h!59177 (toList!5917 lt!1887723)) (tuple2!54451 (_1!30519 lt!1887722) (_2!30519 lt!1887722))))))))

(declare-fun b!4723190 () Bool)

(declare-fun call!330369 () List!52954)

(assert (=> b!4723190 (= e!2945706 call!330369)))

(declare-fun b!4723191 () Bool)

(assert (=> b!4723191 false))

(declare-fun lt!1888238 () Unit!130119)

(declare-fun lt!1888244 () Unit!130119)

(assert (=> b!4723191 (= lt!1888238 lt!1888244)))

(assert (=> b!4723191 (containsKey!3373 (t!360220 (toList!5917 lt!1887723)) (_1!30519 (h!59177 (toList!5917 lt!1887723))))))

(assert (=> b!4723191 (= lt!1888244 (lemmaInGetKeysListThenContainsKey!950 (t!360220 (toList!5917 lt!1887723)) (_1!30519 (h!59177 (toList!5917 lt!1887723)))))))

(declare-fun lt!1888237 () Unit!130119)

(declare-fun lt!1888239 () Unit!130119)

(assert (=> b!4723191 (= lt!1888237 lt!1888239)))

(declare-fun call!330367 () List!52957)

(assert (=> b!4723191 (contains!16179 call!330367 (_1!30519 (h!59177 (toList!5917 lt!1887723))))))

(declare-fun lt!1888241 () List!52954)

(assert (=> b!4723191 (= lt!1888239 (lemmaInListThenGetKeysListContains!946 lt!1888241 (_1!30519 (h!59177 (toList!5917 lt!1887723)))))))

(assert (=> b!4723191 (= lt!1888241 (insertNoDuplicatedKeys!594 (t!360220 (toList!5917 lt!1887723)) (_1!30519 lt!1887722) (_2!30519 lt!1887722)))))

(declare-fun e!2945705 () Unit!130119)

(declare-fun Unit!130254 () Unit!130119)

(assert (=> b!4723191 (= e!2945705 Unit!130254)))

(declare-fun b!4723192 () Bool)

(declare-fun Unit!130255 () Unit!130119)

(assert (=> b!4723192 (= e!2945705 Unit!130255)))

(declare-fun b!4723193 () Bool)

(declare-fun res!1998324 () Bool)

(declare-fun e!2945700 () Bool)

(assert (=> b!4723193 (=> (not res!1998324) (not e!2945700))))

(declare-fun lt!1888236 () List!52954)

(assert (=> b!4723193 (= res!1998324 (containsKey!3373 lt!1888236 (_1!30519 lt!1887722)))))

(declare-fun b!4723194 () Bool)

(declare-fun e!2945701 () List!52954)

(declare-fun lt!1888243 () List!52954)

(assert (=> b!4723194 (= e!2945701 lt!1888243)))

(declare-fun call!330368 () List!52954)

(assert (=> b!4723194 (= lt!1888243 call!330368)))

(declare-fun c!806641 () Bool)

(assert (=> b!4723194 (= c!806641 (containsKey!3373 (insertNoDuplicatedKeys!594 (t!360220 (toList!5917 lt!1887723)) (_1!30519 lt!1887722) (_2!30519 lt!1887722)) (_1!30519 (h!59177 (toList!5917 lt!1887723)))))))

(declare-fun lt!1888242 () Unit!130119)

(assert (=> b!4723194 (= lt!1888242 e!2945705)))

(declare-fun b!4723189 () Bool)

(assert (=> b!4723189 (= e!2945702 (insertNoDuplicatedKeys!594 (t!360220 (toList!5917 lt!1887723)) (_1!30519 lt!1887722) (_2!30519 lt!1887722)))))

(declare-fun d!1504015 () Bool)

(assert (=> d!1504015 e!2945700))

(declare-fun res!1998325 () Bool)

(assert (=> d!1504015 (=> (not res!1998325) (not e!2945700))))

(assert (=> d!1504015 (= res!1998325 (invariantList!1511 lt!1888236))))

(assert (=> d!1504015 (= lt!1888236 e!2945703)))

(assert (=> d!1504015 (= c!806643 (and ((_ is Cons!52830) (toList!5917 lt!1887723)) (= (_1!30519 (h!59177 (toList!5917 lt!1887723))) (_1!30519 lt!1887722))))))

(assert (=> d!1504015 (invariantList!1511 (toList!5917 lt!1887723))))

(assert (=> d!1504015 (= (insertNoDuplicatedKeys!594 (toList!5917 lt!1887723) (_1!30519 lt!1887722) (_2!30519 lt!1887722)) lt!1888236)))

(declare-fun bm!330363 () Bool)

(assert (=> bm!330363 (= call!330369 call!330370)))

(declare-fun bm!330364 () Bool)

(assert (=> bm!330364 (= call!330367 (getKeysList!951 (ite c!806643 (toList!5917 lt!1887723) lt!1888241)))))

(declare-fun b!4723195 () Bool)

(assert (=> b!4723195 (= e!2945700 (= (content!9396 (getKeysList!951 lt!1888236)) ((_ map or) (content!9396 (getKeysList!951 (toList!5917 lt!1887723))) (store ((as const (Array K!14185 Bool)) false) (_1!30519 lt!1887722) true))))))

(declare-fun b!4723196 () Bool)

(assert (=> b!4723196 (= e!2945703 call!330370)))

(declare-fun lt!1888235 () List!52957)

(assert (=> b!4723196 (= lt!1888235 call!330367)))

(declare-fun lt!1888234 () Unit!130119)

(declare-fun lemmaSubseqRefl!143 (List!52957) Unit!130119)

(assert (=> b!4723196 (= lt!1888234 (lemmaSubseqRefl!143 lt!1888235))))

(declare-fun subseq!659 (List!52957 List!52957) Bool)

(assert (=> b!4723196 (subseq!659 lt!1888235 lt!1888235)))

(declare-fun lt!1888240 () Unit!130119)

(assert (=> b!4723196 (= lt!1888240 lt!1888234)))

(declare-fun bm!330365 () Bool)

(assert (=> bm!330365 (= call!330368 call!330369)))

(declare-fun c!806642 () Bool)

(assert (=> bm!330365 (= c!806642 c!806644)))

(declare-fun b!4723197 () Bool)

(assert (=> b!4723197 (= c!806644 ((_ is Cons!52830) (toList!5917 lt!1887723)))))

(assert (=> b!4723197 (= e!2945706 e!2945701)))

(declare-fun b!4723198 () Bool)

(assert (=> b!4723198 (= e!2945704 (not (containsKey!3373 (toList!5917 lt!1887723) (_1!30519 lt!1887722))))))

(declare-fun b!4723199 () Bool)

(assert (=> b!4723199 (= e!2945701 call!330368)))

(declare-fun b!4723200 () Bool)

(declare-fun res!1998327 () Bool)

(assert (=> b!4723200 (=> (not res!1998327) (not e!2945700))))

(assert (=> b!4723200 (= res!1998327 (contains!16180 lt!1888236 (tuple2!54451 (_1!30519 lt!1887722) (_2!30519 lt!1887722))))))

(declare-fun b!4723201 () Bool)

(assert (=> b!4723201 (= e!2945702 Nil!52830)))

(assert (= (and d!1504015 c!806643) b!4723196))

(assert (= (and d!1504015 (not c!806643)) b!4723188))

(assert (= (and b!4723188 res!1998326) b!4723198))

(assert (= (and b!4723188 c!806640) b!4723190))

(assert (= (and b!4723188 (not c!806640)) b!4723197))

(assert (= (and b!4723197 c!806644) b!4723194))

(assert (= (and b!4723197 (not c!806644)) b!4723199))

(assert (= (and b!4723194 c!806641) b!4723191))

(assert (= (and b!4723194 (not c!806641)) b!4723192))

(assert (= (or b!4723194 b!4723199) bm!330365))

(assert (= (and bm!330365 c!806642) b!4723189))

(assert (= (and bm!330365 (not c!806642)) b!4723201))

(assert (= (or b!4723190 bm!330365) bm!330363))

(assert (= (or b!4723196 b!4723191) bm!330364))

(assert (= (or b!4723196 bm!330363) bm!330362))

(assert (= (and d!1504015 res!1998325) b!4723193))

(assert (= (and b!4723193 res!1998324) b!4723200))

(assert (= (and b!4723200 res!1998327) b!4723195))

(declare-fun m!5659351 () Bool)

(assert (=> b!4723189 m!5659351))

(declare-fun m!5659353 () Bool)

(assert (=> d!1504015 m!5659353))

(declare-fun m!5659355 () Bool)

(assert (=> d!1504015 m!5659355))

(assert (=> b!4723194 m!5659351))

(assert (=> b!4723194 m!5659351))

(declare-fun m!5659357 () Bool)

(assert (=> b!4723194 m!5659357))

(declare-fun m!5659359 () Bool)

(assert (=> b!4723191 m!5659359))

(declare-fun m!5659361 () Bool)

(assert (=> b!4723191 m!5659361))

(declare-fun m!5659363 () Bool)

(assert (=> b!4723191 m!5659363))

(assert (=> b!4723191 m!5659351))

(declare-fun m!5659365 () Bool)

(assert (=> b!4723191 m!5659365))

(declare-fun m!5659367 () Bool)

(assert (=> bm!330364 m!5659367))

(declare-fun m!5659369 () Bool)

(assert (=> b!4723193 m!5659369))

(declare-fun m!5659371 () Bool)

(assert (=> b!4723196 m!5659371))

(declare-fun m!5659373 () Bool)

(assert (=> b!4723196 m!5659373))

(declare-fun m!5659375 () Bool)

(assert (=> bm!330362 m!5659375))

(declare-fun m!5659377 () Bool)

(assert (=> b!4723195 m!5659377))

(declare-fun m!5659379 () Bool)

(assert (=> b!4723195 m!5659379))

(declare-fun m!5659381 () Bool)

(assert (=> b!4723195 m!5659381))

(assert (=> b!4723195 m!5659379))

(declare-fun m!5659383 () Bool)

(assert (=> b!4723195 m!5659383))

(declare-fun m!5659385 () Bool)

(assert (=> b!4723195 m!5659385))

(assert (=> b!4723195 m!5659383))

(declare-fun m!5659387 () Bool)

(assert (=> b!4723198 m!5659387))

(declare-fun m!5659389 () Bool)

(assert (=> b!4723200 m!5659389))

(assert (=> d!1503897 d!1504015))

(declare-fun d!1504019 () Bool)

(assert (=> d!1504019 (isDefined!9614 (getValueByKey!1956 (toList!5918 lt!1887718) lt!1887725))))

(declare-fun lt!1888247 () Unit!130119)

(declare-fun choose!33333 (List!52955 (_ BitVec 64)) Unit!130119)

(assert (=> d!1504019 (= lt!1888247 (choose!33333 (toList!5918 lt!1887718) lt!1887725))))

(declare-fun e!2945709 () Bool)

(assert (=> d!1504019 e!2945709))

(declare-fun res!1998330 () Bool)

(assert (=> d!1504019 (=> (not res!1998330) (not e!2945709))))

(assert (=> d!1504019 (= res!1998330 (isStrictlySorted!750 (toList!5918 lt!1887718)))))

(assert (=> d!1504019 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1847 (toList!5918 lt!1887718) lt!1887725) lt!1888247)))

(declare-fun b!4723204 () Bool)

(assert (=> b!4723204 (= e!2945709 (containsKey!3372 (toList!5918 lt!1887718) lt!1887725))))

(assert (= (and d!1504019 res!1998330) b!4723204))

(assert (=> d!1504019 m!5658829))

(assert (=> d!1504019 m!5658829))

(assert (=> d!1504019 m!5658831))

(declare-fun m!5659391 () Bool)

(assert (=> d!1504019 m!5659391))

(declare-fun m!5659393 () Bool)

(assert (=> d!1504019 m!5659393))

(assert (=> b!4723204 m!5658825))

(assert (=> b!4722878 d!1504019))

(declare-fun d!1504021 () Bool)

(declare-fun isEmpty!29176 (Option!12360) Bool)

(assert (=> d!1504021 (= (isDefined!9614 (getValueByKey!1956 (toList!5918 lt!1887718) lt!1887725)) (not (isEmpty!29176 (getValueByKey!1956 (toList!5918 lt!1887718) lt!1887725))))))

(declare-fun bs!1112569 () Bool)

(assert (= bs!1112569 d!1504021))

(assert (=> bs!1112569 m!5658829))

(declare-fun m!5659395 () Bool)

(assert (=> bs!1112569 m!5659395))

(assert (=> b!4722878 d!1504021))

(declare-fun b!4723234 () Bool)

(declare-fun e!2945725 () Option!12360)

(assert (=> b!4723234 (= e!2945725 None!12359)))

(declare-fun d!1504023 () Bool)

(declare-fun c!806657 () Bool)

(assert (=> d!1504023 (= c!806657 (and ((_ is Cons!52831) (toList!5918 lt!1887718)) (= (_1!30520 (h!59178 (toList!5918 lt!1887718))) lt!1887725)))))

(declare-fun e!2945724 () Option!12360)

(assert (=> d!1504023 (= (getValueByKey!1956 (toList!5918 lt!1887718) lt!1887725) e!2945724)))

(declare-fun b!4723233 () Bool)

(assert (=> b!4723233 (= e!2945725 (getValueByKey!1956 (t!360221 (toList!5918 lt!1887718)) lt!1887725))))

(declare-fun b!4723231 () Bool)

(assert (=> b!4723231 (= e!2945724 (Some!12359 (_2!30520 (h!59178 (toList!5918 lt!1887718)))))))

(declare-fun b!4723232 () Bool)

(assert (=> b!4723232 (= e!2945724 e!2945725)))

(declare-fun c!806658 () Bool)

(assert (=> b!4723232 (= c!806658 (and ((_ is Cons!52831) (toList!5918 lt!1887718)) (not (= (_1!30520 (h!59178 (toList!5918 lt!1887718))) lt!1887725))))))

(assert (= (and d!1504023 c!806657) b!4723231))

(assert (= (and d!1504023 (not c!806657)) b!4723232))

(assert (= (and b!4723232 c!806658) b!4723233))

(assert (= (and b!4723232 (not c!806658)) b!4723234))

(declare-fun m!5659397 () Bool)

(assert (=> b!4723233 m!5659397))

(assert (=> b!4722878 d!1504023))

(declare-fun d!1504025 () Bool)

(assert (=> d!1504025 (= (invariantList!1511 (toList!5917 lt!1888136)) (noDuplicatedKeys!374 (toList!5917 lt!1888136)))))

(declare-fun bs!1112570 () Bool)

(assert (= bs!1112570 d!1504025))

(declare-fun m!5659399 () Bool)

(assert (=> bs!1112570 m!5659399))

(assert (=> b!4722979 d!1504025))

(declare-fun d!1504027 () Bool)

(declare-fun res!1998337 () Bool)

(declare-fun e!2945732 () Bool)

(assert (=> d!1504027 (=> res!1998337 e!2945732)))

(assert (=> d!1504027 (= res!1998337 (and ((_ is Cons!52830) (toList!5917 lt!1887721)) (= (_1!30519 (h!59177 (toList!5917 lt!1887721))) key!4653)))))

(assert (=> d!1504027 (= (containsKey!3373 (toList!5917 lt!1887721) key!4653) e!2945732)))

(declare-fun b!4723243 () Bool)

(declare-fun e!2945733 () Bool)

(assert (=> b!4723243 (= e!2945732 e!2945733)))

(declare-fun res!1998338 () Bool)

(assert (=> b!4723243 (=> (not res!1998338) (not e!2945733))))

(assert (=> b!4723243 (= res!1998338 ((_ is Cons!52830) (toList!5917 lt!1887721)))))

(declare-fun b!4723244 () Bool)

(assert (=> b!4723244 (= e!2945733 (containsKey!3373 (t!360220 (toList!5917 lt!1887721)) key!4653))))

(assert (= (and d!1504027 (not res!1998337)) b!4723243))

(assert (= (and b!4723243 res!1998338) b!4723244))

(declare-fun m!5659401 () Bool)

(assert (=> b!4723244 m!5659401))

(assert (=> d!1503859 d!1504027))

(declare-fun d!1504029 () Bool)

(declare-fun res!1998339 () Bool)

(declare-fun e!2945734 () Bool)

(assert (=> d!1504029 (=> res!1998339 e!2945734)))

(assert (=> d!1504029 (= res!1998339 ((_ is Nil!52830) (toList!5917 lt!1887727)))))

(assert (=> d!1504029 (= (forall!11590 (toList!5917 lt!1887727) (ite c!806596 lambda!215666 lambda!215668)) e!2945734)))

(declare-fun b!4723245 () Bool)

(declare-fun e!2945735 () Bool)

(assert (=> b!4723245 (= e!2945734 e!2945735)))

(declare-fun res!1998340 () Bool)

(assert (=> b!4723245 (=> (not res!1998340) (not e!2945735))))

(assert (=> b!4723245 (= res!1998340 (dynLambda!21821 (ite c!806596 lambda!215666 lambda!215668) (h!59177 (toList!5917 lt!1887727))))))

(declare-fun b!4723246 () Bool)

(assert (=> b!4723246 (= e!2945735 (forall!11590 (t!360220 (toList!5917 lt!1887727)) (ite c!806596 lambda!215666 lambda!215668)))))

(assert (= (and d!1504029 (not res!1998339)) b!4723245))

(assert (= (and b!4723245 res!1998340) b!4723246))

(declare-fun b_lambda!178779 () Bool)

(assert (=> (not b_lambda!178779) (not b!4723245)))

(declare-fun m!5659403 () Bool)

(assert (=> b!4723245 m!5659403))

(declare-fun m!5659405 () Bool)

(assert (=> b!4723246 m!5659405))

(assert (=> bm!330344 d!1504029))

(declare-fun d!1504031 () Bool)

(declare-fun e!2945736 () Bool)

(assert (=> d!1504031 e!2945736))

(declare-fun res!1998342 () Bool)

(assert (=> d!1504031 (=> (not res!1998342) (not e!2945736))))

(declare-fun lt!1888272 () ListMap!5281)

(assert (=> d!1504031 (= res!1998342 (contains!16175 lt!1888272 (_1!30519 lt!1887722)))))

(declare-fun lt!1888273 () List!52954)

(assert (=> d!1504031 (= lt!1888272 (ListMap!5282 lt!1888273))))

(declare-fun lt!1888270 () Unit!130119)

(declare-fun lt!1888271 () Unit!130119)

(assert (=> d!1504031 (= lt!1888270 lt!1888271)))

(assert (=> d!1504031 (= (getValueByKey!1957 lt!1888273 (_1!30519 lt!1887722)) (Some!12360 (_2!30519 lt!1887722)))))

(assert (=> d!1504031 (= lt!1888271 (lemmaContainsTupThenGetReturnValue!1086 lt!1888273 (_1!30519 lt!1887722) (_2!30519 lt!1887722)))))

(assert (=> d!1504031 (= lt!1888273 (insertNoDuplicatedKeys!594 (toList!5917 (addToMapMapFromBucket!1444 lt!1887720 lt!1887727)) (_1!30519 lt!1887722) (_2!30519 lt!1887722)))))

(assert (=> d!1504031 (= (+!2269 (addToMapMapFromBucket!1444 lt!1887720 lt!1887727) lt!1887722) lt!1888272)))

(declare-fun b!4723247 () Bool)

(declare-fun res!1998341 () Bool)

(assert (=> b!4723247 (=> (not res!1998341) (not e!2945736))))

(assert (=> b!4723247 (= res!1998341 (= (getValueByKey!1957 (toList!5917 lt!1888272) (_1!30519 lt!1887722)) (Some!12360 (_2!30519 lt!1887722))))))

(declare-fun b!4723248 () Bool)

(assert (=> b!4723248 (= e!2945736 (contains!16180 (toList!5917 lt!1888272) lt!1887722))))

(assert (= (and d!1504031 res!1998342) b!4723247))

(assert (= (and b!4723247 res!1998341) b!4723248))

(declare-fun m!5659407 () Bool)

(assert (=> d!1504031 m!5659407))

(declare-fun m!5659409 () Bool)

(assert (=> d!1504031 m!5659409))

(declare-fun m!5659411 () Bool)

(assert (=> d!1504031 m!5659411))

(declare-fun m!5659413 () Bool)

(assert (=> d!1504031 m!5659413))

(declare-fun m!5659415 () Bool)

(assert (=> b!4723247 m!5659415))

(declare-fun m!5659417 () Bool)

(assert (=> b!4723248 m!5659417))

(assert (=> d!1503909 d!1504031))

(declare-fun d!1504033 () Bool)

(assert (=> d!1504033 (eq!1131 (addToMapMapFromBucket!1444 (Cons!52830 lt!1887722 lt!1887720) lt!1887727) (+!2269 (addToMapMapFromBucket!1444 lt!1887720 lt!1887727) lt!1887722))))

(assert (=> d!1504033 true))

(declare-fun _$30!180 () Unit!130119)

(assert (=> d!1504033 (= (choose!33322 lt!1887722 lt!1887720 lt!1887727) _$30!180)))

(declare-fun bs!1112571 () Bool)

(assert (= bs!1112571 d!1504033))

(assert (=> bs!1112571 m!5658469))

(assert (=> bs!1112571 m!5658461))

(assert (=> bs!1112571 m!5658461))

(assert (=> bs!1112571 m!5659091))

(assert (=> bs!1112571 m!5658469))

(assert (=> bs!1112571 m!5659091))

(assert (=> bs!1112571 m!5659093))

(assert (=> d!1503909 d!1504033))

(declare-fun d!1504035 () Bool)

(assert (=> d!1504035 (= (eq!1131 (addToMapMapFromBucket!1444 (Cons!52830 lt!1887722 lt!1887720) lt!1887727) (+!2269 (addToMapMapFromBucket!1444 lt!1887720 lt!1887727) lt!1887722)) (= (content!9395 (toList!5917 (addToMapMapFromBucket!1444 (Cons!52830 lt!1887722 lt!1887720) lt!1887727))) (content!9395 (toList!5917 (+!2269 (addToMapMapFromBucket!1444 lt!1887720 lt!1887727) lt!1887722)))))))

(declare-fun bs!1112572 () Bool)

(assert (= bs!1112572 d!1504035))

(assert (=> bs!1112572 m!5659037))

(declare-fun m!5659419 () Bool)

(assert (=> bs!1112572 m!5659419))

(assert (=> d!1503909 d!1504035))

(assert (=> d!1503909 d!1504001))

(assert (=> d!1503909 d!1503889))

(assert (=> d!1503909 d!1503907))

(assert (=> bm!330342 d!1503991))

(assert (=> b!4722914 d!1503981))

(declare-fun d!1504037 () Bool)

(declare-fun res!1998353 () Bool)

(declare-fun e!2945746 () Bool)

(assert (=> d!1504037 (=> res!1998353 e!2945746)))

(assert (=> d!1504037 (= res!1998353 ((_ is Nil!52830) (toList!5917 lt!1887727)))))

(assert (=> d!1504037 (= (forall!11590 (toList!5917 lt!1887727) lambda!215672) e!2945746)))

(declare-fun b!4723269 () Bool)

(declare-fun e!2945747 () Bool)

(assert (=> b!4723269 (= e!2945746 e!2945747)))

(declare-fun res!1998354 () Bool)

(assert (=> b!4723269 (=> (not res!1998354) (not e!2945747))))

(assert (=> b!4723269 (= res!1998354 (dynLambda!21821 lambda!215672 (h!59177 (toList!5917 lt!1887727))))))

(declare-fun b!4723270 () Bool)

(assert (=> b!4723270 (= e!2945747 (forall!11590 (t!360220 (toList!5917 lt!1887727)) lambda!215672))))

(assert (= (and d!1504037 (not res!1998353)) b!4723269))

(assert (= (and b!4723269 res!1998354) b!4723270))

(declare-fun b_lambda!178781 () Bool)

(assert (=> (not b_lambda!178781) (not b!4723269)))

(declare-fun m!5659421 () Bool)

(assert (=> b!4723269 m!5659421))

(declare-fun m!5659423 () Bool)

(assert (=> b!4723270 m!5659423))

(assert (=> b!4722977 d!1504037))

(declare-fun d!1504039 () Bool)

(assert (=> d!1504039 (= (invariantList!1511 (toList!5917 lt!1888111)) (noDuplicatedKeys!374 (toList!5917 lt!1888111)))))

(declare-fun bs!1112573 () Bool)

(assert (= bs!1112573 d!1504039))

(declare-fun m!5659425 () Bool)

(assert (=> bs!1112573 m!5659425))

(assert (=> b!4722972 d!1504039))

(declare-fun d!1504041 () Bool)

(declare-fun res!1998355 () Bool)

(declare-fun e!2945748 () Bool)

(assert (=> d!1504041 (=> res!1998355 e!2945748)))

(assert (=> d!1504041 (= res!1998355 ((_ is Nil!52830) (toList!5917 lt!1887727)))))

(assert (=> d!1504041 (= (forall!11590 (toList!5917 lt!1887727) lambda!215665) e!2945748)))

(declare-fun b!4723271 () Bool)

(declare-fun e!2945749 () Bool)

(assert (=> b!4723271 (= e!2945748 e!2945749)))

(declare-fun res!1998356 () Bool)

(assert (=> b!4723271 (=> (not res!1998356) (not e!2945749))))

(assert (=> b!4723271 (= res!1998356 (dynLambda!21821 lambda!215665 (h!59177 (toList!5917 lt!1887727))))))

(declare-fun b!4723272 () Bool)

(assert (=> b!4723272 (= e!2945749 (forall!11590 (t!360220 (toList!5917 lt!1887727)) lambda!215665))))

(assert (= (and d!1504041 (not res!1998355)) b!4723271))

(assert (= (and b!4723271 res!1998356) b!4723272))

(declare-fun b_lambda!178783 () Bool)

(assert (=> (not b_lambda!178783) (not b!4723271)))

(declare-fun m!5659427 () Bool)

(assert (=> b!4723271 m!5659427))

(declare-fun m!5659429 () Bool)

(assert (=> b!4723272 m!5659429))

(assert (=> b!4722956 d!1504041))

(assert (=> b!4722912 d!1503975))

(assert (=> b!4722912 d!1503981))

(declare-fun bs!1112574 () Bool)

(declare-fun b!4723275 () Bool)

(assert (= bs!1112574 (and b!4723275 b!4722954)))

(declare-fun lambda!215689 () Int)

(assert (=> bs!1112574 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215689 lambda!215662))))

(declare-fun bs!1112575 () Bool)

(assert (= bs!1112575 (and b!4723275 d!1503873)))

(assert (=> bs!1112575 (not (= lambda!215689 lambda!215656))))

(declare-fun bs!1112576 () Bool)

(assert (= bs!1112576 (and b!4723275 b!4722976)))

(assert (=> bs!1112576 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888135) (= lambda!215689 lambda!215672))))

(declare-fun bs!1112577 () Bool)

(assert (= bs!1112577 (and b!4723275 b!4722969)))

(assert (=> bs!1112577 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215689 lambda!215667))))

(declare-fun bs!1112578 () Bool)

(assert (= bs!1112578 (and b!4723275 d!1503907)))

(assert (=> bs!1112578 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888136) (= lambda!215689 lambda!215673))))

(declare-fun bs!1112579 () Bool)

(assert (= bs!1112579 (and b!4723275 d!1503991)))

(assert (=> bs!1112579 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215689 lambda!215688))))

(declare-fun bs!1112580 () Bool)

(assert (= bs!1112580 (and b!4723275 b!4723054)))

(assert (=> bs!1112580 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215689 lambda!215676))))

(declare-fun bs!1112581 () Bool)

(assert (= bs!1112581 (and b!4723275 b!4722971)))

(assert (=> bs!1112581 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215689 lambda!215666))))

(declare-fun bs!1112582 () Bool)

(assert (= bs!1112582 (and b!4723275 d!1503963)))

(assert (=> bs!1112582 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888169) (= lambda!215689 lambda!215678))))

(declare-fun bs!1112583 () Bool)

(assert (= bs!1112583 (and b!4723275 b!4722847)))

(assert (=> bs!1112583 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215689 lambda!215638))))

(declare-fun bs!1112584 () Bool)

(assert (= bs!1112584 (and b!4723275 d!1503899)))

(assert (=> bs!1112584 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888111) (= lambda!215689 lambda!215669))))

(declare-fun bs!1112585 () Bool)

(assert (= bs!1112585 (and b!4723275 d!1503889)))

(assert (=> bs!1112585 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888078) (= lambda!215689 lambda!215665))))

(declare-fun bs!1112586 () Bool)

(assert (= bs!1112586 (and b!4723275 b!4722949)))

(assert (=> bs!1112586 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215689 lambda!215658))))

(declare-fun bs!1112587 () Bool)

(assert (= bs!1112587 (and b!4723275 b!4722845)))

(assert (=> bs!1112587 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887947) (= lambda!215689 lambda!215640))))

(declare-fun bs!1112588 () Bool)

(assert (= bs!1112588 (and b!4723275 d!1503887)))

(assert (=> bs!1112588 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888057) (= lambda!215689 lambda!215661))))

(assert (=> bs!1112577 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888110) (= lambda!215689 lambda!215668))))

(assert (=> bs!1112580 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888168) (= lambda!215689 lambda!215677))))

(declare-fun bs!1112589 () Bool)

(assert (= bs!1112589 (and b!4723275 b!4722952)))

(assert (=> bs!1112589 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215689 lambda!215663))))

(declare-fun bs!1112590 () Bool)

(assert (= bs!1112590 (and b!4723275 b!4723056)))

(assert (=> bs!1112590 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215689 lambda!215675))))

(declare-fun bs!1112591 () Bool)

(assert (= bs!1112591 (and b!4723275 b!4722978)))

(assert (=> bs!1112591 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215689 lambda!215670))))

(declare-fun bs!1112592 () Bool)

(assert (= bs!1112592 (and b!4723275 d!1503799)))

(assert (=> bs!1112592 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887948) (= lambda!215689 lambda!215641))))

(declare-fun bs!1112593 () Bool)

(assert (= bs!1112593 (and b!4723275 b!4722947)))

(assert (=> bs!1112593 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888056) (= lambda!215689 lambda!215660))))

(declare-fun bs!1112594 () Bool)

(assert (= bs!1112594 (and b!4723275 d!1503911)))

(assert (=> bs!1112594 (not (= lambda!215689 lambda!215674))))

(assert (=> bs!1112587 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215689 lambda!215639))))

(assert (=> bs!1112576 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215689 lambda!215671))))

(assert (=> bs!1112593 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215689 lambda!215659))))

(assert (=> bs!1112589 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888077) (= lambda!215689 lambda!215664))))

(assert (=> b!4723275 true))

(declare-fun bs!1112595 () Bool)

(declare-fun b!4723273 () Bool)

(assert (= bs!1112595 (and b!4723273 b!4722954)))

(declare-fun lambda!215690 () Int)

(assert (=> bs!1112595 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215690 lambda!215662))))

(declare-fun bs!1112596 () Bool)

(assert (= bs!1112596 (and b!4723273 d!1503873)))

(assert (=> bs!1112596 (not (= lambda!215690 lambda!215656))))

(declare-fun bs!1112597 () Bool)

(assert (= bs!1112597 (and b!4723273 b!4722976)))

(assert (=> bs!1112597 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888135) (= lambda!215690 lambda!215672))))

(declare-fun bs!1112598 () Bool)

(assert (= bs!1112598 (and b!4723273 b!4722969)))

(assert (=> bs!1112598 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215690 lambda!215667))))

(declare-fun bs!1112599 () Bool)

(assert (= bs!1112599 (and b!4723273 d!1503907)))

(assert (=> bs!1112599 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888136) (= lambda!215690 lambda!215673))))

(declare-fun bs!1112600 () Bool)

(assert (= bs!1112600 (and b!4723273 d!1503991)))

(assert (=> bs!1112600 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215690 lambda!215688))))

(declare-fun bs!1112601 () Bool)

(assert (= bs!1112601 (and b!4723273 b!4723054)))

(assert (=> bs!1112601 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215690 lambda!215676))))

(declare-fun bs!1112602 () Bool)

(assert (= bs!1112602 (and b!4723273 b!4722971)))

(assert (=> bs!1112602 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215690 lambda!215666))))

(declare-fun bs!1112603 () Bool)

(assert (= bs!1112603 (and b!4723273 d!1503963)))

(assert (=> bs!1112603 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888169) (= lambda!215690 lambda!215678))))

(declare-fun bs!1112604 () Bool)

(assert (= bs!1112604 (and b!4723273 b!4722847)))

(assert (=> bs!1112604 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215690 lambda!215638))))

(declare-fun bs!1112605 () Bool)

(assert (= bs!1112605 (and b!4723273 d!1503899)))

(assert (=> bs!1112605 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888111) (= lambda!215690 lambda!215669))))

(declare-fun bs!1112606 () Bool)

(assert (= bs!1112606 (and b!4723273 d!1503889)))

(assert (=> bs!1112606 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888078) (= lambda!215690 lambda!215665))))

(declare-fun bs!1112607 () Bool)

(assert (= bs!1112607 (and b!4723273 b!4722949)))

(assert (=> bs!1112607 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215690 lambda!215658))))

(declare-fun bs!1112608 () Bool)

(assert (= bs!1112608 (and b!4723273 b!4722845)))

(assert (=> bs!1112608 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887947) (= lambda!215690 lambda!215640))))

(declare-fun bs!1112609 () Bool)

(assert (= bs!1112609 (and b!4723273 d!1503887)))

(assert (=> bs!1112609 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888057) (= lambda!215690 lambda!215661))))

(assert (=> bs!1112598 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888110) (= lambda!215690 lambda!215668))))

(assert (=> bs!1112601 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888168) (= lambda!215690 lambda!215677))))

(declare-fun bs!1112610 () Bool)

(assert (= bs!1112610 (and b!4723273 b!4722952)))

(assert (=> bs!1112610 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215690 lambda!215663))))

(declare-fun bs!1112611 () Bool)

(assert (= bs!1112611 (and b!4723273 b!4723056)))

(assert (=> bs!1112611 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215690 lambda!215675))))

(declare-fun bs!1112612 () Bool)

(assert (= bs!1112612 (and b!4723273 b!4722978)))

(assert (=> bs!1112612 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215690 lambda!215670))))

(declare-fun bs!1112613 () Bool)

(assert (= bs!1112613 (and b!4723273 d!1503799)))

(assert (=> bs!1112613 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887948) (= lambda!215690 lambda!215641))))

(declare-fun bs!1112614 () Bool)

(assert (= bs!1112614 (and b!4723273 b!4723275)))

(assert (=> bs!1112614 (= lambda!215690 lambda!215689)))

(declare-fun bs!1112615 () Bool)

(assert (= bs!1112615 (and b!4723273 b!4722947)))

(assert (=> bs!1112615 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888056) (= lambda!215690 lambda!215660))))

(declare-fun bs!1112616 () Bool)

(assert (= bs!1112616 (and b!4723273 d!1503911)))

(assert (=> bs!1112616 (not (= lambda!215690 lambda!215674))))

(assert (=> bs!1112608 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215690 lambda!215639))))

(assert (=> bs!1112597 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215690 lambda!215671))))

(assert (=> bs!1112615 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1887727) (= lambda!215690 lambda!215659))))

(assert (=> bs!1112610 (= (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888077) (= lambda!215690 lambda!215664))))

(assert (=> b!4723273 true))

(declare-fun lambda!215691 () Int)

(declare-fun lt!1888294 () ListMap!5281)

(assert (=> bs!1112595 (= (= lt!1888294 lt!1887727) (= lambda!215691 lambda!215662))))

(assert (=> bs!1112596 (not (= lambda!215691 lambda!215656))))

(assert (=> bs!1112597 (= (= lt!1888294 lt!1888135) (= lambda!215691 lambda!215672))))

(assert (=> bs!1112598 (= (= lt!1888294 lt!1887727) (= lambda!215691 lambda!215667))))

(assert (=> bs!1112599 (= (= lt!1888294 lt!1888136) (= lambda!215691 lambda!215673))))

(assert (=> bs!1112601 (= (= lt!1888294 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215691 lambda!215676))))

(assert (=> bs!1112602 (= (= lt!1888294 lt!1887727) (= lambda!215691 lambda!215666))))

(assert (=> bs!1112603 (= (= lt!1888294 lt!1888169) (= lambda!215691 lambda!215678))))

(assert (=> bs!1112604 (= (= lt!1888294 lt!1887727) (= lambda!215691 lambda!215638))))

(assert (=> bs!1112605 (= (= lt!1888294 lt!1888111) (= lambda!215691 lambda!215669))))

(assert (=> bs!1112606 (= (= lt!1888294 lt!1888078) (= lambda!215691 lambda!215665))))

(assert (=> bs!1112607 (= (= lt!1888294 lt!1887727) (= lambda!215691 lambda!215658))))

(assert (=> bs!1112608 (= (= lt!1888294 lt!1887947) (= lambda!215691 lambda!215640))))

(assert (=> bs!1112609 (= (= lt!1888294 lt!1888057) (= lambda!215691 lambda!215661))))

(assert (=> bs!1112598 (= (= lt!1888294 lt!1888110) (= lambda!215691 lambda!215668))))

(assert (=> bs!1112601 (= (= lt!1888294 lt!1888168) (= lambda!215691 lambda!215677))))

(assert (=> bs!1112610 (= (= lt!1888294 lt!1887727) (= lambda!215691 lambda!215663))))

(assert (=> bs!1112611 (= (= lt!1888294 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215691 lambda!215675))))

(assert (=> bs!1112612 (= (= lt!1888294 lt!1887727) (= lambda!215691 lambda!215670))))

(assert (=> bs!1112613 (= (= lt!1888294 lt!1887948) (= lambda!215691 lambda!215641))))

(assert (=> bs!1112614 (= (= lt!1888294 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215691 lambda!215689))))

(assert (=> bs!1112615 (= (= lt!1888294 lt!1888056) (= lambda!215691 lambda!215660))))

(assert (=> bs!1112616 (not (= lambda!215691 lambda!215674))))

(assert (=> bs!1112608 (= (= lt!1888294 lt!1887727) (= lambda!215691 lambda!215639))))

(assert (=> bs!1112597 (= (= lt!1888294 lt!1887727) (= lambda!215691 lambda!215671))))

(assert (=> bs!1112615 (= (= lt!1888294 lt!1887727) (= lambda!215691 lambda!215659))))

(assert (=> bs!1112610 (= (= lt!1888294 lt!1888077) (= lambda!215691 lambda!215664))))

(assert (=> b!4723273 (= (= lt!1888294 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215691 lambda!215690))))

(assert (=> bs!1112600 (= (= lt!1888294 lt!1887727) (= lambda!215691 lambda!215688))))

(assert (=> b!4723273 true))

(declare-fun bs!1112626 () Bool)

(declare-fun d!1504043 () Bool)

(assert (= bs!1112626 (and d!1504043 b!4722954)))

(declare-fun lambda!215695 () Int)

(declare-fun lt!1888295 () ListMap!5281)

(assert (=> bs!1112626 (= (= lt!1888295 lt!1887727) (= lambda!215695 lambda!215662))))

(declare-fun bs!1112627 () Bool)

(assert (= bs!1112627 (and d!1504043 d!1503873)))

(assert (=> bs!1112627 (not (= lambda!215695 lambda!215656))))

(declare-fun bs!1112629 () Bool)

(assert (= bs!1112629 (and d!1504043 b!4722976)))

(assert (=> bs!1112629 (= (= lt!1888295 lt!1888135) (= lambda!215695 lambda!215672))))

(declare-fun bs!1112631 () Bool)

(assert (= bs!1112631 (and d!1504043 b!4722969)))

(assert (=> bs!1112631 (= (= lt!1888295 lt!1887727) (= lambda!215695 lambda!215667))))

(declare-fun bs!1112633 () Bool)

(assert (= bs!1112633 (and d!1504043 d!1503907)))

(assert (=> bs!1112633 (= (= lt!1888295 lt!1888136) (= lambda!215695 lambda!215673))))

(declare-fun bs!1112634 () Bool)

(assert (= bs!1112634 (and d!1504043 b!4723054)))

(assert (=> bs!1112634 (= (= lt!1888295 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215695 lambda!215676))))

(declare-fun bs!1112636 () Bool)

(assert (= bs!1112636 (and d!1504043 b!4722971)))

(assert (=> bs!1112636 (= (= lt!1888295 lt!1887727) (= lambda!215695 lambda!215666))))

(declare-fun bs!1112638 () Bool)

(assert (= bs!1112638 (and d!1504043 d!1503963)))

(assert (=> bs!1112638 (= (= lt!1888295 lt!1888169) (= lambda!215695 lambda!215678))))

(declare-fun bs!1112640 () Bool)

(assert (= bs!1112640 (and d!1504043 b!4722847)))

(assert (=> bs!1112640 (= (= lt!1888295 lt!1887727) (= lambda!215695 lambda!215638))))

(declare-fun bs!1112642 () Bool)

(assert (= bs!1112642 (and d!1504043 d!1503899)))

(assert (=> bs!1112642 (= (= lt!1888295 lt!1888111) (= lambda!215695 lambda!215669))))

(declare-fun bs!1112643 () Bool)

(assert (= bs!1112643 (and d!1504043 d!1503889)))

(assert (=> bs!1112643 (= (= lt!1888295 lt!1888078) (= lambda!215695 lambda!215665))))

(declare-fun bs!1112645 () Bool)

(assert (= bs!1112645 (and d!1504043 b!4722949)))

(assert (=> bs!1112645 (= (= lt!1888295 lt!1887727) (= lambda!215695 lambda!215658))))

(declare-fun bs!1112646 () Bool)

(assert (= bs!1112646 (and d!1504043 b!4722845)))

(assert (=> bs!1112646 (= (= lt!1888295 lt!1887947) (= lambda!215695 lambda!215640))))

(declare-fun bs!1112647 () Bool)

(assert (= bs!1112647 (and d!1504043 d!1503887)))

(assert (=> bs!1112647 (= (= lt!1888295 lt!1888057) (= lambda!215695 lambda!215661))))

(assert (=> bs!1112631 (= (= lt!1888295 lt!1888110) (= lambda!215695 lambda!215668))))

(assert (=> bs!1112634 (= (= lt!1888295 lt!1888168) (= lambda!215695 lambda!215677))))

(declare-fun bs!1112649 () Bool)

(assert (= bs!1112649 (and d!1504043 b!4723273)))

(assert (=> bs!1112649 (= (= lt!1888295 lt!1888294) (= lambda!215695 lambda!215691))))

(declare-fun bs!1112650 () Bool)

(assert (= bs!1112650 (and d!1504043 b!4722952)))

(assert (=> bs!1112650 (= (= lt!1888295 lt!1887727) (= lambda!215695 lambda!215663))))

(declare-fun bs!1112651 () Bool)

(assert (= bs!1112651 (and d!1504043 b!4723056)))

(assert (=> bs!1112651 (= (= lt!1888295 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215695 lambda!215675))))

(declare-fun bs!1112653 () Bool)

(assert (= bs!1112653 (and d!1504043 b!4722978)))

(assert (=> bs!1112653 (= (= lt!1888295 lt!1887727) (= lambda!215695 lambda!215670))))

(declare-fun bs!1112654 () Bool)

(assert (= bs!1112654 (and d!1504043 d!1503799)))

(assert (=> bs!1112654 (= (= lt!1888295 lt!1887948) (= lambda!215695 lambda!215641))))

(declare-fun bs!1112655 () Bool)

(assert (= bs!1112655 (and d!1504043 b!4723275)))

(assert (=> bs!1112655 (= (= lt!1888295 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215695 lambda!215689))))

(declare-fun bs!1112656 () Bool)

(assert (= bs!1112656 (and d!1504043 b!4722947)))

(assert (=> bs!1112656 (= (= lt!1888295 lt!1888056) (= lambda!215695 lambda!215660))))

(declare-fun bs!1112657 () Bool)

(assert (= bs!1112657 (and d!1504043 d!1503911)))

(assert (=> bs!1112657 (not (= lambda!215695 lambda!215674))))

(assert (=> bs!1112646 (= (= lt!1888295 lt!1887727) (= lambda!215695 lambda!215639))))

(assert (=> bs!1112629 (= (= lt!1888295 lt!1887727) (= lambda!215695 lambda!215671))))

(assert (=> bs!1112656 (= (= lt!1888295 lt!1887727) (= lambda!215695 lambda!215659))))

(assert (=> bs!1112650 (= (= lt!1888295 lt!1888077) (= lambda!215695 lambda!215664))))

(assert (=> bs!1112649 (= (= lt!1888295 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215695 lambda!215690))))

(declare-fun bs!1112658 () Bool)

(assert (= bs!1112658 (and d!1504043 d!1503991)))

(assert (=> bs!1112658 (= (= lt!1888295 lt!1887727) (= lambda!215695 lambda!215688))))

(assert (=> d!1504043 true))

(declare-fun call!330384 () Bool)

(declare-fun c!806666 () Bool)

(declare-fun bm!330378 () Bool)

(assert (=> bm!330378 (= call!330384 (forall!11590 (ite c!806666 (toList!5917 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (_2!30520 (h!59178 (t!360221 (toList!5918 lm!2023))))) (ite c!806666 lambda!215689 lambda!215691)))))

(declare-fun e!2945750 () ListMap!5281)

(assert (=> b!4723273 (= e!2945750 lt!1888294)))

(declare-fun lt!1888289 () ListMap!5281)

(assert (=> b!4723273 (= lt!1888289 (+!2269 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) (h!59177 (_2!30520 (h!59178 (t!360221 (toList!5918 lm!2023)))))))))

(assert (=> b!4723273 (= lt!1888294 (addToMapMapFromBucket!1444 (t!360220 (_2!30520 (h!59178 (t!360221 (toList!5918 lm!2023))))) (+!2269 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) (h!59177 (_2!30520 (h!59178 (t!360221 (toList!5918 lm!2023))))))))))

(declare-fun lt!1888304 () Unit!130119)

(declare-fun call!330385 () Unit!130119)

(assert (=> b!4723273 (= lt!1888304 call!330385)))

(assert (=> b!4723273 (forall!11590 (toList!5917 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) lambda!215690)))

(declare-fun lt!1888292 () Unit!130119)

(assert (=> b!4723273 (= lt!1888292 lt!1888304)))

(assert (=> b!4723273 (forall!11590 (toList!5917 lt!1888289) lambda!215691)))

(declare-fun lt!1888290 () Unit!130119)

(declare-fun Unit!130269 () Unit!130119)

(assert (=> b!4723273 (= lt!1888290 Unit!130269)))

(assert (=> b!4723273 (forall!11590 (t!360220 (_2!30520 (h!59178 (t!360221 (toList!5918 lm!2023))))) lambda!215691)))

(declare-fun lt!1888288 () Unit!130119)

(declare-fun Unit!130270 () Unit!130119)

(assert (=> b!4723273 (= lt!1888288 Unit!130270)))

(declare-fun lt!1888299 () Unit!130119)

(declare-fun Unit!130271 () Unit!130119)

(assert (=> b!4723273 (= lt!1888299 Unit!130271)))

(declare-fun lt!1888302 () Unit!130119)

(assert (=> b!4723273 (= lt!1888302 (forallContained!3639 (toList!5917 lt!1888289) lambda!215691 (h!59177 (_2!30520 (h!59178 (t!360221 (toList!5918 lm!2023)))))))))

(assert (=> b!4723273 (contains!16175 lt!1888289 (_1!30519 (h!59177 (_2!30520 (h!59178 (t!360221 (toList!5918 lm!2023)))))))))

(declare-fun lt!1888305 () Unit!130119)

(declare-fun Unit!130272 () Unit!130119)

(assert (=> b!4723273 (= lt!1888305 Unit!130272)))

(assert (=> b!4723273 (contains!16175 lt!1888294 (_1!30519 (h!59177 (_2!30520 (h!59178 (t!360221 (toList!5918 lm!2023)))))))))

(declare-fun lt!1888298 () Unit!130119)

(declare-fun Unit!130273 () Unit!130119)

(assert (=> b!4723273 (= lt!1888298 Unit!130273)))

(assert (=> b!4723273 call!330384))

(declare-fun lt!1888286 () Unit!130119)

(declare-fun Unit!130274 () Unit!130119)

(assert (=> b!4723273 (= lt!1888286 Unit!130274)))

(assert (=> b!4723273 (forall!11590 (toList!5917 lt!1888289) lambda!215691)))

(declare-fun lt!1888285 () Unit!130119)

(declare-fun Unit!130275 () Unit!130119)

(assert (=> b!4723273 (= lt!1888285 Unit!130275)))

(declare-fun lt!1888296 () Unit!130119)

(declare-fun Unit!130276 () Unit!130119)

(assert (=> b!4723273 (= lt!1888296 Unit!130276)))

(declare-fun lt!1888287 () Unit!130119)

(assert (=> b!4723273 (= lt!1888287 (addForallContainsKeyThenBeforeAdding!796 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888294 (_1!30519 (h!59177 (_2!30520 (h!59178 (t!360221 (toList!5918 lm!2023)))))) (_2!30519 (h!59177 (_2!30520 (h!59178 (t!360221 (toList!5918 lm!2023))))))))))

(assert (=> b!4723273 (forall!11590 (toList!5917 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) lambda!215691)))

(declare-fun lt!1888300 () Unit!130119)

(assert (=> b!4723273 (= lt!1888300 lt!1888287)))

(declare-fun call!330383 () Bool)

(assert (=> b!4723273 call!330383))

(declare-fun lt!1888291 () Unit!130119)

(declare-fun Unit!130277 () Unit!130119)

(assert (=> b!4723273 (= lt!1888291 Unit!130277)))

(declare-fun res!1998357 () Bool)

(assert (=> b!4723273 (= res!1998357 (forall!11590 (_2!30520 (h!59178 (t!360221 (toList!5918 lm!2023)))) lambda!215691))))

(declare-fun e!2945752 () Bool)

(assert (=> b!4723273 (=> (not res!1998357) (not e!2945752))))

(assert (=> b!4723273 e!2945752))

(declare-fun lt!1888297 () Unit!130119)

(declare-fun Unit!130278 () Unit!130119)

(assert (=> b!4723273 (= lt!1888297 Unit!130278)))

(declare-fun e!2945751 () Bool)

(assert (=> d!1504043 e!2945751))

(declare-fun res!1998359 () Bool)

(assert (=> d!1504043 (=> (not res!1998359) (not e!2945751))))

(assert (=> d!1504043 (= res!1998359 (forall!11590 (_2!30520 (h!59178 (t!360221 (toList!5918 lm!2023)))) lambda!215695))))

(assert (=> d!1504043 (= lt!1888295 e!2945750)))

(assert (=> d!1504043 (= c!806666 ((_ is Nil!52830) (_2!30520 (h!59178 (t!360221 (toList!5918 lm!2023))))))))

(assert (=> d!1504043 (noDuplicateKeys!2014 (_2!30520 (h!59178 (t!360221 (toList!5918 lm!2023)))))))

(assert (=> d!1504043 (= (addToMapMapFromBucket!1444 (_2!30520 (h!59178 (t!360221 (toList!5918 lm!2023)))) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) lt!1888295)))

(declare-fun b!4723274 () Bool)

(assert (=> b!4723274 (= e!2945752 (forall!11590 (toList!5917 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) lambda!215691))))

(assert (=> b!4723275 (= e!2945750 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))))))

(declare-fun lt!1888293 () Unit!130119)

(assert (=> b!4723275 (= lt!1888293 call!330385)))

(assert (=> b!4723275 call!330384))

(declare-fun lt!1888303 () Unit!130119)

(assert (=> b!4723275 (= lt!1888303 lt!1888293)))

(assert (=> b!4723275 call!330383))

(declare-fun lt!1888301 () Unit!130119)

(declare-fun Unit!130279 () Unit!130119)

(assert (=> b!4723275 (= lt!1888301 Unit!130279)))

(declare-fun b!4723276 () Bool)

(assert (=> b!4723276 (= e!2945751 (invariantList!1511 (toList!5917 lt!1888295)))))

(declare-fun b!4723277 () Bool)

(declare-fun res!1998358 () Bool)

(assert (=> b!4723277 (=> (not res!1998358) (not e!2945751))))

(assert (=> b!4723277 (= res!1998358 (forall!11590 (toList!5917 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) lambda!215695))))

(declare-fun bm!330379 () Bool)

(assert (=> bm!330379 (= call!330383 (forall!11590 (toList!5917 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (ite c!806666 lambda!215689 lambda!215691)))))

(declare-fun bm!330380 () Bool)

(assert (=> bm!330380 (= call!330385 (lemmaContainsAllItsOwnKeys!797 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))))))

(assert (= (and d!1504043 c!806666) b!4723275))

(assert (= (and d!1504043 (not c!806666)) b!4723273))

(assert (= (and b!4723273 res!1998357) b!4723274))

(assert (= (or b!4723275 b!4723273) bm!330380))

(assert (= (or b!4723275 b!4723273) bm!330379))

(assert (= (or b!4723275 b!4723273) bm!330378))

(assert (= (and d!1504043 res!1998359) b!4723277))

(assert (= (and b!4723277 res!1998358) b!4723276))

(declare-fun m!5659509 () Bool)

(assert (=> bm!330379 m!5659509))

(assert (=> bm!330380 m!5658775))

(declare-fun m!5659511 () Bool)

(assert (=> bm!330380 m!5659511))

(declare-fun m!5659513 () Bool)

(assert (=> b!4723276 m!5659513))

(declare-fun m!5659517 () Bool)

(assert (=> d!1504043 m!5659517))

(declare-fun m!5659519 () Bool)

(assert (=> d!1504043 m!5659519))

(declare-fun m!5659523 () Bool)

(assert (=> b!4723277 m!5659523))

(declare-fun m!5659525 () Bool)

(assert (=> bm!330378 m!5659525))

(declare-fun m!5659527 () Bool)

(assert (=> b!4723273 m!5659527))

(declare-fun m!5659529 () Bool)

(assert (=> b!4723273 m!5659529))

(declare-fun m!5659531 () Bool)

(assert (=> b!4723273 m!5659531))

(declare-fun m!5659533 () Bool)

(assert (=> b!4723273 m!5659533))

(assert (=> b!4723273 m!5658775))

(declare-fun m!5659535 () Bool)

(assert (=> b!4723273 m!5659535))

(declare-fun m!5659537 () Bool)

(assert (=> b!4723273 m!5659537))

(declare-fun m!5659539 () Bool)

(assert (=> b!4723273 m!5659539))

(declare-fun m!5659541 () Bool)

(assert (=> b!4723273 m!5659541))

(declare-fun m!5659543 () Bool)

(assert (=> b!4723273 m!5659543))

(assert (=> b!4723273 m!5659533))

(assert (=> b!4723273 m!5658775))

(assert (=> b!4723273 m!5659537))

(declare-fun m!5659545 () Bool)

(assert (=> b!4723273 m!5659545))

(declare-fun m!5659547 () Bool)

(assert (=> b!4723273 m!5659547))

(assert (=> b!4723274 m!5659529))

(assert (=> b!4722859 d!1504043))

(declare-fun bs!1112660 () Bool)

(declare-fun d!1504071 () Bool)

(assert (= bs!1112660 (and d!1504071 d!1503881)))

(declare-fun lambda!215696 () Int)

(assert (=> bs!1112660 (not (= lambda!215696 lambda!215657))))

(declare-fun bs!1112661 () Bool)

(assert (= bs!1112661 (and d!1504071 d!1503783)))

(assert (=> bs!1112661 (not (= lambda!215696 lambda!215553))))

(declare-fun bs!1112662 () Bool)

(assert (= bs!1112662 (and d!1504071 d!1503871)))

(assert (=> bs!1112662 (= lambda!215696 lambda!215653)))

(declare-fun bs!1112663 () Bool)

(assert (= bs!1112663 (and d!1504071 start!480732)))

(assert (=> bs!1112663 (= lambda!215696 lambda!215550)))

(declare-fun bs!1112664 () Bool)

(assert (= bs!1112664 (and d!1504071 d!1503797)))

(assert (=> bs!1112664 (= lambda!215696 lambda!215560)))

(declare-fun bs!1112665 () Bool)

(assert (= bs!1112665 (and d!1504071 d!1503791)))

(assert (=> bs!1112665 (= lambda!215696 lambda!215558)))

(declare-fun bs!1112666 () Bool)

(assert (= bs!1112666 (and d!1504071 d!1503843)))

(assert (=> bs!1112666 (= lambda!215696 lambda!215642)))

(declare-fun bs!1112667 () Bool)

(assert (= bs!1112667 (and d!1504071 d!1503969)))

(assert (=> bs!1112667 (= lambda!215696 lambda!215679)))

(declare-fun lt!1888309 () ListMap!5281)

(assert (=> d!1504071 (invariantList!1511 (toList!5917 lt!1888309))))

(declare-fun e!2945771 () ListMap!5281)

(assert (=> d!1504071 (= lt!1888309 e!2945771)))

(declare-fun c!806667 () Bool)

(assert (=> d!1504071 (= c!806667 ((_ is Cons!52831) (t!360221 (t!360221 (toList!5918 lm!2023)))))))

(assert (=> d!1504071 (forall!11588 (t!360221 (t!360221 (toList!5918 lm!2023))) lambda!215696)))

(assert (=> d!1504071 (= (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023)))) lt!1888309)))

(declare-fun b!4723296 () Bool)

(assert (=> b!4723296 (= e!2945771 (addToMapMapFromBucket!1444 (_2!30520 (h!59178 (t!360221 (t!360221 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 (t!360221 (t!360221 (toList!5918 lm!2023)))))))))

(declare-fun b!4723297 () Bool)

(assert (=> b!4723297 (= e!2945771 (ListMap!5282 Nil!52830))))

(assert (= (and d!1504071 c!806667) b!4723296))

(assert (= (and d!1504071 (not c!806667)) b!4723297))

(declare-fun m!5659549 () Bool)

(assert (=> d!1504071 m!5659549))

(declare-fun m!5659551 () Bool)

(assert (=> d!1504071 m!5659551))

(declare-fun m!5659553 () Bool)

(assert (=> b!4723296 m!5659553))

(assert (=> b!4723296 m!5659553))

(declare-fun m!5659555 () Bool)

(assert (=> b!4723296 m!5659555))

(assert (=> b!4722859 d!1504071))

(declare-fun d!1504073 () Bool)

(declare-fun res!1998378 () Bool)

(declare-fun e!2945772 () Bool)

(assert (=> d!1504073 (=> res!1998378 e!2945772)))

(assert (=> d!1504073 (= res!1998378 ((_ is Nil!52830) (ite c!806597 (toList!5917 lt!1887727) (Cons!52830 lt!1887722 lt!1887720))))))

(assert (=> d!1504073 (= (forall!11590 (ite c!806597 (toList!5917 lt!1887727) (Cons!52830 lt!1887722 lt!1887720)) (ite c!806597 lambda!215670 lambda!215672)) e!2945772)))

(declare-fun b!4723298 () Bool)

(declare-fun e!2945773 () Bool)

(assert (=> b!4723298 (= e!2945772 e!2945773)))

(declare-fun res!1998379 () Bool)

(assert (=> b!4723298 (=> (not res!1998379) (not e!2945773))))

(assert (=> b!4723298 (= res!1998379 (dynLambda!21821 (ite c!806597 lambda!215670 lambda!215672) (h!59177 (ite c!806597 (toList!5917 lt!1887727) (Cons!52830 lt!1887722 lt!1887720)))))))

(declare-fun b!4723299 () Bool)

(assert (=> b!4723299 (= e!2945773 (forall!11590 (t!360220 (ite c!806597 (toList!5917 lt!1887727) (Cons!52830 lt!1887722 lt!1887720))) (ite c!806597 lambda!215670 lambda!215672)))))

(assert (= (and d!1504073 (not res!1998378)) b!4723298))

(assert (= (and b!4723298 res!1998379) b!4723299))

(declare-fun b_lambda!178799 () Bool)

(assert (=> (not b_lambda!178799) (not b!4723298)))

(declare-fun m!5659565 () Bool)

(assert (=> b!4723298 m!5659565))

(declare-fun m!5659567 () Bool)

(assert (=> b!4723299 m!5659567))

(assert (=> bm!330346 d!1504073))

(declare-fun d!1504081 () Bool)

(declare-fun res!1998380 () Bool)

(declare-fun e!2945776 () Bool)

(assert (=> d!1504081 (=> res!1998380 e!2945776)))

(assert (=> d!1504081 (= res!1998380 ((_ is Nil!52830) (toList!5917 lt!1887727)))))

(assert (=> d!1504081 (= (forall!11590 (toList!5917 lt!1887727) lambda!215668) e!2945776)))

(declare-fun b!4723304 () Bool)

(declare-fun e!2945777 () Bool)

(assert (=> b!4723304 (= e!2945776 e!2945777)))

(declare-fun res!1998381 () Bool)

(assert (=> b!4723304 (=> (not res!1998381) (not e!2945777))))

(assert (=> b!4723304 (= res!1998381 (dynLambda!21821 lambda!215668 (h!59177 (toList!5917 lt!1887727))))))

(declare-fun b!4723305 () Bool)

(assert (=> b!4723305 (= e!2945777 (forall!11590 (t!360220 (toList!5917 lt!1887727)) lambda!215668))))

(assert (= (and d!1504081 (not res!1998380)) b!4723304))

(assert (= (and b!4723304 res!1998381) b!4723305))

(declare-fun b_lambda!178801 () Bool)

(assert (=> (not b_lambda!178801) (not b!4723304)))

(declare-fun m!5659569 () Bool)

(assert (=> b!4723304 m!5659569))

(declare-fun m!5659571 () Bool)

(assert (=> b!4723305 m!5659571))

(assert (=> b!4722970 d!1504081))

(declare-fun d!1504083 () Bool)

(declare-fun res!1998382 () Bool)

(declare-fun e!2945778 () Bool)

(assert (=> d!1504083 (=> res!1998382 e!2945778)))

(assert (=> d!1504083 (= res!1998382 ((_ is Nil!52830) newBucket!218))))

(assert (=> d!1504083 (= (forall!11590 newBucket!218 lambda!215661) e!2945778)))

(declare-fun b!4723306 () Bool)

(declare-fun e!2945779 () Bool)

(assert (=> b!4723306 (= e!2945778 e!2945779)))

(declare-fun res!1998383 () Bool)

(assert (=> b!4723306 (=> (not res!1998383) (not e!2945779))))

(assert (=> b!4723306 (= res!1998383 (dynLambda!21821 lambda!215661 (h!59177 newBucket!218)))))

(declare-fun b!4723307 () Bool)

(assert (=> b!4723307 (= e!2945779 (forall!11590 (t!360220 newBucket!218) lambda!215661))))

(assert (= (and d!1504083 (not res!1998382)) b!4723306))

(assert (= (and b!4723306 res!1998383) b!4723307))

(declare-fun b_lambda!178803 () Bool)

(assert (=> (not b_lambda!178803) (not b!4723306)))

(declare-fun m!5659573 () Bool)

(assert (=> b!4723306 m!5659573))

(declare-fun m!5659575 () Bool)

(assert (=> b!4723307 m!5659575))

(assert (=> d!1503887 d!1504083))

(assert (=> d!1503887 d!1503913))

(declare-fun bs!1112670 () Bool)

(declare-fun b!4723310 () Bool)

(assert (= bs!1112670 (and b!4723310 b!4722954)))

(declare-fun lambda!215697 () Int)

(assert (=> bs!1112670 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215697 lambda!215662))))

(declare-fun bs!1112671 () Bool)

(assert (= bs!1112671 (and b!4723310 d!1503873)))

(assert (=> bs!1112671 (not (= lambda!215697 lambda!215656))))

(declare-fun bs!1112672 () Bool)

(assert (= bs!1112672 (and b!4723310 b!4722976)))

(assert (=> bs!1112672 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888135) (= lambda!215697 lambda!215672))))

(declare-fun bs!1112673 () Bool)

(assert (= bs!1112673 (and b!4723310 b!4722969)))

(assert (=> bs!1112673 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215697 lambda!215667))))

(declare-fun bs!1112674 () Bool)

(assert (= bs!1112674 (and b!4723310 b!4723054)))

(assert (=> bs!1112674 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215697 lambda!215676))))

(declare-fun bs!1112675 () Bool)

(assert (= bs!1112675 (and b!4723310 b!4722971)))

(assert (=> bs!1112675 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215697 lambda!215666))))

(declare-fun bs!1112676 () Bool)

(assert (= bs!1112676 (and b!4723310 d!1503963)))

(assert (=> bs!1112676 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888169) (= lambda!215697 lambda!215678))))

(declare-fun bs!1112677 () Bool)

(assert (= bs!1112677 (and b!4723310 b!4722847)))

(assert (=> bs!1112677 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215697 lambda!215638))))

(declare-fun bs!1112678 () Bool)

(assert (= bs!1112678 (and b!4723310 d!1503899)))

(assert (=> bs!1112678 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888111) (= lambda!215697 lambda!215669))))

(declare-fun bs!1112679 () Bool)

(assert (= bs!1112679 (and b!4723310 d!1503889)))

(assert (=> bs!1112679 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888078) (= lambda!215697 lambda!215665))))

(declare-fun bs!1112680 () Bool)

(assert (= bs!1112680 (and b!4723310 b!4722949)))

(assert (=> bs!1112680 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215697 lambda!215658))))

(declare-fun bs!1112681 () Bool)

(assert (= bs!1112681 (and b!4723310 b!4722845)))

(assert (=> bs!1112681 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887947) (= lambda!215697 lambda!215640))))

(declare-fun bs!1112682 () Bool)

(assert (= bs!1112682 (and b!4723310 d!1503887)))

(assert (=> bs!1112682 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888057) (= lambda!215697 lambda!215661))))

(assert (=> bs!1112673 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888110) (= lambda!215697 lambda!215668))))

(assert (=> bs!1112674 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888168) (= lambda!215697 lambda!215677))))

(declare-fun bs!1112683 () Bool)

(assert (= bs!1112683 (and b!4723310 b!4723273)))

(assert (=> bs!1112683 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888294) (= lambda!215697 lambda!215691))))

(declare-fun bs!1112684 () Bool)

(assert (= bs!1112684 (and b!4723310 b!4722952)))

(assert (=> bs!1112684 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215697 lambda!215663))))

(declare-fun bs!1112685 () Bool)

(assert (= bs!1112685 (and b!4723310 b!4723056)))

(assert (=> bs!1112685 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215697 lambda!215675))))

(declare-fun bs!1112687 () Bool)

(assert (= bs!1112687 (and b!4723310 b!4722978)))

(assert (=> bs!1112687 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215697 lambda!215670))))

(declare-fun bs!1112688 () Bool)

(assert (= bs!1112688 (and b!4723310 d!1503799)))

(assert (=> bs!1112688 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887948) (= lambda!215697 lambda!215641))))

(declare-fun bs!1112689 () Bool)

(assert (= bs!1112689 (and b!4723310 b!4723275)))

(assert (=> bs!1112689 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215697 lambda!215689))))

(declare-fun bs!1112690 () Bool)

(assert (= bs!1112690 (and b!4723310 b!4722947)))

(assert (=> bs!1112690 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888056) (= lambda!215697 lambda!215660))))

(declare-fun bs!1112691 () Bool)

(assert (= bs!1112691 (and b!4723310 d!1503911)))

(assert (=> bs!1112691 (not (= lambda!215697 lambda!215674))))

(assert (=> bs!1112681 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215697 lambda!215639))))

(assert (=> bs!1112672 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215697 lambda!215671))))

(assert (=> bs!1112690 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215697 lambda!215659))))

(assert (=> bs!1112684 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888077) (= lambda!215697 lambda!215664))))

(declare-fun bs!1112692 () Bool)

(assert (= bs!1112692 (and b!4723310 d!1503907)))

(assert (=> bs!1112692 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888136) (= lambda!215697 lambda!215673))))

(declare-fun bs!1112693 () Bool)

(assert (= bs!1112693 (and b!4723310 d!1504043)))

(assert (=> bs!1112693 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888295) (= lambda!215697 lambda!215695))))

(assert (=> bs!1112683 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215697 lambda!215690))))

(declare-fun bs!1112694 () Bool)

(assert (= bs!1112694 (and b!4723310 d!1503991)))

(assert (=> bs!1112694 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215697 lambda!215688))))

(assert (=> b!4723310 true))

(declare-fun bs!1112695 () Bool)

(declare-fun b!4723308 () Bool)

(assert (= bs!1112695 (and b!4723308 b!4722954)))

(declare-fun lambda!215698 () Int)

(assert (=> bs!1112695 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215698 lambda!215662))))

(declare-fun bs!1112696 () Bool)

(assert (= bs!1112696 (and b!4723308 d!1503873)))

(assert (=> bs!1112696 (not (= lambda!215698 lambda!215656))))

(declare-fun bs!1112697 () Bool)

(assert (= bs!1112697 (and b!4723308 b!4722976)))

(assert (=> bs!1112697 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888135) (= lambda!215698 lambda!215672))))

(declare-fun bs!1112698 () Bool)

(assert (= bs!1112698 (and b!4723308 b!4722969)))

(assert (=> bs!1112698 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215698 lambda!215667))))

(declare-fun bs!1112699 () Bool)

(assert (= bs!1112699 (and b!4723308 b!4723054)))

(assert (=> bs!1112699 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215698 lambda!215676))))

(declare-fun bs!1112700 () Bool)

(assert (= bs!1112700 (and b!4723308 b!4722971)))

(assert (=> bs!1112700 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215698 lambda!215666))))

(declare-fun bs!1112701 () Bool)

(assert (= bs!1112701 (and b!4723308 d!1503963)))

(assert (=> bs!1112701 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888169) (= lambda!215698 lambda!215678))))

(declare-fun bs!1112702 () Bool)

(assert (= bs!1112702 (and b!4723308 b!4722847)))

(assert (=> bs!1112702 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215698 lambda!215638))))

(declare-fun bs!1112703 () Bool)

(assert (= bs!1112703 (and b!4723308 d!1503899)))

(assert (=> bs!1112703 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888111) (= lambda!215698 lambda!215669))))

(declare-fun bs!1112704 () Bool)

(assert (= bs!1112704 (and b!4723308 d!1503889)))

(assert (=> bs!1112704 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888078) (= lambda!215698 lambda!215665))))

(declare-fun bs!1112706 () Bool)

(assert (= bs!1112706 (and b!4723308 b!4722949)))

(assert (=> bs!1112706 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215698 lambda!215658))))

(declare-fun bs!1112708 () Bool)

(assert (= bs!1112708 (and b!4723308 b!4722845)))

(assert (=> bs!1112708 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887947) (= lambda!215698 lambda!215640))))

(declare-fun bs!1112710 () Bool)

(assert (= bs!1112710 (and b!4723308 d!1503887)))

(assert (=> bs!1112710 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888057) (= lambda!215698 lambda!215661))))

(assert (=> bs!1112698 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888110) (= lambda!215698 lambda!215668))))

(assert (=> bs!1112699 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888168) (= lambda!215698 lambda!215677))))

(declare-fun bs!1112714 () Bool)

(assert (= bs!1112714 (and b!4723308 b!4723273)))

(assert (=> bs!1112714 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888294) (= lambda!215698 lambda!215691))))

(declare-fun bs!1112716 () Bool)

(assert (= bs!1112716 (and b!4723308 b!4722952)))

(assert (=> bs!1112716 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215698 lambda!215663))))

(declare-fun bs!1112718 () Bool)

(assert (= bs!1112718 (and b!4723308 b!4723056)))

(assert (=> bs!1112718 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215698 lambda!215675))))

(declare-fun bs!1112720 () Bool)

(assert (= bs!1112720 (and b!4723308 b!4722978)))

(assert (=> bs!1112720 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215698 lambda!215670))))

(declare-fun bs!1112721 () Bool)

(assert (= bs!1112721 (and b!4723308 d!1503799)))

(assert (=> bs!1112721 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887948) (= lambda!215698 lambda!215641))))

(declare-fun bs!1112723 () Bool)

(assert (= bs!1112723 (and b!4723308 b!4723275)))

(assert (=> bs!1112723 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215698 lambda!215689))))

(declare-fun bs!1112725 () Bool)

(assert (= bs!1112725 (and b!4723308 b!4722947)))

(assert (=> bs!1112725 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888056) (= lambda!215698 lambda!215660))))

(declare-fun bs!1112727 () Bool)

(assert (= bs!1112727 (and b!4723308 d!1503911)))

(assert (=> bs!1112727 (not (= lambda!215698 lambda!215674))))

(assert (=> bs!1112708 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215698 lambda!215639))))

(declare-fun bs!1112729 () Bool)

(assert (= bs!1112729 (and b!4723308 b!4723310)))

(assert (=> bs!1112729 (= lambda!215698 lambda!215697)))

(assert (=> bs!1112697 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215698 lambda!215671))))

(assert (=> bs!1112725 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215698 lambda!215659))))

(assert (=> bs!1112716 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888077) (= lambda!215698 lambda!215664))))

(declare-fun bs!1112733 () Bool)

(assert (= bs!1112733 (and b!4723308 d!1503907)))

(assert (=> bs!1112733 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888136) (= lambda!215698 lambda!215673))))

(declare-fun bs!1112735 () Bool)

(assert (= bs!1112735 (and b!4723308 d!1504043)))

(assert (=> bs!1112735 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888295) (= lambda!215698 lambda!215695))))

(assert (=> bs!1112714 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215698 lambda!215690))))

(declare-fun bs!1112737 () Bool)

(assert (= bs!1112737 (and b!4723308 d!1503991)))

(assert (=> bs!1112737 (= (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215698 lambda!215688))))

(assert (=> b!4723308 true))

(declare-fun lambda!215700 () Int)

(declare-fun lt!1888322 () ListMap!5281)

(assert (=> bs!1112695 (= (= lt!1888322 lt!1887727) (= lambda!215700 lambda!215662))))

(assert (=> bs!1112696 (not (= lambda!215700 lambda!215656))))

(assert (=> bs!1112697 (= (= lt!1888322 lt!1888135) (= lambda!215700 lambda!215672))))

(assert (=> bs!1112698 (= (= lt!1888322 lt!1887727) (= lambda!215700 lambda!215667))))

(assert (=> bs!1112699 (= (= lt!1888322 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215700 lambda!215676))))

(assert (=> bs!1112700 (= (= lt!1888322 lt!1887727) (= lambda!215700 lambda!215666))))

(assert (=> bs!1112701 (= (= lt!1888322 lt!1888169) (= lambda!215700 lambda!215678))))

(assert (=> bs!1112702 (= (= lt!1888322 lt!1887727) (= lambda!215700 lambda!215638))))

(assert (=> bs!1112703 (= (= lt!1888322 lt!1888111) (= lambda!215700 lambda!215669))))

(assert (=> b!4723308 (= (= lt!1888322 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215700 lambda!215698))))

(assert (=> bs!1112704 (= (= lt!1888322 lt!1888078) (= lambda!215700 lambda!215665))))

(assert (=> bs!1112706 (= (= lt!1888322 lt!1887727) (= lambda!215700 lambda!215658))))

(assert (=> bs!1112708 (= (= lt!1888322 lt!1887947) (= lambda!215700 lambda!215640))))

(assert (=> bs!1112710 (= (= lt!1888322 lt!1888057) (= lambda!215700 lambda!215661))))

(assert (=> bs!1112698 (= (= lt!1888322 lt!1888110) (= lambda!215700 lambda!215668))))

(assert (=> bs!1112699 (= (= lt!1888322 lt!1888168) (= lambda!215700 lambda!215677))))

(assert (=> bs!1112714 (= (= lt!1888322 lt!1888294) (= lambda!215700 lambda!215691))))

(assert (=> bs!1112716 (= (= lt!1888322 lt!1887727) (= lambda!215700 lambda!215663))))

(assert (=> bs!1112718 (= (= lt!1888322 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215700 lambda!215675))))

(assert (=> bs!1112720 (= (= lt!1888322 lt!1887727) (= lambda!215700 lambda!215670))))

(assert (=> bs!1112721 (= (= lt!1888322 lt!1887948) (= lambda!215700 lambda!215641))))

(assert (=> bs!1112723 (= (= lt!1888322 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215700 lambda!215689))))

(assert (=> bs!1112725 (= (= lt!1888322 lt!1888056) (= lambda!215700 lambda!215660))))

(assert (=> bs!1112727 (not (= lambda!215700 lambda!215674))))

(assert (=> bs!1112708 (= (= lt!1888322 lt!1887727) (= lambda!215700 lambda!215639))))

(assert (=> bs!1112729 (= (= lt!1888322 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215700 lambda!215697))))

(assert (=> bs!1112697 (= (= lt!1888322 lt!1887727) (= lambda!215700 lambda!215671))))

(assert (=> bs!1112725 (= (= lt!1888322 lt!1887727) (= lambda!215700 lambda!215659))))

(assert (=> bs!1112716 (= (= lt!1888322 lt!1888077) (= lambda!215700 lambda!215664))))

(assert (=> bs!1112733 (= (= lt!1888322 lt!1888136) (= lambda!215700 lambda!215673))))

(assert (=> bs!1112735 (= (= lt!1888322 lt!1888295) (= lambda!215700 lambda!215695))))

(assert (=> bs!1112714 (= (= lt!1888322 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215700 lambda!215690))))

(assert (=> bs!1112737 (= (= lt!1888322 lt!1887727) (= lambda!215700 lambda!215688))))

(assert (=> b!4723308 true))

(declare-fun bs!1112757 () Bool)

(declare-fun d!1504085 () Bool)

(assert (= bs!1112757 (and d!1504085 b!4722954)))

(declare-fun lambda!215703 () Int)

(declare-fun lt!1888323 () ListMap!5281)

(assert (=> bs!1112757 (= (= lt!1888323 lt!1887727) (= lambda!215703 lambda!215662))))

(declare-fun bs!1112758 () Bool)

(assert (= bs!1112758 (and d!1504085 d!1503873)))

(assert (=> bs!1112758 (not (= lambda!215703 lambda!215656))))

(declare-fun bs!1112759 () Bool)

(assert (= bs!1112759 (and d!1504085 b!4722976)))

(assert (=> bs!1112759 (= (= lt!1888323 lt!1888135) (= lambda!215703 lambda!215672))))

(declare-fun bs!1112760 () Bool)

(assert (= bs!1112760 (and d!1504085 b!4722969)))

(assert (=> bs!1112760 (= (= lt!1888323 lt!1887727) (= lambda!215703 lambda!215667))))

(declare-fun bs!1112761 () Bool)

(assert (= bs!1112761 (and d!1504085 b!4723054)))

(assert (=> bs!1112761 (= (= lt!1888323 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215703 lambda!215676))))

(declare-fun bs!1112762 () Bool)

(assert (= bs!1112762 (and d!1504085 b!4722971)))

(assert (=> bs!1112762 (= (= lt!1888323 lt!1887727) (= lambda!215703 lambda!215666))))

(declare-fun bs!1112763 () Bool)

(assert (= bs!1112763 (and d!1504085 d!1503963)))

(assert (=> bs!1112763 (= (= lt!1888323 lt!1888169) (= lambda!215703 lambda!215678))))

(declare-fun bs!1112764 () Bool)

(assert (= bs!1112764 (and d!1504085 b!4722847)))

(assert (=> bs!1112764 (= (= lt!1888323 lt!1887727) (= lambda!215703 lambda!215638))))

(declare-fun bs!1112765 () Bool)

(assert (= bs!1112765 (and d!1504085 d!1503899)))

(assert (=> bs!1112765 (= (= lt!1888323 lt!1888111) (= lambda!215703 lambda!215669))))

(declare-fun bs!1112766 () Bool)

(assert (= bs!1112766 (and d!1504085 b!4723308)))

(assert (=> bs!1112766 (= (= lt!1888323 lt!1888322) (= lambda!215703 lambda!215700))))

(assert (=> bs!1112766 (= (= lt!1888323 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215703 lambda!215698))))

(declare-fun bs!1112767 () Bool)

(assert (= bs!1112767 (and d!1504085 d!1503889)))

(assert (=> bs!1112767 (= (= lt!1888323 lt!1888078) (= lambda!215703 lambda!215665))))

(declare-fun bs!1112768 () Bool)

(assert (= bs!1112768 (and d!1504085 b!4722949)))

(assert (=> bs!1112768 (= (= lt!1888323 lt!1887727) (= lambda!215703 lambda!215658))))

(declare-fun bs!1112769 () Bool)

(assert (= bs!1112769 (and d!1504085 b!4722845)))

(assert (=> bs!1112769 (= (= lt!1888323 lt!1887947) (= lambda!215703 lambda!215640))))

(declare-fun bs!1112770 () Bool)

(assert (= bs!1112770 (and d!1504085 d!1503887)))

(assert (=> bs!1112770 (= (= lt!1888323 lt!1888057) (= lambda!215703 lambda!215661))))

(assert (=> bs!1112760 (= (= lt!1888323 lt!1888110) (= lambda!215703 lambda!215668))))

(assert (=> bs!1112761 (= (= lt!1888323 lt!1888168) (= lambda!215703 lambda!215677))))

(declare-fun bs!1112771 () Bool)

(assert (= bs!1112771 (and d!1504085 b!4723273)))

(assert (=> bs!1112771 (= (= lt!1888323 lt!1888294) (= lambda!215703 lambda!215691))))

(declare-fun bs!1112772 () Bool)

(assert (= bs!1112772 (and d!1504085 b!4722952)))

(assert (=> bs!1112772 (= (= lt!1888323 lt!1887727) (= lambda!215703 lambda!215663))))

(declare-fun bs!1112773 () Bool)

(assert (= bs!1112773 (and d!1504085 b!4723056)))

(assert (=> bs!1112773 (= (= lt!1888323 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215703 lambda!215675))))

(declare-fun bs!1112774 () Bool)

(assert (= bs!1112774 (and d!1504085 b!4722978)))

(assert (=> bs!1112774 (= (= lt!1888323 lt!1887727) (= lambda!215703 lambda!215670))))

(declare-fun bs!1112775 () Bool)

(assert (= bs!1112775 (and d!1504085 d!1503799)))

(assert (=> bs!1112775 (= (= lt!1888323 lt!1887948) (= lambda!215703 lambda!215641))))

(declare-fun bs!1112776 () Bool)

(assert (= bs!1112776 (and d!1504085 b!4723275)))

(assert (=> bs!1112776 (= (= lt!1888323 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215703 lambda!215689))))

(declare-fun bs!1112777 () Bool)

(assert (= bs!1112777 (and d!1504085 b!4722947)))

(assert (=> bs!1112777 (= (= lt!1888323 lt!1888056) (= lambda!215703 lambda!215660))))

(declare-fun bs!1112778 () Bool)

(assert (= bs!1112778 (and d!1504085 d!1503911)))

(assert (=> bs!1112778 (not (= lambda!215703 lambda!215674))))

(assert (=> bs!1112769 (= (= lt!1888323 lt!1887727) (= lambda!215703 lambda!215639))))

(declare-fun bs!1112781 () Bool)

(assert (= bs!1112781 (and d!1504085 b!4723310)))

(assert (=> bs!1112781 (= (= lt!1888323 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215703 lambda!215697))))

(assert (=> bs!1112759 (= (= lt!1888323 lt!1887727) (= lambda!215703 lambda!215671))))

(assert (=> bs!1112777 (= (= lt!1888323 lt!1887727) (= lambda!215703 lambda!215659))))

(assert (=> bs!1112772 (= (= lt!1888323 lt!1888077) (= lambda!215703 lambda!215664))))

(declare-fun bs!1112785 () Bool)

(assert (= bs!1112785 (and d!1504085 d!1503907)))

(assert (=> bs!1112785 (= (= lt!1888323 lt!1888136) (= lambda!215703 lambda!215673))))

(declare-fun bs!1112787 () Bool)

(assert (= bs!1112787 (and d!1504085 d!1504043)))

(assert (=> bs!1112787 (= (= lt!1888323 lt!1888295) (= lambda!215703 lambda!215695))))

(assert (=> bs!1112771 (= (= lt!1888323 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215703 lambda!215690))))

(declare-fun bs!1112790 () Bool)

(assert (= bs!1112790 (and d!1504085 d!1503991)))

(assert (=> bs!1112790 (= (= lt!1888323 lt!1887727) (= lambda!215703 lambda!215688))))

(assert (=> d!1504085 true))

(declare-fun call!330387 () Bool)

(declare-fun bm!330381 () Bool)

(declare-fun c!806670 () Bool)

(assert (=> bm!330381 (= call!330387 (forall!11590 (ite c!806670 (toList!5917 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (_2!30520 (h!59178 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (ite c!806670 lambda!215697 lambda!215700)))))

(declare-fun e!2945780 () ListMap!5281)

(assert (=> b!4723308 (= e!2945780 lt!1888322)))

(declare-fun lt!1888317 () ListMap!5281)

(assert (=> b!4723308 (= lt!1888317 (+!2269 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) (h!59177 (_2!30520 (h!59178 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))))))))

(assert (=> b!4723308 (= lt!1888322 (addToMapMapFromBucket!1444 (t!360220 (_2!30520 (h!59178 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (+!2269 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) (h!59177 (_2!30520 (h!59178 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))))))))

(declare-fun lt!1888332 () Unit!130119)

(declare-fun call!330388 () Unit!130119)

(assert (=> b!4723308 (= lt!1888332 call!330388)))

(assert (=> b!4723308 (forall!11590 (toList!5917 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) lambda!215698)))

(declare-fun lt!1888320 () Unit!130119)

(assert (=> b!4723308 (= lt!1888320 lt!1888332)))

(assert (=> b!4723308 (forall!11590 (toList!5917 lt!1888317) lambda!215700)))

(declare-fun lt!1888318 () Unit!130119)

(declare-fun Unit!130282 () Unit!130119)

(assert (=> b!4723308 (= lt!1888318 Unit!130282)))

(assert (=> b!4723308 (forall!11590 (t!360220 (_2!30520 (h!59178 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) lambda!215700)))

(declare-fun lt!1888316 () Unit!130119)

(declare-fun Unit!130284 () Unit!130119)

(assert (=> b!4723308 (= lt!1888316 Unit!130284)))

(declare-fun lt!1888327 () Unit!130119)

(declare-fun Unit!130285 () Unit!130119)

(assert (=> b!4723308 (= lt!1888327 Unit!130285)))

(declare-fun lt!1888330 () Unit!130119)

(assert (=> b!4723308 (= lt!1888330 (forallContained!3639 (toList!5917 lt!1888317) lambda!215700 (h!59177 (_2!30520 (h!59178 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))))))))

(assert (=> b!4723308 (contains!16175 lt!1888317 (_1!30519 (h!59177 (_2!30520 (h!59178 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))))))))

(declare-fun lt!1888333 () Unit!130119)

(declare-fun Unit!130286 () Unit!130119)

(assert (=> b!4723308 (= lt!1888333 Unit!130286)))

(assert (=> b!4723308 (contains!16175 lt!1888322 (_1!30519 (h!59177 (_2!30520 (h!59178 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))))))))

(declare-fun lt!1888326 () Unit!130119)

(declare-fun Unit!130287 () Unit!130119)

(assert (=> b!4723308 (= lt!1888326 Unit!130287)))

(assert (=> b!4723308 call!330387))

(declare-fun lt!1888314 () Unit!130119)

(declare-fun Unit!130288 () Unit!130119)

(assert (=> b!4723308 (= lt!1888314 Unit!130288)))

(assert (=> b!4723308 (forall!11590 (toList!5917 lt!1888317) lambda!215700)))

(declare-fun lt!1888313 () Unit!130119)

(declare-fun Unit!130289 () Unit!130119)

(assert (=> b!4723308 (= lt!1888313 Unit!130289)))

(declare-fun lt!1888324 () Unit!130119)

(declare-fun Unit!130291 () Unit!130119)

(assert (=> b!4723308 (= lt!1888324 Unit!130291)))

(declare-fun lt!1888315 () Unit!130119)

(assert (=> b!4723308 (= lt!1888315 (addForallContainsKeyThenBeforeAdding!796 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888322 (_1!30519 (h!59177 (_2!30520 (h!59178 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))))) (_2!30519 (h!59177 (_2!30520 (h!59178 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))))))))

(assert (=> b!4723308 (forall!11590 (toList!5917 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) lambda!215700)))

(declare-fun lt!1888328 () Unit!130119)

(assert (=> b!4723308 (= lt!1888328 lt!1888315)))

(declare-fun call!330386 () Bool)

(assert (=> b!4723308 call!330386))

(declare-fun lt!1888319 () Unit!130119)

(declare-fun Unit!130295 () Unit!130119)

(assert (=> b!4723308 (= lt!1888319 Unit!130295)))

(declare-fun res!1998384 () Bool)

(assert (=> b!4723308 (= res!1998384 (forall!11590 (_2!30520 (h!59178 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lambda!215700))))

(declare-fun e!2945782 () Bool)

(assert (=> b!4723308 (=> (not res!1998384) (not e!2945782))))

(assert (=> b!4723308 e!2945782))

(declare-fun lt!1888325 () Unit!130119)

(declare-fun Unit!130298 () Unit!130119)

(assert (=> b!4723308 (= lt!1888325 Unit!130298)))

(declare-fun e!2945781 () Bool)

(assert (=> d!1504085 e!2945781))

(declare-fun res!1998386 () Bool)

(assert (=> d!1504085 (=> (not res!1998386) (not e!2945781))))

(assert (=> d!1504085 (= res!1998386 (forall!11590 (_2!30520 (h!59178 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lambda!215703))))

(assert (=> d!1504085 (= lt!1888323 e!2945780)))

(assert (=> d!1504085 (= c!806670 ((_ is Nil!52830) (_2!30520 (h!59178 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))))))

(assert (=> d!1504085 (noDuplicateKeys!2014 (_2!30520 (h!59178 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))))))

(assert (=> d!1504085 (= (addToMapMapFromBucket!1444 (_2!30520 (h!59178 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) lt!1888323)))

(declare-fun b!4723309 () Bool)

(assert (=> b!4723309 (= e!2945782 (forall!11590 (toList!5917 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) lambda!215700))))

(assert (=> b!4723310 (= e!2945780 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))))))

(declare-fun lt!1888321 () Unit!130119)

(assert (=> b!4723310 (= lt!1888321 call!330388)))

(assert (=> b!4723310 call!330387))

(declare-fun lt!1888331 () Unit!130119)

(assert (=> b!4723310 (= lt!1888331 lt!1888321)))

(assert (=> b!4723310 call!330386))

(declare-fun lt!1888329 () Unit!130119)

(declare-fun Unit!130303 () Unit!130119)

(assert (=> b!4723310 (= lt!1888329 Unit!130303)))

(declare-fun b!4723311 () Bool)

(assert (=> b!4723311 (= e!2945781 (invariantList!1511 (toList!5917 lt!1888323)))))

(declare-fun b!4723312 () Bool)

(declare-fun res!1998385 () Bool)

(assert (=> b!4723312 (=> (not res!1998385) (not e!2945781))))

(assert (=> b!4723312 (= res!1998385 (forall!11590 (toList!5917 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) lambda!215703))))

(declare-fun bm!330382 () Bool)

(assert (=> bm!330382 (= call!330386 (forall!11590 (toList!5917 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (ite c!806670 lambda!215697 lambda!215700)))))

(declare-fun bm!330383 () Bool)

(assert (=> bm!330383 (= call!330388 (lemmaContainsAllItsOwnKeys!797 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))))))

(assert (= (and d!1504085 c!806670) b!4723310))

(assert (= (and d!1504085 (not c!806670)) b!4723308))

(assert (= (and b!4723308 res!1998384) b!4723309))

(assert (= (or b!4723310 b!4723308) bm!330383))

(assert (= (or b!4723310 b!4723308) bm!330382))

(assert (= (or b!4723310 b!4723308) bm!330381))

(assert (= (and d!1504085 res!1998386) b!4723312))

(assert (= (and b!4723312 res!1998385) b!4723311))

(declare-fun m!5659601 () Bool)

(assert (=> bm!330382 m!5659601))

(assert (=> bm!330383 m!5658539))

(declare-fun m!5659603 () Bool)

(assert (=> bm!330383 m!5659603))

(declare-fun m!5659605 () Bool)

(assert (=> b!4723311 m!5659605))

(declare-fun m!5659607 () Bool)

(assert (=> d!1504085 m!5659607))

(declare-fun m!5659609 () Bool)

(assert (=> d!1504085 m!5659609))

(declare-fun m!5659611 () Bool)

(assert (=> b!4723312 m!5659611))

(declare-fun m!5659613 () Bool)

(assert (=> bm!330381 m!5659613))

(declare-fun m!5659615 () Bool)

(assert (=> b!4723308 m!5659615))

(declare-fun m!5659617 () Bool)

(assert (=> b!4723308 m!5659617))

(declare-fun m!5659619 () Bool)

(assert (=> b!4723308 m!5659619))

(declare-fun m!5659621 () Bool)

(assert (=> b!4723308 m!5659621))

(assert (=> b!4723308 m!5658539))

(declare-fun m!5659623 () Bool)

(assert (=> b!4723308 m!5659623))

(declare-fun m!5659625 () Bool)

(assert (=> b!4723308 m!5659625))

(declare-fun m!5659627 () Bool)

(assert (=> b!4723308 m!5659627))

(declare-fun m!5659629 () Bool)

(assert (=> b!4723308 m!5659629))

(declare-fun m!5659631 () Bool)

(assert (=> b!4723308 m!5659631))

(assert (=> b!4723308 m!5659621))

(assert (=> b!4723308 m!5658539))

(assert (=> b!4723308 m!5659625))

(declare-fun m!5659633 () Bool)

(assert (=> b!4723308 m!5659633))

(declare-fun m!5659635 () Bool)

(assert (=> b!4723308 m!5659635))

(assert (=> b!4723309 m!5659617))

(assert (=> b!4722755 d!1504085))

(declare-fun bs!1112803 () Bool)

(declare-fun d!1504095 () Bool)

(assert (= bs!1112803 (and d!1504095 d!1503881)))

(declare-fun lambda!215705 () Int)

(assert (=> bs!1112803 (not (= lambda!215705 lambda!215657))))

(declare-fun bs!1112804 () Bool)

(assert (= bs!1112804 (and d!1504095 d!1503783)))

(assert (=> bs!1112804 (not (= lambda!215705 lambda!215553))))

(declare-fun bs!1112805 () Bool)

(assert (= bs!1112805 (and d!1504095 start!480732)))

(assert (=> bs!1112805 (= lambda!215705 lambda!215550)))

(declare-fun bs!1112806 () Bool)

(assert (= bs!1112806 (and d!1504095 d!1503797)))

(assert (=> bs!1112806 (= lambda!215705 lambda!215560)))

(declare-fun bs!1112807 () Bool)

(assert (= bs!1112807 (and d!1504095 d!1503791)))

(assert (=> bs!1112807 (= lambda!215705 lambda!215558)))

(declare-fun bs!1112808 () Bool)

(assert (= bs!1112808 (and d!1504095 d!1503871)))

(assert (=> bs!1112808 (= lambda!215705 lambda!215653)))

(declare-fun bs!1112809 () Bool)

(assert (= bs!1112809 (and d!1504095 d!1504071)))

(assert (=> bs!1112809 (= lambda!215705 lambda!215696)))

(declare-fun bs!1112810 () Bool)

(assert (= bs!1112810 (and d!1504095 d!1503843)))

(assert (=> bs!1112810 (= lambda!215705 lambda!215642)))

(declare-fun bs!1112811 () Bool)

(assert (= bs!1112811 (and d!1504095 d!1503969)))

(assert (=> bs!1112811 (= lambda!215705 lambda!215679)))

(declare-fun lt!1888362 () ListMap!5281)

(assert (=> d!1504095 (invariantList!1511 (toList!5917 lt!1888362))))

(declare-fun e!2945791 () ListMap!5281)

(assert (=> d!1504095 (= lt!1888362 e!2945791)))

(declare-fun c!806672 () Bool)

(assert (=> d!1504095 (= c!806672 ((_ is Cons!52831) (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))))))

(assert (=> d!1504095 (forall!11588 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))) lambda!215705)))

(assert (=> d!1504095 (= (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) lt!1888362)))

(declare-fun b!4723324 () Bool)

(assert (=> b!4723324 (= e!2945791 (addToMapMapFromBucket!1444 (_2!30520 (h!59178 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (extractMap!2040 (t!360221 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))))))))

(declare-fun b!4723325 () Bool)

(assert (=> b!4723325 (= e!2945791 (ListMap!5282 Nil!52830))))

(assert (= (and d!1504095 c!806672) b!4723324))

(assert (= (and d!1504095 (not c!806672)) b!4723325))

(declare-fun m!5659673 () Bool)

(assert (=> d!1504095 m!5659673))

(declare-fun m!5659675 () Bool)

(assert (=> d!1504095 m!5659675))

(declare-fun m!5659677 () Bool)

(assert (=> b!4723324 m!5659677))

(assert (=> b!4723324 m!5659677))

(declare-fun m!5659679 () Bool)

(assert (=> b!4723324 m!5659679))

(assert (=> b!4722755 d!1504095))

(declare-fun d!1504099 () Bool)

(declare-fun res!1998399 () Bool)

(declare-fun e!2945798 () Bool)

(assert (=> d!1504099 (=> res!1998399 e!2945798)))

(assert (=> d!1504099 (= res!1998399 ((_ is Nil!52831) (t!360221 lt!1887719)))))

(assert (=> d!1504099 (= (forall!11588 (t!360221 lt!1887719) lambda!215550) e!2945798)))

(declare-fun b!4723335 () Bool)

(declare-fun e!2945799 () Bool)

(assert (=> b!4723335 (= e!2945798 e!2945799)))

(declare-fun res!1998400 () Bool)

(assert (=> b!4723335 (=> (not res!1998400) (not e!2945799))))

(assert (=> b!4723335 (= res!1998400 (dynLambda!21820 lambda!215550 (h!59178 (t!360221 lt!1887719))))))

(declare-fun b!4723336 () Bool)

(assert (=> b!4723336 (= e!2945799 (forall!11588 (t!360221 (t!360221 lt!1887719)) lambda!215550))))

(assert (= (and d!1504099 (not res!1998399)) b!4723335))

(assert (= (and b!4723335 res!1998400) b!4723336))

(declare-fun b_lambda!178807 () Bool)

(assert (=> (not b_lambda!178807) (not b!4723335)))

(declare-fun m!5659685 () Bool)

(assert (=> b!4723335 m!5659685))

(declare-fun m!5659689 () Bool)

(assert (=> b!4723336 m!5659689))

(assert (=> b!4722944 d!1504099))

(declare-fun d!1504101 () Bool)

(declare-fun res!1998401 () Bool)

(declare-fun e!2945800 () Bool)

(assert (=> d!1504101 (=> res!1998401 e!2945800)))

(assert (=> d!1504101 (= res!1998401 ((_ is Nil!52830) (ite c!806596 (toList!5917 lt!1887727) oldBucket!34)))))

(assert (=> d!1504101 (= (forall!11590 (ite c!806596 (toList!5917 lt!1887727) oldBucket!34) (ite c!806596 lambda!215666 lambda!215668)) e!2945800)))

(declare-fun b!4723337 () Bool)

(declare-fun e!2945801 () Bool)

(assert (=> b!4723337 (= e!2945800 e!2945801)))

(declare-fun res!1998402 () Bool)

(assert (=> b!4723337 (=> (not res!1998402) (not e!2945801))))

(assert (=> b!4723337 (= res!1998402 (dynLambda!21821 (ite c!806596 lambda!215666 lambda!215668) (h!59177 (ite c!806596 (toList!5917 lt!1887727) oldBucket!34))))))

(declare-fun b!4723338 () Bool)

(assert (=> b!4723338 (= e!2945801 (forall!11590 (t!360220 (ite c!806596 (toList!5917 lt!1887727) oldBucket!34)) (ite c!806596 lambda!215666 lambda!215668)))))

(assert (= (and d!1504101 (not res!1998401)) b!4723337))

(assert (= (and b!4723337 res!1998402) b!4723338))

(declare-fun b_lambda!178809 () Bool)

(assert (=> (not b_lambda!178809) (not b!4723337)))

(declare-fun m!5659713 () Bool)

(assert (=> b!4723337 m!5659713))

(declare-fun m!5659715 () Bool)

(assert (=> b!4723338 m!5659715))

(assert (=> bm!330343 d!1504101))

(declare-fun d!1504109 () Bool)

(declare-fun res!1998407 () Bool)

(declare-fun e!2945806 () Bool)

(assert (=> d!1504109 (=> res!1998407 e!2945806)))

(assert (=> d!1504109 (= res!1998407 ((_ is Nil!52831) (toList!5918 lm!2023)))))

(assert (=> d!1504109 (= (forall!11588 (toList!5918 lm!2023) lambda!215553) e!2945806)))

(declare-fun b!4723343 () Bool)

(declare-fun e!2945807 () Bool)

(assert (=> b!4723343 (= e!2945806 e!2945807)))

(declare-fun res!1998408 () Bool)

(assert (=> b!4723343 (=> (not res!1998408) (not e!2945807))))

(assert (=> b!4723343 (= res!1998408 (dynLambda!21820 lambda!215553 (h!59178 (toList!5918 lm!2023))))))

(declare-fun b!4723344 () Bool)

(assert (=> b!4723344 (= e!2945807 (forall!11588 (t!360221 (toList!5918 lm!2023)) lambda!215553))))

(assert (= (and d!1504109 (not res!1998407)) b!4723343))

(assert (= (and b!4723343 res!1998408) b!4723344))

(declare-fun b_lambda!178815 () Bool)

(assert (=> (not b_lambda!178815) (not b!4723343)))

(declare-fun m!5659717 () Bool)

(assert (=> b!4723343 m!5659717))

(declare-fun m!5659719 () Bool)

(assert (=> b!4723344 m!5659719))

(assert (=> d!1503783 d!1504109))

(declare-fun d!1504111 () Bool)

(declare-fun e!2945809 () Bool)

(assert (=> d!1504111 e!2945809))

(declare-fun res!1998410 () Bool)

(assert (=> d!1504111 (=> res!1998410 e!2945809)))

(declare-fun e!2945811 () Bool)

(assert (=> d!1504111 (= res!1998410 e!2945811)))

(declare-fun res!1998409 () Bool)

(assert (=> d!1504111 (=> (not res!1998409) (not e!2945811))))

(declare-fun lt!1888378 () Bool)

(assert (=> d!1504111 (= res!1998409 (not lt!1888378))))

(declare-fun lt!1888371 () Bool)

(assert (=> d!1504111 (= lt!1888378 lt!1888371)))

(declare-fun lt!1888372 () Unit!130119)

(declare-fun e!2945812 () Unit!130119)

(assert (=> d!1504111 (= lt!1888372 e!2945812)))

(declare-fun c!806676 () Bool)

(assert (=> d!1504111 (= c!806676 lt!1888371)))

(assert (=> d!1504111 (= lt!1888371 (containsKey!3373 (toList!5917 lt!1888072) (_1!30519 (h!59177 lt!1887720))))))

(assert (=> d!1504111 (= (contains!16175 lt!1888072 (_1!30519 (h!59177 lt!1887720))) lt!1888378)))

(declare-fun b!4723345 () Bool)

(declare-fun e!2945808 () Bool)

(assert (=> b!4723345 (= e!2945808 (contains!16179 (keys!18974 lt!1888072) (_1!30519 (h!59177 lt!1887720))))))

(declare-fun b!4723346 () Bool)

(assert (=> b!4723346 (= e!2945809 e!2945808)))

(declare-fun res!1998411 () Bool)

(assert (=> b!4723346 (=> (not res!1998411) (not e!2945808))))

(assert (=> b!4723346 (= res!1998411 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1888072) (_1!30519 (h!59177 lt!1887720)))))))

(declare-fun b!4723347 () Bool)

(declare-fun e!2945813 () List!52957)

(assert (=> b!4723347 (= e!2945813 (keys!18974 lt!1888072))))

(declare-fun b!4723348 () Bool)

(assert (=> b!4723348 (= e!2945813 (getKeysList!951 (toList!5917 lt!1888072)))))

(declare-fun b!4723349 () Bool)

(declare-fun e!2945810 () Unit!130119)

(assert (=> b!4723349 (= e!2945812 e!2945810)))

(declare-fun c!806678 () Bool)

(declare-fun call!330393 () Bool)

(assert (=> b!4723349 (= c!806678 call!330393)))

(declare-fun b!4723350 () Bool)

(assert (=> b!4723350 false))

(declare-fun lt!1888374 () Unit!130119)

(declare-fun lt!1888377 () Unit!130119)

(assert (=> b!4723350 (= lt!1888374 lt!1888377)))

(assert (=> b!4723350 (containsKey!3373 (toList!5917 lt!1888072) (_1!30519 (h!59177 lt!1887720)))))

(assert (=> b!4723350 (= lt!1888377 (lemmaInGetKeysListThenContainsKey!950 (toList!5917 lt!1888072) (_1!30519 (h!59177 lt!1887720))))))

(declare-fun Unit!130304 () Unit!130119)

(assert (=> b!4723350 (= e!2945810 Unit!130304)))

(declare-fun b!4723351 () Bool)

(declare-fun Unit!130305 () Unit!130119)

(assert (=> b!4723351 (= e!2945810 Unit!130305)))

(declare-fun b!4723352 () Bool)

(assert (=> b!4723352 (= e!2945811 (not (contains!16179 (keys!18974 lt!1888072) (_1!30519 (h!59177 lt!1887720)))))))

(declare-fun bm!330388 () Bool)

(assert (=> bm!330388 (= call!330393 (contains!16179 e!2945813 (_1!30519 (h!59177 lt!1887720))))))

(declare-fun c!806677 () Bool)

(assert (=> bm!330388 (= c!806677 c!806676)))

(declare-fun b!4723353 () Bool)

(declare-fun lt!1888375 () Unit!130119)

(assert (=> b!4723353 (= e!2945812 lt!1888375)))

(declare-fun lt!1888373 () Unit!130119)

(assert (=> b!4723353 (= lt!1888373 (lemmaContainsKeyImpliesGetValueByKeyDefined!1848 (toList!5917 lt!1888072) (_1!30519 (h!59177 lt!1887720))))))

(assert (=> b!4723353 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1888072) (_1!30519 (h!59177 lt!1887720))))))

(declare-fun lt!1888376 () Unit!130119)

(assert (=> b!4723353 (= lt!1888376 lt!1888373)))

(assert (=> b!4723353 (= lt!1888375 (lemmaInListThenGetKeysListContains!946 (toList!5917 lt!1888072) (_1!30519 (h!59177 lt!1887720))))))

(assert (=> b!4723353 call!330393))

(assert (= (and d!1504111 c!806676) b!4723353))

(assert (= (and d!1504111 (not c!806676)) b!4723349))

(assert (= (and b!4723349 c!806678) b!4723350))

(assert (= (and b!4723349 (not c!806678)) b!4723351))

(assert (= (or b!4723353 b!4723349) bm!330388))

(assert (= (and bm!330388 c!806677) b!4723348))

(assert (= (and bm!330388 (not c!806677)) b!4723347))

(assert (= (and d!1504111 res!1998409) b!4723352))

(assert (= (and d!1504111 (not res!1998410)) b!4723346))

(assert (= (and b!4723346 res!1998411) b!4723345))

(declare-fun m!5659721 () Bool)

(assert (=> b!4723353 m!5659721))

(declare-fun m!5659723 () Bool)

(assert (=> b!4723353 m!5659723))

(assert (=> b!4723353 m!5659723))

(declare-fun m!5659725 () Bool)

(assert (=> b!4723353 m!5659725))

(declare-fun m!5659727 () Bool)

(assert (=> b!4723353 m!5659727))

(declare-fun m!5659729 () Bool)

(assert (=> b!4723350 m!5659729))

(declare-fun m!5659731 () Bool)

(assert (=> b!4723350 m!5659731))

(assert (=> b!4723346 m!5659723))

(assert (=> b!4723346 m!5659723))

(assert (=> b!4723346 m!5659725))

(declare-fun m!5659733 () Bool)

(assert (=> b!4723347 m!5659733))

(declare-fun m!5659735 () Bool)

(assert (=> b!4723348 m!5659735))

(assert (=> b!4723352 m!5659733))

(assert (=> b!4723352 m!5659733))

(declare-fun m!5659737 () Bool)

(assert (=> b!4723352 m!5659737))

(assert (=> d!1504111 m!5659729))

(declare-fun m!5659739 () Bool)

(assert (=> bm!330388 m!5659739))

(assert (=> b!4723345 m!5659733))

(assert (=> b!4723345 m!5659733))

(assert (=> b!4723345 m!5659737))

(assert (=> b!4722952 d!1504111))

(declare-fun d!1504113 () Bool)

(declare-fun e!2945817 () Bool)

(assert (=> d!1504113 e!2945817))

(declare-fun res!1998415 () Bool)

(assert (=> d!1504113 (=> res!1998415 e!2945817)))

(declare-fun e!2945819 () Bool)

(assert (=> d!1504113 (= res!1998415 e!2945819)))

(declare-fun res!1998414 () Bool)

(assert (=> d!1504113 (=> (not res!1998414) (not e!2945819))))

(declare-fun lt!1888388 () Bool)

(assert (=> d!1504113 (= res!1998414 (not lt!1888388))))

(declare-fun lt!1888381 () Bool)

(assert (=> d!1504113 (= lt!1888388 lt!1888381)))

(declare-fun lt!1888382 () Unit!130119)

(declare-fun e!2945820 () Unit!130119)

(assert (=> d!1504113 (= lt!1888382 e!2945820)))

(declare-fun c!806679 () Bool)

(assert (=> d!1504113 (= c!806679 lt!1888381)))

(assert (=> d!1504113 (= lt!1888381 (containsKey!3373 (toList!5917 lt!1888077) (_1!30519 (h!59177 lt!1887720))))))

(assert (=> d!1504113 (= (contains!16175 lt!1888077 (_1!30519 (h!59177 lt!1887720))) lt!1888388)))

(declare-fun b!4723356 () Bool)

(declare-fun e!2945816 () Bool)

(assert (=> b!4723356 (= e!2945816 (contains!16179 (keys!18974 lt!1888077) (_1!30519 (h!59177 lt!1887720))))))

(declare-fun b!4723357 () Bool)

(assert (=> b!4723357 (= e!2945817 e!2945816)))

(declare-fun res!1998416 () Bool)

(assert (=> b!4723357 (=> (not res!1998416) (not e!2945816))))

(assert (=> b!4723357 (= res!1998416 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1888077) (_1!30519 (h!59177 lt!1887720)))))))

(declare-fun b!4723358 () Bool)

(declare-fun e!2945821 () List!52957)

(assert (=> b!4723358 (= e!2945821 (keys!18974 lt!1888077))))

(declare-fun b!4723359 () Bool)

(assert (=> b!4723359 (= e!2945821 (getKeysList!951 (toList!5917 lt!1888077)))))

(declare-fun b!4723360 () Bool)

(declare-fun e!2945818 () Unit!130119)

(assert (=> b!4723360 (= e!2945820 e!2945818)))

(declare-fun c!806681 () Bool)

(declare-fun call!330394 () Bool)

(assert (=> b!4723360 (= c!806681 call!330394)))

(declare-fun b!4723361 () Bool)

(assert (=> b!4723361 false))

(declare-fun lt!1888384 () Unit!130119)

(declare-fun lt!1888387 () Unit!130119)

(assert (=> b!4723361 (= lt!1888384 lt!1888387)))

(assert (=> b!4723361 (containsKey!3373 (toList!5917 lt!1888077) (_1!30519 (h!59177 lt!1887720)))))

(assert (=> b!4723361 (= lt!1888387 (lemmaInGetKeysListThenContainsKey!950 (toList!5917 lt!1888077) (_1!30519 (h!59177 lt!1887720))))))

(declare-fun Unit!130306 () Unit!130119)

(assert (=> b!4723361 (= e!2945818 Unit!130306)))

(declare-fun b!4723362 () Bool)

(declare-fun Unit!130307 () Unit!130119)

(assert (=> b!4723362 (= e!2945818 Unit!130307)))

(declare-fun b!4723363 () Bool)

(assert (=> b!4723363 (= e!2945819 (not (contains!16179 (keys!18974 lt!1888077) (_1!30519 (h!59177 lt!1887720)))))))

(declare-fun bm!330389 () Bool)

(assert (=> bm!330389 (= call!330394 (contains!16179 e!2945821 (_1!30519 (h!59177 lt!1887720))))))

(declare-fun c!806680 () Bool)

(assert (=> bm!330389 (= c!806680 c!806679)))

(declare-fun b!4723364 () Bool)

(declare-fun lt!1888385 () Unit!130119)

(assert (=> b!4723364 (= e!2945820 lt!1888385)))

(declare-fun lt!1888383 () Unit!130119)

(assert (=> b!4723364 (= lt!1888383 (lemmaContainsKeyImpliesGetValueByKeyDefined!1848 (toList!5917 lt!1888077) (_1!30519 (h!59177 lt!1887720))))))

(assert (=> b!4723364 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1888077) (_1!30519 (h!59177 lt!1887720))))))

(declare-fun lt!1888386 () Unit!130119)

(assert (=> b!4723364 (= lt!1888386 lt!1888383)))

(assert (=> b!4723364 (= lt!1888385 (lemmaInListThenGetKeysListContains!946 (toList!5917 lt!1888077) (_1!30519 (h!59177 lt!1887720))))))

(assert (=> b!4723364 call!330394))

(assert (= (and d!1504113 c!806679) b!4723364))

(assert (= (and d!1504113 (not c!806679)) b!4723360))

(assert (= (and b!4723360 c!806681) b!4723361))

(assert (= (and b!4723360 (not c!806681)) b!4723362))

(assert (= (or b!4723364 b!4723360) bm!330389))

(assert (= (and bm!330389 c!806680) b!4723359))

(assert (= (and bm!330389 (not c!806680)) b!4723358))

(assert (= (and d!1504113 res!1998414) b!4723363))

(assert (= (and d!1504113 (not res!1998415)) b!4723357))

(assert (= (and b!4723357 res!1998416) b!4723356))

(declare-fun m!5659741 () Bool)

(assert (=> b!4723364 m!5659741))

(declare-fun m!5659743 () Bool)

(assert (=> b!4723364 m!5659743))

(assert (=> b!4723364 m!5659743))

(declare-fun m!5659745 () Bool)

(assert (=> b!4723364 m!5659745))

(declare-fun m!5659747 () Bool)

(assert (=> b!4723364 m!5659747))

(declare-fun m!5659749 () Bool)

(assert (=> b!4723361 m!5659749))

(declare-fun m!5659751 () Bool)

(assert (=> b!4723361 m!5659751))

(assert (=> b!4723357 m!5659743))

(assert (=> b!4723357 m!5659743))

(assert (=> b!4723357 m!5659745))

(declare-fun m!5659753 () Bool)

(assert (=> b!4723358 m!5659753))

(declare-fun m!5659755 () Bool)

(assert (=> b!4723359 m!5659755))

(assert (=> b!4723363 m!5659753))

(assert (=> b!4723363 m!5659753))

(declare-fun m!5659759 () Bool)

(assert (=> b!4723363 m!5659759))

(assert (=> d!1504113 m!5659749))

(declare-fun m!5659763 () Bool)

(assert (=> bm!330389 m!5659763))

(assert (=> b!4723356 m!5659753))

(assert (=> b!4723356 m!5659753))

(assert (=> b!4723356 m!5659759))

(assert (=> b!4722952 d!1504113))

(declare-fun d!1504117 () Bool)

(declare-fun res!1998419 () Bool)

(declare-fun e!2945824 () Bool)

(assert (=> d!1504117 (=> res!1998419 e!2945824)))

(assert (=> d!1504117 (= res!1998419 ((_ is Nil!52830) (toList!5917 lt!1887727)))))

(assert (=> d!1504117 (= (forall!11590 (toList!5917 lt!1887727) lambda!215664) e!2945824)))

(declare-fun b!4723367 () Bool)

(declare-fun e!2945826 () Bool)

(assert (=> b!4723367 (= e!2945824 e!2945826)))

(declare-fun res!1998421 () Bool)

(assert (=> b!4723367 (=> (not res!1998421) (not e!2945826))))

(assert (=> b!4723367 (= res!1998421 (dynLambda!21821 lambda!215664 (h!59177 (toList!5917 lt!1887727))))))

(declare-fun b!4723368 () Bool)

(assert (=> b!4723368 (= e!2945826 (forall!11590 (t!360220 (toList!5917 lt!1887727)) lambda!215664))))

(assert (= (and d!1504117 (not res!1998419)) b!4723367))

(assert (= (and b!4723367 res!1998421) b!4723368))

(declare-fun b_lambda!178821 () Bool)

(assert (=> (not b_lambda!178821) (not b!4723367)))

(declare-fun m!5659768 () Bool)

(assert (=> b!4723367 m!5659768))

(declare-fun m!5659771 () Bool)

(assert (=> b!4723368 m!5659771))

(assert (=> b!4722952 d!1504117))

(declare-fun d!1504119 () Bool)

(declare-fun res!1998422 () Bool)

(declare-fun e!2945827 () Bool)

(assert (=> d!1504119 (=> res!1998422 e!2945827)))

(assert (=> d!1504119 (= res!1998422 ((_ is Nil!52830) (t!360220 lt!1887720)))))

(assert (=> d!1504119 (= (forall!11590 (t!360220 lt!1887720) lambda!215664) e!2945827)))

(declare-fun b!4723370 () Bool)

(declare-fun e!2945828 () Bool)

(assert (=> b!4723370 (= e!2945827 e!2945828)))

(declare-fun res!1998423 () Bool)

(assert (=> b!4723370 (=> (not res!1998423) (not e!2945828))))

(assert (=> b!4723370 (= res!1998423 (dynLambda!21821 lambda!215664 (h!59177 (t!360220 lt!1887720))))))

(declare-fun b!4723371 () Bool)

(assert (=> b!4723371 (= e!2945828 (forall!11590 (t!360220 (t!360220 lt!1887720)) lambda!215664))))

(assert (= (and d!1504119 (not res!1998422)) b!4723370))

(assert (= (and b!4723370 res!1998423) b!4723371))

(declare-fun b_lambda!178823 () Bool)

(assert (=> (not b_lambda!178823) (not b!4723370)))

(declare-fun m!5659775 () Bool)

(assert (=> b!4723370 m!5659775))

(declare-fun m!5659777 () Bool)

(assert (=> b!4723371 m!5659777))

(assert (=> b!4722952 d!1504119))

(declare-fun d!1504123 () Bool)

(declare-fun e!2945829 () Bool)

(assert (=> d!1504123 e!2945829))

(declare-fun res!1998425 () Bool)

(assert (=> d!1504123 (=> (not res!1998425) (not e!2945829))))

(declare-fun lt!1888392 () ListMap!5281)

(assert (=> d!1504123 (= res!1998425 (contains!16175 lt!1888392 (_1!30519 (h!59177 lt!1887720))))))

(declare-fun lt!1888393 () List!52954)

(assert (=> d!1504123 (= lt!1888392 (ListMap!5282 lt!1888393))))

(declare-fun lt!1888390 () Unit!130119)

(declare-fun lt!1888391 () Unit!130119)

(assert (=> d!1504123 (= lt!1888390 lt!1888391)))

(assert (=> d!1504123 (= (getValueByKey!1957 lt!1888393 (_1!30519 (h!59177 lt!1887720))) (Some!12360 (_2!30519 (h!59177 lt!1887720))))))

(assert (=> d!1504123 (= lt!1888391 (lemmaContainsTupThenGetReturnValue!1086 lt!1888393 (_1!30519 (h!59177 lt!1887720)) (_2!30519 (h!59177 lt!1887720))))))

(assert (=> d!1504123 (= lt!1888393 (insertNoDuplicatedKeys!594 (toList!5917 lt!1887727) (_1!30519 (h!59177 lt!1887720)) (_2!30519 (h!59177 lt!1887720))))))

(assert (=> d!1504123 (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888392)))

(declare-fun b!4723372 () Bool)

(declare-fun res!1998424 () Bool)

(assert (=> b!4723372 (=> (not res!1998424) (not e!2945829))))

(assert (=> b!4723372 (= res!1998424 (= (getValueByKey!1957 (toList!5917 lt!1888392) (_1!30519 (h!59177 lt!1887720))) (Some!12360 (_2!30519 (h!59177 lt!1887720)))))))

(declare-fun b!4723373 () Bool)

(assert (=> b!4723373 (= e!2945829 (contains!16180 (toList!5917 lt!1888392) (h!59177 lt!1887720)))))

(assert (= (and d!1504123 res!1998425) b!4723372))

(assert (= (and b!4723372 res!1998424) b!4723373))

(declare-fun m!5659779 () Bool)

(assert (=> d!1504123 m!5659779))

(declare-fun m!5659781 () Bool)

(assert (=> d!1504123 m!5659781))

(declare-fun m!5659783 () Bool)

(assert (=> d!1504123 m!5659783))

(declare-fun m!5659785 () Bool)

(assert (=> d!1504123 m!5659785))

(declare-fun m!5659787 () Bool)

(assert (=> b!4723372 m!5659787))

(declare-fun m!5659789 () Bool)

(assert (=> b!4723373 m!5659789))

(assert (=> b!4722952 d!1504123))

(declare-fun d!1504125 () Bool)

(assert (=> d!1504125 (dynLambda!21821 lambda!215664 (h!59177 lt!1887720))))

(declare-fun lt!1888396 () Unit!130119)

(declare-fun choose!33336 (List!52954 Int tuple2!54450) Unit!130119)

(assert (=> d!1504125 (= lt!1888396 (choose!33336 (toList!5917 lt!1888072) lambda!215664 (h!59177 lt!1887720)))))

(declare-fun e!2945832 () Bool)

(assert (=> d!1504125 e!2945832))

(declare-fun res!1998428 () Bool)

(assert (=> d!1504125 (=> (not res!1998428) (not e!2945832))))

(assert (=> d!1504125 (= res!1998428 (forall!11590 (toList!5917 lt!1888072) lambda!215664))))

(assert (=> d!1504125 (= (forallContained!3639 (toList!5917 lt!1888072) lambda!215664 (h!59177 lt!1887720)) lt!1888396)))

(declare-fun b!4723376 () Bool)

(assert (=> b!4723376 (= e!2945832 (contains!16180 (toList!5917 lt!1888072) (h!59177 lt!1887720)))))

(assert (= (and d!1504125 res!1998428) b!4723376))

(declare-fun b_lambda!178825 () Bool)

(assert (=> (not b_lambda!178825) (not d!1504125)))

(declare-fun m!5659791 () Bool)

(assert (=> d!1504125 m!5659791))

(declare-fun m!5659793 () Bool)

(assert (=> d!1504125 m!5659793))

(assert (=> d!1504125 m!5658975))

(declare-fun m!5659795 () Bool)

(assert (=> b!4723376 m!5659795))

(assert (=> b!4722952 d!1504125))

(declare-fun bs!1112834 () Bool)

(declare-fun d!1504127 () Bool)

(assert (= bs!1112834 (and d!1504127 b!4722954)))

(declare-fun lambda!215715 () Int)

(assert (=> bs!1112834 (= (= lt!1888077 lt!1887727) (= lambda!215715 lambda!215662))))

(declare-fun bs!1112835 () Bool)

(assert (= bs!1112835 (and d!1504127 d!1503873)))

(assert (=> bs!1112835 (not (= lambda!215715 lambda!215656))))

(declare-fun bs!1112836 () Bool)

(assert (= bs!1112836 (and d!1504127 b!4722976)))

(assert (=> bs!1112836 (= (= lt!1888077 lt!1888135) (= lambda!215715 lambda!215672))))

(declare-fun bs!1112837 () Bool)

(assert (= bs!1112837 (and d!1504127 b!4722969)))

(assert (=> bs!1112837 (= (= lt!1888077 lt!1887727) (= lambda!215715 lambda!215667))))

(declare-fun bs!1112838 () Bool)

(assert (= bs!1112838 (and d!1504127 b!4723054)))

(assert (=> bs!1112838 (= (= lt!1888077 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215715 lambda!215676))))

(declare-fun bs!1112839 () Bool)

(assert (= bs!1112839 (and d!1504127 b!4722971)))

(assert (=> bs!1112839 (= (= lt!1888077 lt!1887727) (= lambda!215715 lambda!215666))))

(declare-fun bs!1112840 () Bool)

(assert (= bs!1112840 (and d!1504127 b!4722847)))

(assert (=> bs!1112840 (= (= lt!1888077 lt!1887727) (= lambda!215715 lambda!215638))))

(declare-fun bs!1112841 () Bool)

(assert (= bs!1112841 (and d!1504127 d!1503899)))

(assert (=> bs!1112841 (= (= lt!1888077 lt!1888111) (= lambda!215715 lambda!215669))))

(declare-fun bs!1112842 () Bool)

(assert (= bs!1112842 (and d!1504127 b!4723308)))

(assert (=> bs!1112842 (= (= lt!1888077 lt!1888322) (= lambda!215715 lambda!215700))))

(assert (=> bs!1112842 (= (= lt!1888077 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215715 lambda!215698))))

(declare-fun bs!1112843 () Bool)

(assert (= bs!1112843 (and d!1504127 d!1503889)))

(assert (=> bs!1112843 (= (= lt!1888077 lt!1888078) (= lambda!215715 lambda!215665))))

(declare-fun bs!1112844 () Bool)

(assert (= bs!1112844 (and d!1504127 b!4722949)))

(assert (=> bs!1112844 (= (= lt!1888077 lt!1887727) (= lambda!215715 lambda!215658))))

(declare-fun bs!1112845 () Bool)

(assert (= bs!1112845 (and d!1504127 b!4722845)))

(assert (=> bs!1112845 (= (= lt!1888077 lt!1887947) (= lambda!215715 lambda!215640))))

(declare-fun bs!1112846 () Bool)

(assert (= bs!1112846 (and d!1504127 d!1503887)))

(assert (=> bs!1112846 (= (= lt!1888077 lt!1888057) (= lambda!215715 lambda!215661))))

(assert (=> bs!1112837 (= (= lt!1888077 lt!1888110) (= lambda!215715 lambda!215668))))

(assert (=> bs!1112838 (= (= lt!1888077 lt!1888168) (= lambda!215715 lambda!215677))))

(declare-fun bs!1112847 () Bool)

(assert (= bs!1112847 (and d!1504127 b!4723273)))

(assert (=> bs!1112847 (= (= lt!1888077 lt!1888294) (= lambda!215715 lambda!215691))))

(declare-fun bs!1112849 () Bool)

(assert (= bs!1112849 (and d!1504127 b!4722952)))

(assert (=> bs!1112849 (= (= lt!1888077 lt!1887727) (= lambda!215715 lambda!215663))))

(declare-fun bs!1112850 () Bool)

(assert (= bs!1112850 (and d!1504127 b!4723056)))

(assert (=> bs!1112850 (= (= lt!1888077 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215715 lambda!215675))))

(declare-fun bs!1112851 () Bool)

(assert (= bs!1112851 (and d!1504127 b!4722978)))

(assert (=> bs!1112851 (= (= lt!1888077 lt!1887727) (= lambda!215715 lambda!215670))))

(declare-fun bs!1112853 () Bool)

(assert (= bs!1112853 (and d!1504127 d!1503799)))

(assert (=> bs!1112853 (= (= lt!1888077 lt!1887948) (= lambda!215715 lambda!215641))))

(declare-fun bs!1112855 () Bool)

(assert (= bs!1112855 (and d!1504127 b!4723275)))

(assert (=> bs!1112855 (= (= lt!1888077 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215715 lambda!215689))))

(declare-fun bs!1112857 () Bool)

(assert (= bs!1112857 (and d!1504127 b!4722947)))

(assert (=> bs!1112857 (= (= lt!1888077 lt!1888056) (= lambda!215715 lambda!215660))))

(declare-fun bs!1112859 () Bool)

(assert (= bs!1112859 (and d!1504127 d!1503911)))

(assert (=> bs!1112859 (not (= lambda!215715 lambda!215674))))

(assert (=> bs!1112845 (= (= lt!1888077 lt!1887727) (= lambda!215715 lambda!215639))))

(declare-fun bs!1112862 () Bool)

(assert (= bs!1112862 (and d!1504127 b!4723310)))

(assert (=> bs!1112862 (= (= lt!1888077 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215715 lambda!215697))))

(assert (=> bs!1112836 (= (= lt!1888077 lt!1887727) (= lambda!215715 lambda!215671))))

(assert (=> bs!1112857 (= (= lt!1888077 lt!1887727) (= lambda!215715 lambda!215659))))

(assert (=> bs!1112849 (= lambda!215715 lambda!215664)))

(declare-fun bs!1112866 () Bool)

(assert (= bs!1112866 (and d!1504127 d!1503907)))

(assert (=> bs!1112866 (= (= lt!1888077 lt!1888136) (= lambda!215715 lambda!215673))))

(declare-fun bs!1112868 () Bool)

(assert (= bs!1112868 (and d!1504127 d!1504043)))

(assert (=> bs!1112868 (= (= lt!1888077 lt!1888295) (= lambda!215715 lambda!215695))))

(assert (=> bs!1112847 (= (= lt!1888077 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215715 lambda!215690))))

(declare-fun bs!1112871 () Bool)

(assert (= bs!1112871 (and d!1504127 d!1503991)))

(assert (=> bs!1112871 (= (= lt!1888077 lt!1887727) (= lambda!215715 lambda!215688))))

(declare-fun bs!1112873 () Bool)

(assert (= bs!1112873 (and d!1504127 d!1504085)))

(assert (=> bs!1112873 (= (= lt!1888077 lt!1888323) (= lambda!215715 lambda!215703))))

(declare-fun bs!1112874 () Bool)

(assert (= bs!1112874 (and d!1504127 d!1503963)))

(assert (=> bs!1112874 (= (= lt!1888077 lt!1888169) (= lambda!215715 lambda!215678))))

(assert (=> d!1504127 true))

(assert (=> d!1504127 (forall!11590 (toList!5917 lt!1887727) lambda!215715)))

(declare-fun lt!1888410 () Unit!130119)

(declare-fun choose!33338 (ListMap!5281 ListMap!5281 K!14185 V!14431) Unit!130119)

(assert (=> d!1504127 (= lt!1888410 (choose!33338 lt!1887727 lt!1888077 (_1!30519 (h!59177 lt!1887720)) (_2!30519 (h!59177 lt!1887720))))))

(assert (=> d!1504127 (forall!11590 (toList!5917 (+!2269 lt!1887727 (tuple2!54451 (_1!30519 (h!59177 lt!1887720)) (_2!30519 (h!59177 lt!1887720))))) lambda!215715)))

(assert (=> d!1504127 (= (addForallContainsKeyThenBeforeAdding!796 lt!1887727 lt!1888077 (_1!30519 (h!59177 lt!1887720)) (_2!30519 (h!59177 lt!1887720))) lt!1888410)))

(declare-fun bs!1112881 () Bool)

(assert (= bs!1112881 d!1504127))

(declare-fun m!5659829 () Bool)

(assert (=> bs!1112881 m!5659829))

(declare-fun m!5659831 () Bool)

(assert (=> bs!1112881 m!5659831))

(declare-fun m!5659833 () Bool)

(assert (=> bs!1112881 m!5659833))

(declare-fun m!5659835 () Bool)

(assert (=> bs!1112881 m!5659835))

(assert (=> b!4722952 d!1504127))

(declare-fun d!1504137 () Bool)

(declare-fun res!1998439 () Bool)

(declare-fun e!2945846 () Bool)

(assert (=> d!1504137 (=> res!1998439 e!2945846)))

(assert (=> d!1504137 (= res!1998439 ((_ is Nil!52830) (toList!5917 lt!1887727)))))

(assert (=> d!1504137 (= (forall!11590 (toList!5917 lt!1887727) lambda!215663) e!2945846)))

(declare-fun b!4723397 () Bool)

(declare-fun e!2945847 () Bool)

(assert (=> b!4723397 (= e!2945846 e!2945847)))

(declare-fun res!1998440 () Bool)

(assert (=> b!4723397 (=> (not res!1998440) (not e!2945847))))

(assert (=> b!4723397 (= res!1998440 (dynLambda!21821 lambda!215663 (h!59177 (toList!5917 lt!1887727))))))

(declare-fun b!4723398 () Bool)

(assert (=> b!4723398 (= e!2945847 (forall!11590 (t!360220 (toList!5917 lt!1887727)) lambda!215663))))

(assert (= (and d!1504137 (not res!1998439)) b!4723397))

(assert (= (and b!4723397 res!1998440) b!4723398))

(declare-fun b_lambda!178831 () Bool)

(assert (=> (not b_lambda!178831) (not b!4723397)))

(declare-fun m!5659837 () Bool)

(assert (=> b!4723397 m!5659837))

(declare-fun m!5659839 () Bool)

(assert (=> b!4723398 m!5659839))

(assert (=> b!4722952 d!1504137))

(declare-fun bs!1112891 () Bool)

(declare-fun b!4723401 () Bool)

(assert (= bs!1112891 (and b!4723401 b!4722954)))

(declare-fun lambda!215718 () Int)

(assert (=> bs!1112891 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215718 lambda!215662))))

(declare-fun bs!1112893 () Bool)

(assert (= bs!1112893 (and b!4723401 d!1503873)))

(assert (=> bs!1112893 (not (= lambda!215718 lambda!215656))))

(declare-fun bs!1112895 () Bool)

(assert (= bs!1112895 (and b!4723401 b!4722976)))

(assert (=> bs!1112895 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888135) (= lambda!215718 lambda!215672))))

(declare-fun bs!1112897 () Bool)

(assert (= bs!1112897 (and b!4723401 b!4722969)))

(assert (=> bs!1112897 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215718 lambda!215667))))

(declare-fun bs!1112899 () Bool)

(assert (= bs!1112899 (and b!4723401 b!4723054)))

(assert (=> bs!1112899 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215718 lambda!215676))))

(declare-fun bs!1112901 () Bool)

(assert (= bs!1112901 (and b!4723401 b!4722971)))

(assert (=> bs!1112901 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215718 lambda!215666))))

(declare-fun bs!1112903 () Bool)

(assert (= bs!1112903 (and b!4723401 b!4722847)))

(assert (=> bs!1112903 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215718 lambda!215638))))

(declare-fun bs!1112904 () Bool)

(assert (= bs!1112904 (and b!4723401 d!1504127)))

(assert (=> bs!1112904 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888077) (= lambda!215718 lambda!215715))))

(declare-fun bs!1112906 () Bool)

(assert (= bs!1112906 (and b!4723401 d!1503899)))

(assert (=> bs!1112906 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888111) (= lambda!215718 lambda!215669))))

(declare-fun bs!1112908 () Bool)

(assert (= bs!1112908 (and b!4723401 b!4723308)))

(assert (=> bs!1112908 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888322) (= lambda!215718 lambda!215700))))

(assert (=> bs!1112908 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215718 lambda!215698))))

(declare-fun bs!1112911 () Bool)

(assert (= bs!1112911 (and b!4723401 d!1503889)))

(assert (=> bs!1112911 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888078) (= lambda!215718 lambda!215665))))

(declare-fun bs!1112912 () Bool)

(assert (= bs!1112912 (and b!4723401 b!4722949)))

(assert (=> bs!1112912 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215718 lambda!215658))))

(declare-fun bs!1112913 () Bool)

(assert (= bs!1112913 (and b!4723401 b!4722845)))

(assert (=> bs!1112913 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887947) (= lambda!215718 lambda!215640))))

(declare-fun bs!1112915 () Bool)

(assert (= bs!1112915 (and b!4723401 d!1503887)))

(assert (=> bs!1112915 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888057) (= lambda!215718 lambda!215661))))

(assert (=> bs!1112897 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888110) (= lambda!215718 lambda!215668))))

(assert (=> bs!1112899 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888168) (= lambda!215718 lambda!215677))))

(declare-fun bs!1112919 () Bool)

(assert (= bs!1112919 (and b!4723401 b!4723273)))

(assert (=> bs!1112919 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888294) (= lambda!215718 lambda!215691))))

(declare-fun bs!1112920 () Bool)

(assert (= bs!1112920 (and b!4723401 b!4722952)))

(assert (=> bs!1112920 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215718 lambda!215663))))

(declare-fun bs!1112922 () Bool)

(assert (= bs!1112922 (and b!4723401 b!4723056)))

(assert (=> bs!1112922 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215718 lambda!215675))))

(declare-fun bs!1112924 () Bool)

(assert (= bs!1112924 (and b!4723401 b!4722978)))

(assert (=> bs!1112924 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215718 lambda!215670))))

(declare-fun bs!1112925 () Bool)

(assert (= bs!1112925 (and b!4723401 d!1503799)))

(assert (=> bs!1112925 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887948) (= lambda!215718 lambda!215641))))

(declare-fun bs!1112926 () Bool)

(assert (= bs!1112926 (and b!4723401 b!4723275)))

(assert (=> bs!1112926 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215718 lambda!215689))))

(declare-fun bs!1112927 () Bool)

(assert (= bs!1112927 (and b!4723401 b!4722947)))

(assert (=> bs!1112927 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888056) (= lambda!215718 lambda!215660))))

(declare-fun bs!1112928 () Bool)

(assert (= bs!1112928 (and b!4723401 d!1503911)))

(assert (=> bs!1112928 (not (= lambda!215718 lambda!215674))))

(assert (=> bs!1112913 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215718 lambda!215639))))

(declare-fun bs!1112929 () Bool)

(assert (= bs!1112929 (and b!4723401 b!4723310)))

(assert (=> bs!1112929 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215718 lambda!215697))))

(assert (=> bs!1112895 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215718 lambda!215671))))

(assert (=> bs!1112927 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215718 lambda!215659))))

(assert (=> bs!1112920 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888077) (= lambda!215718 lambda!215664))))

(declare-fun bs!1112930 () Bool)

(assert (= bs!1112930 (and b!4723401 d!1503907)))

(assert (=> bs!1112930 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888136) (= lambda!215718 lambda!215673))))

(declare-fun bs!1112931 () Bool)

(assert (= bs!1112931 (and b!4723401 d!1504043)))

(assert (=> bs!1112931 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888295) (= lambda!215718 lambda!215695))))

(assert (=> bs!1112919 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215718 lambda!215690))))

(declare-fun bs!1112932 () Bool)

(assert (= bs!1112932 (and b!4723401 d!1503991)))

(assert (=> bs!1112932 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215718 lambda!215688))))

(declare-fun bs!1112933 () Bool)

(assert (= bs!1112933 (and b!4723401 d!1504085)))

(assert (=> bs!1112933 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888323) (= lambda!215718 lambda!215703))))

(declare-fun bs!1112934 () Bool)

(assert (= bs!1112934 (and b!4723401 d!1503963)))

(assert (=> bs!1112934 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888169) (= lambda!215718 lambda!215678))))

(assert (=> b!4723401 true))

(declare-fun bs!1112935 () Bool)

(declare-fun b!4723399 () Bool)

(assert (= bs!1112935 (and b!4723399 b!4722954)))

(declare-fun lambda!215720 () Int)

(assert (=> bs!1112935 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215720 lambda!215662))))

(declare-fun bs!1112936 () Bool)

(assert (= bs!1112936 (and b!4723399 d!1503873)))

(assert (=> bs!1112936 (not (= lambda!215720 lambda!215656))))

(declare-fun bs!1112937 () Bool)

(assert (= bs!1112937 (and b!4723399 b!4722976)))

(assert (=> bs!1112937 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888135) (= lambda!215720 lambda!215672))))

(declare-fun bs!1112938 () Bool)

(assert (= bs!1112938 (and b!4723399 b!4723054)))

(assert (=> bs!1112938 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215720 lambda!215676))))

(declare-fun bs!1112939 () Bool)

(assert (= bs!1112939 (and b!4723399 b!4722971)))

(assert (=> bs!1112939 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215720 lambda!215666))))

(declare-fun bs!1112940 () Bool)

(assert (= bs!1112940 (and b!4723399 b!4722847)))

(assert (=> bs!1112940 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215720 lambda!215638))))

(declare-fun bs!1112941 () Bool)

(assert (= bs!1112941 (and b!4723399 d!1504127)))

(assert (=> bs!1112941 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888077) (= lambda!215720 lambda!215715))))

(declare-fun bs!1112942 () Bool)

(assert (= bs!1112942 (and b!4723399 d!1503899)))

(assert (=> bs!1112942 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888111) (= lambda!215720 lambda!215669))))

(declare-fun bs!1112943 () Bool)

(assert (= bs!1112943 (and b!4723399 b!4723308)))

(assert (=> bs!1112943 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888322) (= lambda!215720 lambda!215700))))

(assert (=> bs!1112943 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215720 lambda!215698))))

(declare-fun bs!1112944 () Bool)

(assert (= bs!1112944 (and b!4723399 d!1503889)))

(assert (=> bs!1112944 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888078) (= lambda!215720 lambda!215665))))

(declare-fun bs!1112945 () Bool)

(assert (= bs!1112945 (and b!4723399 b!4722949)))

(assert (=> bs!1112945 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215720 lambda!215658))))

(declare-fun bs!1112946 () Bool)

(assert (= bs!1112946 (and b!4723399 b!4722845)))

(assert (=> bs!1112946 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887947) (= lambda!215720 lambda!215640))))

(declare-fun bs!1112947 () Bool)

(assert (= bs!1112947 (and b!4723399 d!1503887)))

(assert (=> bs!1112947 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888057) (= lambda!215720 lambda!215661))))

(declare-fun bs!1112948 () Bool)

(assert (= bs!1112948 (and b!4723399 b!4722969)))

(assert (=> bs!1112948 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888110) (= lambda!215720 lambda!215668))))

(assert (=> bs!1112938 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888168) (= lambda!215720 lambda!215677))))

(declare-fun bs!1112949 () Bool)

(assert (= bs!1112949 (and b!4723399 b!4723273)))

(assert (=> bs!1112949 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888294) (= lambda!215720 lambda!215691))))

(declare-fun bs!1112950 () Bool)

(assert (= bs!1112950 (and b!4723399 b!4722952)))

(assert (=> bs!1112950 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215720 lambda!215663))))

(declare-fun bs!1112951 () Bool)

(assert (= bs!1112951 (and b!4723399 b!4723056)))

(assert (=> bs!1112951 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215720 lambda!215675))))

(declare-fun bs!1112952 () Bool)

(assert (= bs!1112952 (and b!4723399 b!4722978)))

(assert (=> bs!1112952 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215720 lambda!215670))))

(declare-fun bs!1112953 () Bool)

(assert (= bs!1112953 (and b!4723399 d!1503799)))

(assert (=> bs!1112953 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887948) (= lambda!215720 lambda!215641))))

(declare-fun bs!1112954 () Bool)

(assert (= bs!1112954 (and b!4723399 b!4723275)))

(assert (=> bs!1112954 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215720 lambda!215689))))

(declare-fun bs!1112955 () Bool)

(assert (= bs!1112955 (and b!4723399 b!4722947)))

(assert (=> bs!1112955 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888056) (= lambda!215720 lambda!215660))))

(declare-fun bs!1112956 () Bool)

(assert (= bs!1112956 (and b!4723399 d!1503911)))

(assert (=> bs!1112956 (not (= lambda!215720 lambda!215674))))

(assert (=> bs!1112946 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215720 lambda!215639))))

(declare-fun bs!1112957 () Bool)

(assert (= bs!1112957 (and b!4723399 b!4723310)))

(assert (=> bs!1112957 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215720 lambda!215697))))

(assert (=> bs!1112937 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215720 lambda!215671))))

(assert (=> bs!1112955 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215720 lambda!215659))))

(assert (=> bs!1112950 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888077) (= lambda!215720 lambda!215664))))

(declare-fun bs!1112962 () Bool)

(assert (= bs!1112962 (and b!4723399 b!4723401)))

(assert (=> bs!1112962 (= lambda!215720 lambda!215718)))

(assert (=> bs!1112948 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215720 lambda!215667))))

(declare-fun bs!1112964 () Bool)

(assert (= bs!1112964 (and b!4723399 d!1503907)))

(assert (=> bs!1112964 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888136) (= lambda!215720 lambda!215673))))

(declare-fun bs!1112966 () Bool)

(assert (= bs!1112966 (and b!4723399 d!1504043)))

(assert (=> bs!1112966 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888295) (= lambda!215720 lambda!215695))))

(assert (=> bs!1112949 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215720 lambda!215690))))

(declare-fun bs!1112969 () Bool)

(assert (= bs!1112969 (and b!4723399 d!1503991)))

(assert (=> bs!1112969 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1887727) (= lambda!215720 lambda!215688))))

(declare-fun bs!1112971 () Bool)

(assert (= bs!1112971 (and b!4723399 d!1504085)))

(assert (=> bs!1112971 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888323) (= lambda!215720 lambda!215703))))

(declare-fun bs!1112972 () Bool)

(assert (= bs!1112972 (and b!4723399 d!1503963)))

(assert (=> bs!1112972 (= (= (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888169) (= lambda!215720 lambda!215678))))

(assert (=> b!4723399 true))

(declare-fun lt!1888441 () ListMap!5281)

(declare-fun lambda!215722 () Int)

(assert (=> bs!1112935 (= (= lt!1888441 lt!1887727) (= lambda!215722 lambda!215662))))

(assert (=> bs!1112936 (not (= lambda!215722 lambda!215656))))

(assert (=> bs!1112937 (= (= lt!1888441 lt!1888135) (= lambda!215722 lambda!215672))))

(assert (=> bs!1112938 (= (= lt!1888441 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215722 lambda!215676))))

(assert (=> bs!1112939 (= (= lt!1888441 lt!1887727) (= lambda!215722 lambda!215666))))

(assert (=> bs!1112940 (= (= lt!1888441 lt!1887727) (= lambda!215722 lambda!215638))))

(assert (=> bs!1112941 (= (= lt!1888441 lt!1888077) (= lambda!215722 lambda!215715))))

(assert (=> bs!1112942 (= (= lt!1888441 lt!1888111) (= lambda!215722 lambda!215669))))

(assert (=> bs!1112943 (= (= lt!1888441 lt!1888322) (= lambda!215722 lambda!215700))))

(assert (=> bs!1112943 (= (= lt!1888441 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215722 lambda!215698))))

(assert (=> bs!1112944 (= (= lt!1888441 lt!1888078) (= lambda!215722 lambda!215665))))

(assert (=> b!4723399 (= (= lt!1888441 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215722 lambda!215720))))

(assert (=> bs!1112945 (= (= lt!1888441 lt!1887727) (= lambda!215722 lambda!215658))))

(assert (=> bs!1112946 (= (= lt!1888441 lt!1887947) (= lambda!215722 lambda!215640))))

(assert (=> bs!1112947 (= (= lt!1888441 lt!1888057) (= lambda!215722 lambda!215661))))

(assert (=> bs!1112948 (= (= lt!1888441 lt!1888110) (= lambda!215722 lambda!215668))))

(assert (=> bs!1112938 (= (= lt!1888441 lt!1888168) (= lambda!215722 lambda!215677))))

(assert (=> bs!1112949 (= (= lt!1888441 lt!1888294) (= lambda!215722 lambda!215691))))

(assert (=> bs!1112950 (= (= lt!1888441 lt!1887727) (= lambda!215722 lambda!215663))))

(assert (=> bs!1112951 (= (= lt!1888441 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215722 lambda!215675))))

(assert (=> bs!1112952 (= (= lt!1888441 lt!1887727) (= lambda!215722 lambda!215670))))

(assert (=> bs!1112953 (= (= lt!1888441 lt!1887948) (= lambda!215722 lambda!215641))))

(assert (=> bs!1112954 (= (= lt!1888441 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215722 lambda!215689))))

(assert (=> bs!1112955 (= (= lt!1888441 lt!1888056) (= lambda!215722 lambda!215660))))

(assert (=> bs!1112956 (not (= lambda!215722 lambda!215674))))

(assert (=> bs!1112946 (= (= lt!1888441 lt!1887727) (= lambda!215722 lambda!215639))))

(assert (=> bs!1112957 (= (= lt!1888441 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215722 lambda!215697))))

(assert (=> bs!1112937 (= (= lt!1888441 lt!1887727) (= lambda!215722 lambda!215671))))

(assert (=> bs!1112955 (= (= lt!1888441 lt!1887727) (= lambda!215722 lambda!215659))))

(assert (=> bs!1112950 (= (= lt!1888441 lt!1888077) (= lambda!215722 lambda!215664))))

(assert (=> bs!1112962 (= (= lt!1888441 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215722 lambda!215718))))

(assert (=> bs!1112948 (= (= lt!1888441 lt!1887727) (= lambda!215722 lambda!215667))))

(assert (=> bs!1112964 (= (= lt!1888441 lt!1888136) (= lambda!215722 lambda!215673))))

(assert (=> bs!1112966 (= (= lt!1888441 lt!1888295) (= lambda!215722 lambda!215695))))

(assert (=> bs!1112949 (= (= lt!1888441 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215722 lambda!215690))))

(assert (=> bs!1112969 (= (= lt!1888441 lt!1887727) (= lambda!215722 lambda!215688))))

(assert (=> bs!1112971 (= (= lt!1888441 lt!1888323) (= lambda!215722 lambda!215703))))

(assert (=> bs!1112972 (= (= lt!1888441 lt!1888169) (= lambda!215722 lambda!215678))))

(assert (=> b!4723399 true))

(declare-fun bs!1112991 () Bool)

(declare-fun d!1504139 () Bool)

(assert (= bs!1112991 (and d!1504139 b!4722954)))

(declare-fun lt!1888442 () ListMap!5281)

(declare-fun lambda!215724 () Int)

(assert (=> bs!1112991 (= (= lt!1888442 lt!1887727) (= lambda!215724 lambda!215662))))

(declare-fun bs!1112994 () Bool)

(assert (= bs!1112994 (and d!1504139 d!1503873)))

(assert (=> bs!1112994 (not (= lambda!215724 lambda!215656))))

(declare-fun bs!1112996 () Bool)

(assert (= bs!1112996 (and d!1504139 b!4722976)))

(assert (=> bs!1112996 (= (= lt!1888442 lt!1888135) (= lambda!215724 lambda!215672))))

(declare-fun bs!1112998 () Bool)

(assert (= bs!1112998 (and d!1504139 b!4723054)))

(assert (=> bs!1112998 (= (= lt!1888442 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215724 lambda!215676))))

(declare-fun bs!1112999 () Bool)

(assert (= bs!1112999 (and d!1504139 b!4722971)))

(assert (=> bs!1112999 (= (= lt!1888442 lt!1887727) (= lambda!215724 lambda!215666))))

(declare-fun bs!1113000 () Bool)

(assert (= bs!1113000 (and d!1504139 b!4722847)))

(assert (=> bs!1113000 (= (= lt!1888442 lt!1887727) (= lambda!215724 lambda!215638))))

(declare-fun bs!1113001 () Bool)

(assert (= bs!1113001 (and d!1504139 d!1504127)))

(assert (=> bs!1113001 (= (= lt!1888442 lt!1888077) (= lambda!215724 lambda!215715))))

(declare-fun bs!1113002 () Bool)

(assert (= bs!1113002 (and d!1504139 b!4723308)))

(assert (=> bs!1113002 (= (= lt!1888442 lt!1888322) (= lambda!215724 lambda!215700))))

(assert (=> bs!1113002 (= (= lt!1888442 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215724 lambda!215698))))

(declare-fun bs!1113003 () Bool)

(assert (= bs!1113003 (and d!1504139 d!1503889)))

(assert (=> bs!1113003 (= (= lt!1888442 lt!1888078) (= lambda!215724 lambda!215665))))

(declare-fun bs!1113004 () Bool)

(assert (= bs!1113004 (and d!1504139 b!4723399)))

(assert (=> bs!1113004 (= (= lt!1888442 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215724 lambda!215720))))

(declare-fun bs!1113005 () Bool)

(assert (= bs!1113005 (and d!1504139 b!4722949)))

(assert (=> bs!1113005 (= (= lt!1888442 lt!1887727) (= lambda!215724 lambda!215658))))

(declare-fun bs!1113006 () Bool)

(assert (= bs!1113006 (and d!1504139 b!4722845)))

(assert (=> bs!1113006 (= (= lt!1888442 lt!1887947) (= lambda!215724 lambda!215640))))

(declare-fun bs!1113007 () Bool)

(assert (= bs!1113007 (and d!1504139 d!1503887)))

(assert (=> bs!1113007 (= (= lt!1888442 lt!1888057) (= lambda!215724 lambda!215661))))

(declare-fun bs!1113008 () Bool)

(assert (= bs!1113008 (and d!1504139 b!4722969)))

(assert (=> bs!1113008 (= (= lt!1888442 lt!1888110) (= lambda!215724 lambda!215668))))

(assert (=> bs!1112998 (= (= lt!1888442 lt!1888168) (= lambda!215724 lambda!215677))))

(declare-fun bs!1113009 () Bool)

(assert (= bs!1113009 (and d!1504139 b!4723273)))

(assert (=> bs!1113009 (= (= lt!1888442 lt!1888294) (= lambda!215724 lambda!215691))))

(declare-fun bs!1113010 () Bool)

(assert (= bs!1113010 (and d!1504139 b!4722952)))

(assert (=> bs!1113010 (= (= lt!1888442 lt!1887727) (= lambda!215724 lambda!215663))))

(declare-fun bs!1113011 () Bool)

(assert (= bs!1113011 (and d!1504139 b!4723056)))

(assert (=> bs!1113011 (= (= lt!1888442 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215724 lambda!215675))))

(declare-fun bs!1113012 () Bool)

(assert (= bs!1113012 (and d!1504139 b!4722978)))

(assert (=> bs!1113012 (= (= lt!1888442 lt!1887727) (= lambda!215724 lambda!215670))))

(declare-fun bs!1113013 () Bool)

(assert (= bs!1113013 (and d!1504139 d!1503799)))

(assert (=> bs!1113013 (= (= lt!1888442 lt!1887948) (= lambda!215724 lambda!215641))))

(declare-fun bs!1113014 () Bool)

(assert (= bs!1113014 (and d!1504139 b!4723275)))

(assert (=> bs!1113014 (= (= lt!1888442 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215724 lambda!215689))))

(declare-fun bs!1113015 () Bool)

(assert (= bs!1113015 (and d!1504139 b!4722947)))

(assert (=> bs!1113015 (= (= lt!1888442 lt!1888056) (= lambda!215724 lambda!215660))))

(declare-fun bs!1113016 () Bool)

(assert (= bs!1113016 (and d!1504139 d!1503911)))

(assert (=> bs!1113016 (not (= lambda!215724 lambda!215674))))

(assert (=> bs!1113006 (= (= lt!1888442 lt!1887727) (= lambda!215724 lambda!215639))))

(declare-fun bs!1113017 () Bool)

(assert (= bs!1113017 (and d!1504139 b!4723310)))

(assert (=> bs!1113017 (= (= lt!1888442 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215724 lambda!215697))))

(assert (=> bs!1112996 (= (= lt!1888442 lt!1887727) (= lambda!215724 lambda!215671))))

(assert (=> bs!1113015 (= (= lt!1888442 lt!1887727) (= lambda!215724 lambda!215659))))

(assert (=> bs!1113010 (= (= lt!1888442 lt!1888077) (= lambda!215724 lambda!215664))))

(declare-fun bs!1113018 () Bool)

(assert (= bs!1113018 (and d!1504139 b!4723401)))

(assert (=> bs!1113018 (= (= lt!1888442 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215724 lambda!215718))))

(assert (=> bs!1113008 (= (= lt!1888442 lt!1887727) (= lambda!215724 lambda!215667))))

(declare-fun bs!1113019 () Bool)

(assert (= bs!1113019 (and d!1504139 d!1503907)))

(assert (=> bs!1113019 (= (= lt!1888442 lt!1888136) (= lambda!215724 lambda!215673))))

(declare-fun bs!1113020 () Bool)

(assert (= bs!1113020 (and d!1504139 d!1504043)))

(assert (=> bs!1113020 (= (= lt!1888442 lt!1888295) (= lambda!215724 lambda!215695))))

(assert (=> bs!1113009 (= (= lt!1888442 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215724 lambda!215690))))

(declare-fun bs!1113021 () Bool)

(assert (= bs!1113021 (and d!1504139 d!1503991)))

(assert (=> bs!1113021 (= (= lt!1888442 lt!1887727) (= lambda!215724 lambda!215688))))

(declare-fun bs!1113022 () Bool)

(assert (= bs!1113022 (and d!1504139 d!1504085)))

(assert (=> bs!1113022 (= (= lt!1888442 lt!1888323) (= lambda!215724 lambda!215703))))

(declare-fun bs!1113023 () Bool)

(assert (= bs!1113023 (and d!1504139 d!1503963)))

(assert (=> bs!1113023 (= (= lt!1888442 lt!1888169) (= lambda!215724 lambda!215678))))

(assert (=> bs!1113004 (= (= lt!1888442 lt!1888441) (= lambda!215724 lambda!215722))))

(declare-fun bs!1113024 () Bool)

(assert (= bs!1113024 (and d!1504139 d!1503899)))

(assert (=> bs!1113024 (= (= lt!1888442 lt!1888111) (= lambda!215724 lambda!215669))))

(assert (=> d!1504139 true))

(declare-fun bm!330394 () Bool)

(declare-fun call!330400 () Bool)

(declare-fun c!806686 () Bool)

(assert (=> bm!330394 (= call!330400 (forall!11590 (ite c!806686 (toList!5917 (+!2269 lt!1887727 (h!59177 lt!1887720))) (t!360220 lt!1887720)) (ite c!806686 lambda!215718 lambda!215722)))))

(declare-fun e!2945848 () ListMap!5281)

(assert (=> b!4723399 (= e!2945848 lt!1888441)))

(declare-fun lt!1888436 () ListMap!5281)

(assert (=> b!4723399 (= lt!1888436 (+!2269 (+!2269 lt!1887727 (h!59177 lt!1887720)) (h!59177 (t!360220 lt!1887720))))))

(assert (=> b!4723399 (= lt!1888441 (addToMapMapFromBucket!1444 (t!360220 (t!360220 lt!1887720)) (+!2269 (+!2269 lt!1887727 (h!59177 lt!1887720)) (h!59177 (t!360220 lt!1887720)))))))

(declare-fun lt!1888451 () Unit!130119)

(declare-fun call!330401 () Unit!130119)

(assert (=> b!4723399 (= lt!1888451 call!330401)))

(assert (=> b!4723399 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 lt!1887720))) lambda!215720)))

(declare-fun lt!1888439 () Unit!130119)

(assert (=> b!4723399 (= lt!1888439 lt!1888451)))

(assert (=> b!4723399 (forall!11590 (toList!5917 lt!1888436) lambda!215722)))

(declare-fun lt!1888437 () Unit!130119)

(declare-fun Unit!130312 () Unit!130119)

(assert (=> b!4723399 (= lt!1888437 Unit!130312)))

(assert (=> b!4723399 (forall!11590 (t!360220 (t!360220 lt!1887720)) lambda!215722)))

(declare-fun lt!1888435 () Unit!130119)

(declare-fun Unit!130313 () Unit!130119)

(assert (=> b!4723399 (= lt!1888435 Unit!130313)))

(declare-fun lt!1888446 () Unit!130119)

(declare-fun Unit!130314 () Unit!130119)

(assert (=> b!4723399 (= lt!1888446 Unit!130314)))

(declare-fun lt!1888449 () Unit!130119)

(assert (=> b!4723399 (= lt!1888449 (forallContained!3639 (toList!5917 lt!1888436) lambda!215722 (h!59177 (t!360220 lt!1887720))))))

(assert (=> b!4723399 (contains!16175 lt!1888436 (_1!30519 (h!59177 (t!360220 lt!1887720))))))

(declare-fun lt!1888452 () Unit!130119)

(declare-fun Unit!130315 () Unit!130119)

(assert (=> b!4723399 (= lt!1888452 Unit!130315)))

(assert (=> b!4723399 (contains!16175 lt!1888441 (_1!30519 (h!59177 (t!360220 lt!1887720))))))

(declare-fun lt!1888445 () Unit!130119)

(declare-fun Unit!130316 () Unit!130119)

(assert (=> b!4723399 (= lt!1888445 Unit!130316)))

(assert (=> b!4723399 call!330400))

(declare-fun lt!1888433 () Unit!130119)

(declare-fun Unit!130317 () Unit!130119)

(assert (=> b!4723399 (= lt!1888433 Unit!130317)))

(assert (=> b!4723399 (forall!11590 (toList!5917 lt!1888436) lambda!215722)))

(declare-fun lt!1888432 () Unit!130119)

(declare-fun Unit!130318 () Unit!130119)

(assert (=> b!4723399 (= lt!1888432 Unit!130318)))

(declare-fun lt!1888443 () Unit!130119)

(declare-fun Unit!130319 () Unit!130119)

(assert (=> b!4723399 (= lt!1888443 Unit!130319)))

(declare-fun lt!1888434 () Unit!130119)

(assert (=> b!4723399 (= lt!1888434 (addForallContainsKeyThenBeforeAdding!796 (+!2269 lt!1887727 (h!59177 lt!1887720)) lt!1888441 (_1!30519 (h!59177 (t!360220 lt!1887720))) (_2!30519 (h!59177 (t!360220 lt!1887720)))))))

(assert (=> b!4723399 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 lt!1887720))) lambda!215722)))

(declare-fun lt!1888447 () Unit!130119)

(assert (=> b!4723399 (= lt!1888447 lt!1888434)))

(declare-fun call!330399 () Bool)

(assert (=> b!4723399 call!330399))

(declare-fun lt!1888438 () Unit!130119)

(declare-fun Unit!130320 () Unit!130119)

(assert (=> b!4723399 (= lt!1888438 Unit!130320)))

(declare-fun res!1998441 () Bool)

(assert (=> b!4723399 (= res!1998441 (forall!11590 (t!360220 lt!1887720) lambda!215722))))

(declare-fun e!2945850 () Bool)

(assert (=> b!4723399 (=> (not res!1998441) (not e!2945850))))

(assert (=> b!4723399 e!2945850))

(declare-fun lt!1888444 () Unit!130119)

(declare-fun Unit!130321 () Unit!130119)

(assert (=> b!4723399 (= lt!1888444 Unit!130321)))

(declare-fun e!2945849 () Bool)

(assert (=> d!1504139 e!2945849))

(declare-fun res!1998443 () Bool)

(assert (=> d!1504139 (=> (not res!1998443) (not e!2945849))))

(assert (=> d!1504139 (= res!1998443 (forall!11590 (t!360220 lt!1887720) lambda!215724))))

(assert (=> d!1504139 (= lt!1888442 e!2945848)))

(assert (=> d!1504139 (= c!806686 ((_ is Nil!52830) (t!360220 lt!1887720)))))

(assert (=> d!1504139 (noDuplicateKeys!2014 (t!360220 lt!1887720))))

(assert (=> d!1504139 (= (addToMapMapFromBucket!1444 (t!360220 lt!1887720) (+!2269 lt!1887727 (h!59177 lt!1887720))) lt!1888442)))

(declare-fun b!4723400 () Bool)

(assert (=> b!4723400 (= e!2945850 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 lt!1887720))) lambda!215722))))

(assert (=> b!4723401 (= e!2945848 (+!2269 lt!1887727 (h!59177 lt!1887720)))))

(declare-fun lt!1888440 () Unit!130119)

(assert (=> b!4723401 (= lt!1888440 call!330401)))

(assert (=> b!4723401 call!330400))

(declare-fun lt!1888450 () Unit!130119)

(assert (=> b!4723401 (= lt!1888450 lt!1888440)))

(assert (=> b!4723401 call!330399))

(declare-fun lt!1888448 () Unit!130119)

(declare-fun Unit!130322 () Unit!130119)

(assert (=> b!4723401 (= lt!1888448 Unit!130322)))

(declare-fun b!4723402 () Bool)

(assert (=> b!4723402 (= e!2945849 (invariantList!1511 (toList!5917 lt!1888442)))))

(declare-fun b!4723403 () Bool)

(declare-fun res!1998442 () Bool)

(assert (=> b!4723403 (=> (not res!1998442) (not e!2945849))))

(assert (=> b!4723403 (= res!1998442 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 lt!1887720))) lambda!215724))))

(declare-fun bm!330395 () Bool)

(assert (=> bm!330395 (= call!330399 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 lt!1887720))) (ite c!806686 lambda!215718 lambda!215722)))))

(declare-fun bm!330396 () Bool)

(assert (=> bm!330396 (= call!330401 (lemmaContainsAllItsOwnKeys!797 (+!2269 lt!1887727 (h!59177 lt!1887720))))))

(assert (= (and d!1504139 c!806686) b!4723401))

(assert (= (and d!1504139 (not c!806686)) b!4723399))

(assert (= (and b!4723399 res!1998441) b!4723400))

(assert (= (or b!4723401 b!4723399) bm!330396))

(assert (= (or b!4723401 b!4723399) bm!330395))

(assert (= (or b!4723401 b!4723399) bm!330394))

(assert (= (and d!1504139 res!1998443) b!4723403))

(assert (= (and b!4723403 res!1998442) b!4723402))

(declare-fun m!5659895 () Bool)

(assert (=> bm!330395 m!5659895))

(assert (=> bm!330396 m!5658979))

(declare-fun m!5659897 () Bool)

(assert (=> bm!330396 m!5659897))

(declare-fun m!5659899 () Bool)

(assert (=> b!4723402 m!5659899))

(declare-fun m!5659901 () Bool)

(assert (=> d!1504139 m!5659901))

(assert (=> d!1504139 m!5659305))

(declare-fun m!5659903 () Bool)

(assert (=> b!4723403 m!5659903))

(declare-fun m!5659905 () Bool)

(assert (=> bm!330394 m!5659905))

(declare-fun m!5659907 () Bool)

(assert (=> b!4723399 m!5659907))

(declare-fun m!5659909 () Bool)

(assert (=> b!4723399 m!5659909))

(declare-fun m!5659911 () Bool)

(assert (=> b!4723399 m!5659911))

(declare-fun m!5659913 () Bool)

(assert (=> b!4723399 m!5659913))

(assert (=> b!4723399 m!5658979))

(declare-fun m!5659915 () Bool)

(assert (=> b!4723399 m!5659915))

(declare-fun m!5659917 () Bool)

(assert (=> b!4723399 m!5659917))

(declare-fun m!5659919 () Bool)

(assert (=> b!4723399 m!5659919))

(declare-fun m!5659921 () Bool)

(assert (=> b!4723399 m!5659921))

(declare-fun m!5659923 () Bool)

(assert (=> b!4723399 m!5659923))

(assert (=> b!4723399 m!5659913))

(assert (=> b!4723399 m!5658979))

(assert (=> b!4723399 m!5659917))

(declare-fun m!5659925 () Bool)

(assert (=> b!4723399 m!5659925))

(declare-fun m!5659927 () Bool)

(assert (=> b!4723399 m!5659927))

(assert (=> b!4723400 m!5659909))

(assert (=> b!4722952 d!1504139))

(declare-fun d!1504149 () Bool)

(declare-fun res!1998452 () Bool)

(declare-fun e!2945860 () Bool)

(assert (=> d!1504149 (=> res!1998452 e!2945860)))

(assert (=> d!1504149 (= res!1998452 ((_ is Nil!52830) lt!1887720))))

(assert (=> d!1504149 (= (forall!11590 lt!1887720 lambda!215664) e!2945860)))

(declare-fun b!4723414 () Bool)

(declare-fun e!2945861 () Bool)

(assert (=> b!4723414 (= e!2945860 e!2945861)))

(declare-fun res!1998453 () Bool)

(assert (=> b!4723414 (=> (not res!1998453) (not e!2945861))))

(assert (=> b!4723414 (= res!1998453 (dynLambda!21821 lambda!215664 (h!59177 lt!1887720)))))

(declare-fun b!4723415 () Bool)

(assert (=> b!4723415 (= e!2945861 (forall!11590 (t!360220 lt!1887720) lambda!215664))))

(assert (= (and d!1504149 (not res!1998452)) b!4723414))

(assert (= (and b!4723414 res!1998453) b!4723415))

(declare-fun b_lambda!178835 () Bool)

(assert (=> (not b_lambda!178835) (not b!4723414)))

(assert (=> b!4723414 m!5659791))

(assert (=> b!4723415 m!5658973))

(assert (=> b!4722952 d!1504149))

(declare-fun d!1504151 () Bool)

(declare-fun res!1998454 () Bool)

(declare-fun e!2945862 () Bool)

(assert (=> d!1504151 (=> res!1998454 e!2945862)))

(assert (=> d!1504151 (= res!1998454 ((_ is Nil!52830) (toList!5917 lt!1888072)))))

(assert (=> d!1504151 (= (forall!11590 (toList!5917 lt!1888072) lambda!215664) e!2945862)))

(declare-fun b!4723416 () Bool)

(declare-fun e!2945863 () Bool)

(assert (=> b!4723416 (= e!2945862 e!2945863)))

(declare-fun res!1998455 () Bool)

(assert (=> b!4723416 (=> (not res!1998455) (not e!2945863))))

(assert (=> b!4723416 (= res!1998455 (dynLambda!21821 lambda!215664 (h!59177 (toList!5917 lt!1888072))))))

(declare-fun b!4723417 () Bool)

(assert (=> b!4723417 (= e!2945863 (forall!11590 (t!360220 (toList!5917 lt!1888072)) lambda!215664))))

(assert (= (and d!1504151 (not res!1998454)) b!4723416))

(assert (= (and b!4723416 res!1998455) b!4723417))

(declare-fun b_lambda!178837 () Bool)

(assert (=> (not b_lambda!178837) (not b!4723416)))

(declare-fun m!5659929 () Bool)

(assert (=> b!4723416 m!5659929))

(declare-fun m!5659931 () Bool)

(assert (=> b!4723417 m!5659931))

(assert (=> b!4722952 d!1504151))

(declare-fun d!1504153 () Bool)

(declare-fun res!1998466 () Bool)

(declare-fun e!2945870 () Bool)

(assert (=> d!1504153 (=> res!1998466 e!2945870)))

(assert (=> d!1504153 (= res!1998466 (and ((_ is Cons!52831) (toList!5918 lt!1887718)) (= (_1!30520 (h!59178 (toList!5918 lt!1887718))) lt!1887725)))))

(assert (=> d!1504153 (= (containsKey!3372 (toList!5918 lt!1887718) lt!1887725) e!2945870)))

(declare-fun b!4723428 () Bool)

(declare-fun e!2945871 () Bool)

(assert (=> b!4723428 (= e!2945870 e!2945871)))

(declare-fun res!1998467 () Bool)

(assert (=> b!4723428 (=> (not res!1998467) (not e!2945871))))

(assert (=> b!4723428 (= res!1998467 (and (or (not ((_ is Cons!52831) (toList!5918 lt!1887718))) (bvsle (_1!30520 (h!59178 (toList!5918 lt!1887718))) lt!1887725)) ((_ is Cons!52831) (toList!5918 lt!1887718)) (bvslt (_1!30520 (h!59178 (toList!5918 lt!1887718))) lt!1887725)))))

(declare-fun b!4723429 () Bool)

(assert (=> b!4723429 (= e!2945871 (containsKey!3372 (t!360221 (toList!5918 lt!1887718)) lt!1887725))))

(assert (= (and d!1504153 (not res!1998466)) b!4723428))

(assert (= (and b!4723428 res!1998467) b!4723429))

(declare-fun m!5659933 () Bool)

(assert (=> b!4723429 m!5659933))

(assert (=> d!1503851 d!1504153))

(declare-fun d!1504155 () Bool)

(declare-fun res!1998468 () Bool)

(declare-fun e!2945872 () Bool)

(assert (=> d!1504155 (=> res!1998468 e!2945872)))

(assert (=> d!1504155 (= res!1998468 ((_ is Nil!52830) (toList!5917 lt!1887727)))))

(assert (=> d!1504155 (= (forall!11590 (toList!5917 lt!1887727) (ite c!806570 lambda!215638 lambda!215640)) e!2945872)))

(declare-fun b!4723430 () Bool)

(declare-fun e!2945873 () Bool)

(assert (=> b!4723430 (= e!2945872 e!2945873)))

(declare-fun res!1998469 () Bool)

(assert (=> b!4723430 (=> (not res!1998469) (not e!2945873))))

(assert (=> b!4723430 (= res!1998469 (dynLambda!21821 (ite c!806570 lambda!215638 lambda!215640) (h!59177 (toList!5917 lt!1887727))))))

(declare-fun b!4723431 () Bool)

(assert (=> b!4723431 (= e!2945873 (forall!11590 (t!360220 (toList!5917 lt!1887727)) (ite c!806570 lambda!215638 lambda!215640)))))

(assert (= (and d!1504155 (not res!1998468)) b!4723430))

(assert (= (and b!4723430 res!1998469) b!4723431))

(declare-fun b_lambda!178839 () Bool)

(assert (=> (not b_lambda!178839) (not b!4723430)))

(declare-fun m!5659935 () Bool)

(assert (=> b!4723430 m!5659935))

(declare-fun m!5659937 () Bool)

(assert (=> b!4723431 m!5659937))

(assert (=> bm!330326 d!1504155))

(assert (=> bs!1112477 d!1503927))

(assert (=> bm!330339 d!1503991))

(declare-fun d!1504157 () Bool)

(declare-fun c!806688 () Bool)

(assert (=> d!1504157 (= c!806688 (and ((_ is Cons!52830) (toList!5917 lt!1888099)) (= (_1!30519 (h!59177 (toList!5917 lt!1888099))) (_1!30519 lt!1887722))))))

(declare-fun e!2945875 () Option!12361)

(assert (=> d!1504157 (= (getValueByKey!1957 (toList!5917 lt!1888099) (_1!30519 lt!1887722)) e!2945875)))

(declare-fun b!4723439 () Bool)

(declare-fun e!2945876 () Option!12361)

(assert (=> b!4723439 (= e!2945876 (getValueByKey!1957 (t!360220 (toList!5917 lt!1888099)) (_1!30519 lt!1887722)))))

(declare-fun b!4723438 () Bool)

(assert (=> b!4723438 (= e!2945875 e!2945876)))

(declare-fun c!806689 () Bool)

(assert (=> b!4723438 (= c!806689 (and ((_ is Cons!52830) (toList!5917 lt!1888099)) (not (= (_1!30519 (h!59177 (toList!5917 lt!1888099))) (_1!30519 lt!1887722)))))))

(declare-fun b!4723440 () Bool)

(assert (=> b!4723440 (= e!2945876 None!12360)))

(declare-fun b!4723436 () Bool)

(assert (=> b!4723436 (= e!2945875 (Some!12360 (_2!30519 (h!59177 (toList!5917 lt!1888099)))))))

(assert (= (and d!1504157 c!806688) b!4723436))

(assert (= (and d!1504157 (not c!806688)) b!4723438))

(assert (= (and b!4723438 c!806689) b!4723439))

(assert (= (and b!4723438 (not c!806689)) b!4723440))

(declare-fun m!5659939 () Bool)

(assert (=> b!4723439 m!5659939))

(assert (=> b!4722967 d!1504157))

(declare-fun d!1504159 () Bool)

(declare-fun res!1998473 () Bool)

(declare-fun e!2945877 () Bool)

(assert (=> d!1504159 (=> res!1998473 e!2945877)))

(assert (=> d!1504159 (= res!1998473 ((_ is Nil!52830) (toList!5917 lt!1887727)))))

(assert (=> d!1504159 (= (forall!11590 (toList!5917 lt!1887727) lambda!215661) e!2945877)))

(declare-fun b!4723441 () Bool)

(declare-fun e!2945878 () Bool)

(assert (=> b!4723441 (= e!2945877 e!2945878)))

(declare-fun res!1998474 () Bool)

(assert (=> b!4723441 (=> (not res!1998474) (not e!2945878))))

(assert (=> b!4723441 (= res!1998474 (dynLambda!21821 lambda!215661 (h!59177 (toList!5917 lt!1887727))))))

(declare-fun b!4723442 () Bool)

(assert (=> b!4723442 (= e!2945878 (forall!11590 (t!360220 (toList!5917 lt!1887727)) lambda!215661))))

(assert (= (and d!1504159 (not res!1998473)) b!4723441))

(assert (= (and b!4723441 res!1998474) b!4723442))

(declare-fun b_lambda!178841 () Bool)

(assert (=> (not b_lambda!178841) (not b!4723441)))

(declare-fun m!5659947 () Bool)

(assert (=> b!4723441 m!5659947))

(declare-fun m!5659953 () Bool)

(assert (=> b!4723442 m!5659953))

(assert (=> b!4722951 d!1504159))

(declare-fun bs!1113025 () Bool)

(declare-fun b!4723445 () Bool)

(assert (= bs!1113025 (and b!4723445 d!1503873)))

(declare-fun lambda!215731 () Int)

(assert (=> bs!1113025 (not (= lambda!215731 lambda!215656))))

(declare-fun bs!1113026 () Bool)

(assert (= bs!1113026 (and b!4723445 b!4722976)))

(assert (=> bs!1113026 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888135) (= lambda!215731 lambda!215672))))

(declare-fun bs!1113027 () Bool)

(assert (= bs!1113027 (and b!4723445 b!4723054)))

(assert (=> bs!1113027 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215731 lambda!215676))))

(declare-fun bs!1113029 () Bool)

(assert (= bs!1113029 (and b!4723445 b!4722971)))

(assert (=> bs!1113029 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215731 lambda!215666))))

(declare-fun bs!1113030 () Bool)

(assert (= bs!1113030 (and b!4723445 b!4722847)))

(assert (=> bs!1113030 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215731 lambda!215638))))

(declare-fun bs!1113031 () Bool)

(assert (= bs!1113031 (and b!4723445 d!1504127)))

(assert (=> bs!1113031 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888077) (= lambda!215731 lambda!215715))))

(declare-fun bs!1113032 () Bool)

(assert (= bs!1113032 (and b!4723445 b!4723308)))

(assert (=> bs!1113032 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888322) (= lambda!215731 lambda!215700))))

(assert (=> bs!1113032 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215731 lambda!215698))))

(declare-fun bs!1113033 () Bool)

(assert (= bs!1113033 (and b!4723445 d!1503889)))

(assert (=> bs!1113033 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888078) (= lambda!215731 lambda!215665))))

(declare-fun bs!1113034 () Bool)

(assert (= bs!1113034 (and b!4723445 b!4723399)))

(assert (=> bs!1113034 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215731 lambda!215720))))

(declare-fun bs!1113035 () Bool)

(assert (= bs!1113035 (and b!4723445 b!4722949)))

(assert (=> bs!1113035 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215731 lambda!215658))))

(declare-fun bs!1113036 () Bool)

(assert (= bs!1113036 (and b!4723445 b!4722845)))

(assert (=> bs!1113036 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887947) (= lambda!215731 lambda!215640))))

(declare-fun bs!1113037 () Bool)

(assert (= bs!1113037 (and b!4723445 d!1503887)))

(assert (=> bs!1113037 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888057) (= lambda!215731 lambda!215661))))

(declare-fun bs!1113038 () Bool)

(assert (= bs!1113038 (and b!4723445 b!4722969)))

(assert (=> bs!1113038 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888110) (= lambda!215731 lambda!215668))))

(assert (=> bs!1113027 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888168) (= lambda!215731 lambda!215677))))

(declare-fun bs!1113039 () Bool)

(assert (= bs!1113039 (and b!4723445 b!4723273)))

(assert (=> bs!1113039 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888294) (= lambda!215731 lambda!215691))))

(declare-fun bs!1113040 () Bool)

(assert (= bs!1113040 (and b!4723445 d!1504139)))

(assert (=> bs!1113040 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888442) (= lambda!215731 lambda!215724))))

(declare-fun bs!1113041 () Bool)

(assert (= bs!1113041 (and b!4723445 b!4722954)))

(assert (=> bs!1113041 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215731 lambda!215662))))

(declare-fun bs!1113042 () Bool)

(assert (= bs!1113042 (and b!4723445 b!4722952)))

(assert (=> bs!1113042 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215731 lambda!215663))))

(declare-fun bs!1113043 () Bool)

(assert (= bs!1113043 (and b!4723445 b!4723056)))

(assert (=> bs!1113043 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215731 lambda!215675))))

(declare-fun bs!1113044 () Bool)

(assert (= bs!1113044 (and b!4723445 b!4722978)))

(assert (=> bs!1113044 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215731 lambda!215670))))

(declare-fun bs!1113045 () Bool)

(assert (= bs!1113045 (and b!4723445 d!1503799)))

(assert (=> bs!1113045 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887948) (= lambda!215731 lambda!215641))))

(declare-fun bs!1113046 () Bool)

(assert (= bs!1113046 (and b!4723445 b!4723275)))

(assert (=> bs!1113046 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215731 lambda!215689))))

(declare-fun bs!1113047 () Bool)

(assert (= bs!1113047 (and b!4723445 b!4722947)))

(assert (=> bs!1113047 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888056) (= lambda!215731 lambda!215660))))

(declare-fun bs!1113048 () Bool)

(assert (= bs!1113048 (and b!4723445 d!1503911)))

(assert (=> bs!1113048 (not (= lambda!215731 lambda!215674))))

(assert (=> bs!1113036 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215731 lambda!215639))))

(declare-fun bs!1113049 () Bool)

(assert (= bs!1113049 (and b!4723445 b!4723310)))

(assert (=> bs!1113049 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215731 lambda!215697))))

(assert (=> bs!1113026 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215731 lambda!215671))))

(assert (=> bs!1113047 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215731 lambda!215659))))

(assert (=> bs!1113042 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888077) (= lambda!215731 lambda!215664))))

(declare-fun bs!1113050 () Bool)

(assert (= bs!1113050 (and b!4723445 b!4723401)))

(assert (=> bs!1113050 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215731 lambda!215718))))

(assert (=> bs!1113038 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215731 lambda!215667))))

(declare-fun bs!1113051 () Bool)

(assert (= bs!1113051 (and b!4723445 d!1503907)))

(assert (=> bs!1113051 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888136) (= lambda!215731 lambda!215673))))

(declare-fun bs!1113052 () Bool)

(assert (= bs!1113052 (and b!4723445 d!1504043)))

(assert (=> bs!1113052 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888295) (= lambda!215731 lambda!215695))))

(assert (=> bs!1113039 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215731 lambda!215690))))

(declare-fun bs!1113053 () Bool)

(assert (= bs!1113053 (and b!4723445 d!1503991)))

(assert (=> bs!1113053 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215731 lambda!215688))))

(declare-fun bs!1113054 () Bool)

(assert (= bs!1113054 (and b!4723445 d!1504085)))

(assert (=> bs!1113054 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888323) (= lambda!215731 lambda!215703))))

(declare-fun bs!1113055 () Bool)

(assert (= bs!1113055 (and b!4723445 d!1503963)))

(assert (=> bs!1113055 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888169) (= lambda!215731 lambda!215678))))

(assert (=> bs!1113034 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888441) (= lambda!215731 lambda!215722))))

(declare-fun bs!1113056 () Bool)

(assert (= bs!1113056 (and b!4723445 d!1503899)))

(assert (=> bs!1113056 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888111) (= lambda!215731 lambda!215669))))

(assert (=> b!4723445 true))

(declare-fun bs!1113057 () Bool)

(declare-fun b!4723443 () Bool)

(assert (= bs!1113057 (and b!4723443 d!1503873)))

(declare-fun lambda!215732 () Int)

(assert (=> bs!1113057 (not (= lambda!215732 lambda!215656))))

(declare-fun bs!1113058 () Bool)

(assert (= bs!1113058 (and b!4723443 b!4722976)))

(assert (=> bs!1113058 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888135) (= lambda!215732 lambda!215672))))

(declare-fun bs!1113059 () Bool)

(assert (= bs!1113059 (and b!4723443 b!4723054)))

(assert (=> bs!1113059 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215732 lambda!215676))))

(declare-fun bs!1113060 () Bool)

(assert (= bs!1113060 (and b!4723443 b!4722971)))

(assert (=> bs!1113060 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215732 lambda!215666))))

(declare-fun bs!1113061 () Bool)

(assert (= bs!1113061 (and b!4723443 b!4722847)))

(assert (=> bs!1113061 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215732 lambda!215638))))

(declare-fun bs!1113062 () Bool)

(assert (= bs!1113062 (and b!4723443 d!1504127)))

(assert (=> bs!1113062 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888077) (= lambda!215732 lambda!215715))))

(declare-fun bs!1113063 () Bool)

(assert (= bs!1113063 (and b!4723443 b!4723308)))

(assert (=> bs!1113063 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888322) (= lambda!215732 lambda!215700))))

(assert (=> bs!1113063 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215732 lambda!215698))))

(declare-fun bs!1113064 () Bool)

(assert (= bs!1113064 (and b!4723443 d!1503889)))

(assert (=> bs!1113064 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888078) (= lambda!215732 lambda!215665))))

(declare-fun bs!1113065 () Bool)

(assert (= bs!1113065 (and b!4723443 b!4723399)))

(assert (=> bs!1113065 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215732 lambda!215720))))

(declare-fun bs!1113066 () Bool)

(assert (= bs!1113066 (and b!4723443 b!4722949)))

(assert (=> bs!1113066 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215732 lambda!215658))))

(declare-fun bs!1113067 () Bool)

(assert (= bs!1113067 (and b!4723443 b!4722845)))

(assert (=> bs!1113067 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887947) (= lambda!215732 lambda!215640))))

(declare-fun bs!1113068 () Bool)

(assert (= bs!1113068 (and b!4723443 d!1503887)))

(assert (=> bs!1113068 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888057) (= lambda!215732 lambda!215661))))

(declare-fun bs!1113069 () Bool)

(assert (= bs!1113069 (and b!4723443 b!4722969)))

(assert (=> bs!1113069 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888110) (= lambda!215732 lambda!215668))))

(assert (=> bs!1113059 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888168) (= lambda!215732 lambda!215677))))

(declare-fun bs!1113070 () Bool)

(assert (= bs!1113070 (and b!4723443 b!4723273)))

(assert (=> bs!1113070 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888294) (= lambda!215732 lambda!215691))))

(declare-fun bs!1113071 () Bool)

(assert (= bs!1113071 (and b!4723443 d!1504139)))

(assert (=> bs!1113071 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888442) (= lambda!215732 lambda!215724))))

(declare-fun bs!1113072 () Bool)

(assert (= bs!1113072 (and b!4723443 b!4722954)))

(assert (=> bs!1113072 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215732 lambda!215662))))

(declare-fun bs!1113073 () Bool)

(assert (= bs!1113073 (and b!4723443 b!4722952)))

(assert (=> bs!1113073 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215732 lambda!215663))))

(declare-fun bs!1113074 () Bool)

(assert (= bs!1113074 (and b!4723443 b!4723056)))

(assert (=> bs!1113074 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215732 lambda!215675))))

(declare-fun bs!1113075 () Bool)

(assert (= bs!1113075 (and b!4723443 b!4722978)))

(assert (=> bs!1113075 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215732 lambda!215670))))

(declare-fun bs!1113076 () Bool)

(assert (= bs!1113076 (and b!4723443 d!1503799)))

(assert (=> bs!1113076 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887948) (= lambda!215732 lambda!215641))))

(declare-fun bs!1113077 () Bool)

(assert (= bs!1113077 (and b!4723443 b!4723275)))

(assert (=> bs!1113077 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215732 lambda!215689))))

(declare-fun bs!1113079 () Bool)

(assert (= bs!1113079 (and b!4723443 b!4722947)))

(assert (=> bs!1113079 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888056) (= lambda!215732 lambda!215660))))

(declare-fun bs!1113080 () Bool)

(assert (= bs!1113080 (and b!4723443 d!1503911)))

(assert (=> bs!1113080 (not (= lambda!215732 lambda!215674))))

(assert (=> bs!1113067 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215732 lambda!215639))))

(declare-fun bs!1113081 () Bool)

(assert (= bs!1113081 (and b!4723443 b!4723310)))

(assert (=> bs!1113081 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215732 lambda!215697))))

(assert (=> bs!1113058 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215732 lambda!215671))))

(assert (=> bs!1113079 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215732 lambda!215659))))

(assert (=> bs!1113073 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888077) (= lambda!215732 lambda!215664))))

(declare-fun bs!1113082 () Bool)

(assert (= bs!1113082 (and b!4723443 b!4723401)))

(assert (=> bs!1113082 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215732 lambda!215718))))

(assert (=> bs!1113069 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215732 lambda!215667))))

(declare-fun bs!1113083 () Bool)

(assert (= bs!1113083 (and b!4723443 d!1503907)))

(assert (=> bs!1113083 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888136) (= lambda!215732 lambda!215673))))

(declare-fun bs!1113084 () Bool)

(assert (= bs!1113084 (and b!4723443 d!1504043)))

(assert (=> bs!1113084 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888295) (= lambda!215732 lambda!215695))))

(assert (=> bs!1113070 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215732 lambda!215690))))

(declare-fun bs!1113085 () Bool)

(assert (= bs!1113085 (and b!4723443 d!1503991)))

(assert (=> bs!1113085 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1887727) (= lambda!215732 lambda!215688))))

(declare-fun bs!1113086 () Bool)

(assert (= bs!1113086 (and b!4723443 d!1504085)))

(assert (=> bs!1113086 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888323) (= lambda!215732 lambda!215703))))

(declare-fun bs!1113087 () Bool)

(assert (= bs!1113087 (and b!4723443 d!1503963)))

(assert (=> bs!1113087 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888169) (= lambda!215732 lambda!215678))))

(declare-fun bs!1113088 () Bool)

(assert (= bs!1113088 (and b!4723443 b!4723445)))

(assert (=> bs!1113088 (= lambda!215732 lambda!215731)))

(assert (=> bs!1113065 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888441) (= lambda!215732 lambda!215722))))

(declare-fun bs!1113089 () Bool)

(assert (= bs!1113089 (and b!4723443 d!1503899)))

(assert (=> bs!1113089 (= (= (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888111) (= lambda!215732 lambda!215669))))

(assert (=> b!4723443 true))

(declare-fun lambda!215733 () Int)

(assert (=> bs!1113057 (not (= lambda!215733 lambda!215656))))

(declare-fun lt!1888469 () ListMap!5281)

(assert (=> bs!1113058 (= (= lt!1888469 lt!1888135) (= lambda!215733 lambda!215672))))

(assert (=> bs!1113059 (= (= lt!1888469 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215733 lambda!215676))))

(assert (=> bs!1113060 (= (= lt!1888469 lt!1887727) (= lambda!215733 lambda!215666))))

(assert (=> bs!1113061 (= (= lt!1888469 lt!1887727) (= lambda!215733 lambda!215638))))

(assert (=> bs!1113062 (= (= lt!1888469 lt!1888077) (= lambda!215733 lambda!215715))))

(assert (=> bs!1113063 (= (= lt!1888469 lt!1888322) (= lambda!215733 lambda!215700))))

(assert (=> bs!1113063 (= (= lt!1888469 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215733 lambda!215698))))

(assert (=> bs!1113064 (= (= lt!1888469 lt!1888078) (= lambda!215733 lambda!215665))))

(assert (=> bs!1113065 (= (= lt!1888469 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215733 lambda!215720))))

(assert (=> bs!1113066 (= (= lt!1888469 lt!1887727) (= lambda!215733 lambda!215658))))

(assert (=> bs!1113067 (= (= lt!1888469 lt!1887947) (= lambda!215733 lambda!215640))))

(assert (=> bs!1113068 (= (= lt!1888469 lt!1888057) (= lambda!215733 lambda!215661))))

(assert (=> bs!1113069 (= (= lt!1888469 lt!1888110) (= lambda!215733 lambda!215668))))

(assert (=> bs!1113059 (= (= lt!1888469 lt!1888168) (= lambda!215733 lambda!215677))))

(assert (=> bs!1113070 (= (= lt!1888469 lt!1888294) (= lambda!215733 lambda!215691))))

(assert (=> bs!1113071 (= (= lt!1888469 lt!1888442) (= lambda!215733 lambda!215724))))

(assert (=> bs!1113072 (= (= lt!1888469 lt!1887727) (= lambda!215733 lambda!215662))))

(assert (=> bs!1113073 (= (= lt!1888469 lt!1887727) (= lambda!215733 lambda!215663))))

(assert (=> bs!1113074 (= (= lt!1888469 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215733 lambda!215675))))

(assert (=> bs!1113075 (= (= lt!1888469 lt!1887727) (= lambda!215733 lambda!215670))))

(assert (=> bs!1113076 (= (= lt!1888469 lt!1887948) (= lambda!215733 lambda!215641))))

(assert (=> bs!1113077 (= (= lt!1888469 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215733 lambda!215689))))

(assert (=> bs!1113079 (= (= lt!1888469 lt!1888056) (= lambda!215733 lambda!215660))))

(assert (=> bs!1113080 (not (= lambda!215733 lambda!215674))))

(assert (=> bs!1113067 (= (= lt!1888469 lt!1887727) (= lambda!215733 lambda!215639))))

(assert (=> bs!1113081 (= (= lt!1888469 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215733 lambda!215697))))

(assert (=> bs!1113058 (= (= lt!1888469 lt!1887727) (= lambda!215733 lambda!215671))))

(assert (=> bs!1113079 (= (= lt!1888469 lt!1887727) (= lambda!215733 lambda!215659))))

(assert (=> bs!1113073 (= (= lt!1888469 lt!1888077) (= lambda!215733 lambda!215664))))

(assert (=> bs!1113082 (= (= lt!1888469 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215733 lambda!215718))))

(assert (=> bs!1113069 (= (= lt!1888469 lt!1887727) (= lambda!215733 lambda!215667))))

(assert (=> b!4723443 (= (= lt!1888469 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215733 lambda!215732))))

(assert (=> bs!1113083 (= (= lt!1888469 lt!1888136) (= lambda!215733 lambda!215673))))

(assert (=> bs!1113084 (= (= lt!1888469 lt!1888295) (= lambda!215733 lambda!215695))))

(assert (=> bs!1113070 (= (= lt!1888469 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215733 lambda!215690))))

(assert (=> bs!1113085 (= (= lt!1888469 lt!1887727) (= lambda!215733 lambda!215688))))

(assert (=> bs!1113086 (= (= lt!1888469 lt!1888323) (= lambda!215733 lambda!215703))))

(assert (=> bs!1113087 (= (= lt!1888469 lt!1888169) (= lambda!215733 lambda!215678))))

(assert (=> bs!1113088 (= (= lt!1888469 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215733 lambda!215731))))

(assert (=> bs!1113065 (= (= lt!1888469 lt!1888441) (= lambda!215733 lambda!215722))))

(assert (=> bs!1113089 (= (= lt!1888469 lt!1888111) (= lambda!215733 lambda!215669))))

(assert (=> b!4723443 true))

(declare-fun bs!1113092 () Bool)

(declare-fun d!1504161 () Bool)

(assert (= bs!1113092 (and d!1504161 d!1503873)))

(declare-fun lambda!215734 () Int)

(assert (=> bs!1113092 (not (= lambda!215734 lambda!215656))))

(declare-fun bs!1113093 () Bool)

(assert (= bs!1113093 (and d!1504161 b!4722976)))

(declare-fun lt!1888470 () ListMap!5281)

(assert (=> bs!1113093 (= (= lt!1888470 lt!1888135) (= lambda!215734 lambda!215672))))

(declare-fun bs!1113094 () Bool)

(assert (= bs!1113094 (and d!1504161 b!4723054)))

(assert (=> bs!1113094 (= (= lt!1888470 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215734 lambda!215676))))

(declare-fun bs!1113095 () Bool)

(assert (= bs!1113095 (and d!1504161 b!4722971)))

(assert (=> bs!1113095 (= (= lt!1888470 lt!1887727) (= lambda!215734 lambda!215666))))

(declare-fun bs!1113096 () Bool)

(assert (= bs!1113096 (and d!1504161 b!4722847)))

(assert (=> bs!1113096 (= (= lt!1888470 lt!1887727) (= lambda!215734 lambda!215638))))

(declare-fun bs!1113097 () Bool)

(assert (= bs!1113097 (and d!1504161 d!1504127)))

(assert (=> bs!1113097 (= (= lt!1888470 lt!1888077) (= lambda!215734 lambda!215715))))

(declare-fun bs!1113098 () Bool)

(assert (= bs!1113098 (and d!1504161 b!4723308)))

(assert (=> bs!1113098 (= (= lt!1888470 lt!1888322) (= lambda!215734 lambda!215700))))

(assert (=> bs!1113098 (= (= lt!1888470 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215734 lambda!215698))))

(declare-fun bs!1113099 () Bool)

(assert (= bs!1113099 (and d!1504161 d!1503889)))

(assert (=> bs!1113099 (= (= lt!1888470 lt!1888078) (= lambda!215734 lambda!215665))))

(declare-fun bs!1113100 () Bool)

(assert (= bs!1113100 (and d!1504161 b!4723399)))

(assert (=> bs!1113100 (= (= lt!1888470 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215734 lambda!215720))))

(declare-fun bs!1113101 () Bool)

(assert (= bs!1113101 (and d!1504161 b!4722949)))

(assert (=> bs!1113101 (= (= lt!1888470 lt!1887727) (= lambda!215734 lambda!215658))))

(declare-fun bs!1113102 () Bool)

(assert (= bs!1113102 (and d!1504161 b!4722845)))

(assert (=> bs!1113102 (= (= lt!1888470 lt!1887947) (= lambda!215734 lambda!215640))))

(declare-fun bs!1113103 () Bool)

(assert (= bs!1113103 (and d!1504161 d!1503887)))

(assert (=> bs!1113103 (= (= lt!1888470 lt!1888057) (= lambda!215734 lambda!215661))))

(declare-fun bs!1113104 () Bool)

(assert (= bs!1113104 (and d!1504161 b!4722969)))

(assert (=> bs!1113104 (= (= lt!1888470 lt!1888110) (= lambda!215734 lambda!215668))))

(assert (=> bs!1113094 (= (= lt!1888470 lt!1888168) (= lambda!215734 lambda!215677))))

(declare-fun bs!1113105 () Bool)

(assert (= bs!1113105 (and d!1504161 b!4723273)))

(assert (=> bs!1113105 (= (= lt!1888470 lt!1888294) (= lambda!215734 lambda!215691))))

(declare-fun bs!1113106 () Bool)

(assert (= bs!1113106 (and d!1504161 d!1504139)))

(assert (=> bs!1113106 (= (= lt!1888470 lt!1888442) (= lambda!215734 lambda!215724))))

(declare-fun bs!1113107 () Bool)

(assert (= bs!1113107 (and d!1504161 b!4722954)))

(assert (=> bs!1113107 (= (= lt!1888470 lt!1887727) (= lambda!215734 lambda!215662))))

(declare-fun bs!1113108 () Bool)

(assert (= bs!1113108 (and d!1504161 b!4722952)))

(assert (=> bs!1113108 (= (= lt!1888470 lt!1887727) (= lambda!215734 lambda!215663))))

(declare-fun bs!1113109 () Bool)

(assert (= bs!1113109 (and d!1504161 b!4723056)))

(assert (=> bs!1113109 (= (= lt!1888470 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215734 lambda!215675))))

(declare-fun bs!1113110 () Bool)

(assert (= bs!1113110 (and d!1504161 b!4723443)))

(assert (=> bs!1113110 (= (= lt!1888470 lt!1888469) (= lambda!215734 lambda!215733))))

(declare-fun bs!1113111 () Bool)

(assert (= bs!1113111 (and d!1504161 b!4722978)))

(assert (=> bs!1113111 (= (= lt!1888470 lt!1887727) (= lambda!215734 lambda!215670))))

(declare-fun bs!1113112 () Bool)

(assert (= bs!1113112 (and d!1504161 d!1503799)))

(assert (=> bs!1113112 (= (= lt!1888470 lt!1887948) (= lambda!215734 lambda!215641))))

(declare-fun bs!1113113 () Bool)

(assert (= bs!1113113 (and d!1504161 b!4723275)))

(assert (=> bs!1113113 (= (= lt!1888470 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215734 lambda!215689))))

(declare-fun bs!1113114 () Bool)

(assert (= bs!1113114 (and d!1504161 b!4722947)))

(assert (=> bs!1113114 (= (= lt!1888470 lt!1888056) (= lambda!215734 lambda!215660))))

(declare-fun bs!1113115 () Bool)

(assert (= bs!1113115 (and d!1504161 d!1503911)))

(assert (=> bs!1113115 (not (= lambda!215734 lambda!215674))))

(assert (=> bs!1113102 (= (= lt!1888470 lt!1887727) (= lambda!215734 lambda!215639))))

(declare-fun bs!1113116 () Bool)

(assert (= bs!1113116 (and d!1504161 b!4723310)))

(assert (=> bs!1113116 (= (= lt!1888470 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215734 lambda!215697))))

(assert (=> bs!1113093 (= (= lt!1888470 lt!1887727) (= lambda!215734 lambda!215671))))

(assert (=> bs!1113114 (= (= lt!1888470 lt!1887727) (= lambda!215734 lambda!215659))))

(assert (=> bs!1113108 (= (= lt!1888470 lt!1888077) (= lambda!215734 lambda!215664))))

(declare-fun bs!1113117 () Bool)

(assert (= bs!1113117 (and d!1504161 b!4723401)))

(assert (=> bs!1113117 (= (= lt!1888470 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215734 lambda!215718))))

(assert (=> bs!1113104 (= (= lt!1888470 lt!1887727) (= lambda!215734 lambda!215667))))

(assert (=> bs!1113110 (= (= lt!1888470 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215734 lambda!215732))))

(declare-fun bs!1113118 () Bool)

(assert (= bs!1113118 (and d!1504161 d!1503907)))

(assert (=> bs!1113118 (= (= lt!1888470 lt!1888136) (= lambda!215734 lambda!215673))))

(declare-fun bs!1113119 () Bool)

(assert (= bs!1113119 (and d!1504161 d!1504043)))

(assert (=> bs!1113119 (= (= lt!1888470 lt!1888295) (= lambda!215734 lambda!215695))))

(assert (=> bs!1113105 (= (= lt!1888470 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215734 lambda!215690))))

(declare-fun bs!1113121 () Bool)

(assert (= bs!1113121 (and d!1504161 d!1503991)))

(assert (=> bs!1113121 (= (= lt!1888470 lt!1887727) (= lambda!215734 lambda!215688))))

(declare-fun bs!1113123 () Bool)

(assert (= bs!1113123 (and d!1504161 d!1504085)))

(assert (=> bs!1113123 (= (= lt!1888470 lt!1888323) (= lambda!215734 lambda!215703))))

(declare-fun bs!1113125 () Bool)

(assert (= bs!1113125 (and d!1504161 d!1503963)))

(assert (=> bs!1113125 (= (= lt!1888470 lt!1888169) (= lambda!215734 lambda!215678))))

(declare-fun bs!1113126 () Bool)

(assert (= bs!1113126 (and d!1504161 b!4723445)))

(assert (=> bs!1113126 (= (= lt!1888470 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215734 lambda!215731))))

(assert (=> bs!1113100 (= (= lt!1888470 lt!1888441) (= lambda!215734 lambda!215722))))

(declare-fun bs!1113129 () Bool)

(assert (= bs!1113129 (and d!1504161 d!1503899)))

(assert (=> bs!1113129 (= (= lt!1888470 lt!1888111) (= lambda!215734 lambda!215669))))

(assert (=> d!1504161 true))

(declare-fun bm!330397 () Bool)

(declare-fun c!806690 () Bool)

(declare-fun call!330403 () Bool)

(assert (=> bm!330397 (= call!330403 (forall!11590 (ite c!806690 (toList!5917 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (_2!30520 (h!59178 (toList!5918 lm!2023)))) (ite c!806690 lambda!215731 lambda!215733)))))

(declare-fun e!2945879 () ListMap!5281)

(assert (=> b!4723443 (= e!2945879 lt!1888469)))

(declare-fun lt!1888464 () ListMap!5281)

(assert (=> b!4723443 (= lt!1888464 (+!2269 (extractMap!2040 (t!360221 (toList!5918 lm!2023))) (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(assert (=> b!4723443 (= lt!1888469 (addToMapMapFromBucket!1444 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023)))) (+!2269 (extractMap!2040 (t!360221 (toList!5918 lm!2023))) (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(declare-fun lt!1888479 () Unit!130119)

(declare-fun call!330404 () Unit!130119)

(assert (=> b!4723443 (= lt!1888479 call!330404)))

(assert (=> b!4723443 (forall!11590 (toList!5917 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) lambda!215732)))

(declare-fun lt!1888467 () Unit!130119)

(assert (=> b!4723443 (= lt!1888467 lt!1888479)))

(assert (=> b!4723443 (forall!11590 (toList!5917 lt!1888464) lambda!215733)))

(declare-fun lt!1888465 () Unit!130119)

(declare-fun Unit!130337 () Unit!130119)

(assert (=> b!4723443 (= lt!1888465 Unit!130337)))

(assert (=> b!4723443 (forall!11590 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023)))) lambda!215733)))

(declare-fun lt!1888463 () Unit!130119)

(declare-fun Unit!130338 () Unit!130119)

(assert (=> b!4723443 (= lt!1888463 Unit!130338)))

(declare-fun lt!1888474 () Unit!130119)

(declare-fun Unit!130339 () Unit!130119)

(assert (=> b!4723443 (= lt!1888474 Unit!130339)))

(declare-fun lt!1888477 () Unit!130119)

(assert (=> b!4723443 (= lt!1888477 (forallContained!3639 (toList!5917 lt!1888464) lambda!215733 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(assert (=> b!4723443 (contains!16175 lt!1888464 (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(declare-fun lt!1888480 () Unit!130119)

(declare-fun Unit!130340 () Unit!130119)

(assert (=> b!4723443 (= lt!1888480 Unit!130340)))

(assert (=> b!4723443 (contains!16175 lt!1888469 (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(declare-fun lt!1888473 () Unit!130119)

(declare-fun Unit!130341 () Unit!130119)

(assert (=> b!4723443 (= lt!1888473 Unit!130341)))

(assert (=> b!4723443 call!330403))

(declare-fun lt!1888461 () Unit!130119)

(declare-fun Unit!130342 () Unit!130119)

(assert (=> b!4723443 (= lt!1888461 Unit!130342)))

(assert (=> b!4723443 (forall!11590 (toList!5917 lt!1888464) lambda!215733)))

(declare-fun lt!1888460 () Unit!130119)

(declare-fun Unit!130344 () Unit!130119)

(assert (=> b!4723443 (= lt!1888460 Unit!130344)))

(declare-fun lt!1888471 () Unit!130119)

(declare-fun Unit!130345 () Unit!130119)

(assert (=> b!4723443 (= lt!1888471 Unit!130345)))

(declare-fun lt!1888462 () Unit!130119)

(assert (=> b!4723443 (= lt!1888462 (addForallContainsKeyThenBeforeAdding!796 (extractMap!2040 (t!360221 (toList!5918 lm!2023))) lt!1888469 (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (_2!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(assert (=> b!4723443 (forall!11590 (toList!5917 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) lambda!215733)))

(declare-fun lt!1888475 () Unit!130119)

(assert (=> b!4723443 (= lt!1888475 lt!1888462)))

(declare-fun call!330402 () Bool)

(assert (=> b!4723443 call!330402))

(declare-fun lt!1888466 () Unit!130119)

(declare-fun Unit!130346 () Unit!130119)

(assert (=> b!4723443 (= lt!1888466 Unit!130346)))

(declare-fun res!1998475 () Bool)

(assert (=> b!4723443 (= res!1998475 (forall!11590 (_2!30520 (h!59178 (toList!5918 lm!2023))) lambda!215733))))

(declare-fun e!2945881 () Bool)

(assert (=> b!4723443 (=> (not res!1998475) (not e!2945881))))

(assert (=> b!4723443 e!2945881))

(declare-fun lt!1888472 () Unit!130119)

(declare-fun Unit!130347 () Unit!130119)

(assert (=> b!4723443 (= lt!1888472 Unit!130347)))

(declare-fun e!2945880 () Bool)

(assert (=> d!1504161 e!2945880))

(declare-fun res!1998477 () Bool)

(assert (=> d!1504161 (=> (not res!1998477) (not e!2945880))))

(assert (=> d!1504161 (= res!1998477 (forall!11590 (_2!30520 (h!59178 (toList!5918 lm!2023))) lambda!215734))))

(assert (=> d!1504161 (= lt!1888470 e!2945879)))

(assert (=> d!1504161 (= c!806690 ((_ is Nil!52830) (_2!30520 (h!59178 (toList!5918 lm!2023)))))))

(assert (=> d!1504161 (noDuplicateKeys!2014 (_2!30520 (h!59178 (toList!5918 lm!2023))))))

(assert (=> d!1504161 (= (addToMapMapFromBucket!1444 (_2!30520 (h!59178 (toList!5918 lm!2023))) (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) lt!1888470)))

(declare-fun b!4723444 () Bool)

(assert (=> b!4723444 (= e!2945881 (forall!11590 (toList!5917 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) lambda!215733))))

(assert (=> b!4723445 (= e!2945879 (extractMap!2040 (t!360221 (toList!5918 lm!2023))))))

(declare-fun lt!1888468 () Unit!130119)

(assert (=> b!4723445 (= lt!1888468 call!330404)))

(assert (=> b!4723445 call!330403))

(declare-fun lt!1888478 () Unit!130119)

(assert (=> b!4723445 (= lt!1888478 lt!1888468)))

(assert (=> b!4723445 call!330402))

(declare-fun lt!1888476 () Unit!130119)

(declare-fun Unit!130348 () Unit!130119)

(assert (=> b!4723445 (= lt!1888476 Unit!130348)))

(declare-fun b!4723446 () Bool)

(assert (=> b!4723446 (= e!2945880 (invariantList!1511 (toList!5917 lt!1888470)))))

(declare-fun b!4723447 () Bool)

(declare-fun res!1998476 () Bool)

(assert (=> b!4723447 (=> (not res!1998476) (not e!2945880))))

(assert (=> b!4723447 (= res!1998476 (forall!11590 (toList!5917 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) lambda!215734))))

(declare-fun bm!330398 () Bool)

(assert (=> bm!330398 (= call!330402 (forall!11590 (toList!5917 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (ite c!806690 lambda!215731 lambda!215733)))))

(declare-fun bm!330399 () Bool)

(assert (=> bm!330399 (= call!330404 (lemmaContainsAllItsOwnKeys!797 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))))))

(assert (= (and d!1504161 c!806690) b!4723445))

(assert (= (and d!1504161 (not c!806690)) b!4723443))

(assert (= (and b!4723443 res!1998475) b!4723444))

(assert (= (or b!4723445 b!4723443) bm!330399))

(assert (= (or b!4723445 b!4723443) bm!330398))

(assert (= (or b!4723445 b!4723443) bm!330397))

(assert (= (and d!1504161 res!1998477) b!4723447))

(assert (= (and b!4723447 res!1998476) b!4723446))

(declare-fun m!5660047 () Bool)

(assert (=> bm!330398 m!5660047))

(assert (=> bm!330399 m!5658497))

(declare-fun m!5660049 () Bool)

(assert (=> bm!330399 m!5660049))

(declare-fun m!5660051 () Bool)

(assert (=> b!4723446 m!5660051))

(declare-fun m!5660053 () Bool)

(assert (=> d!1504161 m!5660053))

(assert (=> d!1504161 m!5658739))

(declare-fun m!5660055 () Bool)

(assert (=> b!4723447 m!5660055))

(declare-fun m!5660057 () Bool)

(assert (=> bm!330397 m!5660057))

(declare-fun m!5660059 () Bool)

(assert (=> b!4723443 m!5660059))

(declare-fun m!5660061 () Bool)

(assert (=> b!4723443 m!5660061))

(declare-fun m!5660063 () Bool)

(assert (=> b!4723443 m!5660063))

(declare-fun m!5660065 () Bool)

(assert (=> b!4723443 m!5660065))

(assert (=> b!4723443 m!5658497))

(declare-fun m!5660067 () Bool)

(assert (=> b!4723443 m!5660067))

(declare-fun m!5660069 () Bool)

(assert (=> b!4723443 m!5660069))

(declare-fun m!5660071 () Bool)

(assert (=> b!4723443 m!5660071))

(declare-fun m!5660073 () Bool)

(assert (=> b!4723443 m!5660073))

(declare-fun m!5660075 () Bool)

(assert (=> b!4723443 m!5660075))

(assert (=> b!4723443 m!5660065))

(assert (=> b!4723443 m!5658497))

(assert (=> b!4723443 m!5660069))

(declare-fun m!5660077 () Bool)

(assert (=> b!4723443 m!5660077))

(declare-fun m!5660079 () Bool)

(assert (=> b!4723443 m!5660079))

(assert (=> b!4723444 m!5660061))

(assert (=> b!4722921 d!1504161))

(assert (=> b!4722921 d!1503843))

(declare-fun d!1504207 () Bool)

(declare-fun res!1998509 () Bool)

(declare-fun e!2945922 () Bool)

(assert (=> d!1504207 (=> res!1998509 e!2945922)))

(assert (=> d!1504207 (= res!1998509 (not ((_ is Cons!52830) (_2!30520 (h!59178 lt!1887719)))))))

(assert (=> d!1504207 (= (noDuplicateKeys!2014 (_2!30520 (h!59178 lt!1887719))) e!2945922)))

(declare-fun b!4723497 () Bool)

(declare-fun e!2945923 () Bool)

(assert (=> b!4723497 (= e!2945922 e!2945923)))

(declare-fun res!1998510 () Bool)

(assert (=> b!4723497 (=> (not res!1998510) (not e!2945923))))

(assert (=> b!4723497 (= res!1998510 (not (containsKey!3369 (t!360220 (_2!30520 (h!59178 lt!1887719))) (_1!30519 (h!59177 (_2!30520 (h!59178 lt!1887719)))))))))

(declare-fun b!4723498 () Bool)

(assert (=> b!4723498 (= e!2945923 (noDuplicateKeys!2014 (t!360220 (_2!30520 (h!59178 lt!1887719)))))))

(assert (= (and d!1504207 (not res!1998509)) b!4723497))

(assert (= (and b!4723497 res!1998510) b!4723498))

(declare-fun m!5660089 () Bool)

(assert (=> b!4723497 m!5660089))

(declare-fun m!5660091 () Bool)

(assert (=> b!4723498 m!5660091))

(assert (=> bs!1112476 d!1504207))

(declare-fun bs!1113151 () Bool)

(declare-fun b!4723503 () Bool)

(assert (= bs!1113151 (and b!4723503 d!1503873)))

(declare-fun lambda!215736 () Int)

(assert (=> bs!1113151 (not (= lambda!215736 lambda!215656))))

(declare-fun bs!1113152 () Bool)

(assert (= bs!1113152 (and b!4723503 b!4722976)))

(assert (=> bs!1113152 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888135) (= lambda!215736 lambda!215672))))

(declare-fun bs!1113153 () Bool)

(assert (= bs!1113153 (and b!4723503 d!1504161)))

(assert (=> bs!1113153 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888470) (= lambda!215736 lambda!215734))))

(declare-fun bs!1113154 () Bool)

(assert (= bs!1113154 (and b!4723503 b!4723054)))

(assert (=> bs!1113154 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215736 lambda!215676))))

(declare-fun bs!1113155 () Bool)

(assert (= bs!1113155 (and b!4723503 b!4722971)))

(assert (=> bs!1113155 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215736 lambda!215666))))

(declare-fun bs!1113156 () Bool)

(assert (= bs!1113156 (and b!4723503 b!4722847)))

(assert (=> bs!1113156 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215736 lambda!215638))))

(declare-fun bs!1113157 () Bool)

(assert (= bs!1113157 (and b!4723503 d!1504127)))

(assert (=> bs!1113157 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888077) (= lambda!215736 lambda!215715))))

(declare-fun bs!1113158 () Bool)

(assert (= bs!1113158 (and b!4723503 b!4723308)))

(assert (=> bs!1113158 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888322) (= lambda!215736 lambda!215700))))

(assert (=> bs!1113158 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215736 lambda!215698))))

(declare-fun bs!1113159 () Bool)

(assert (= bs!1113159 (and b!4723503 d!1503889)))

(assert (=> bs!1113159 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888078) (= lambda!215736 lambda!215665))))

(declare-fun bs!1113160 () Bool)

(assert (= bs!1113160 (and b!4723503 b!4723399)))

(assert (=> bs!1113160 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215736 lambda!215720))))

(declare-fun bs!1113161 () Bool)

(assert (= bs!1113161 (and b!4723503 b!4722949)))

(assert (=> bs!1113161 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215736 lambda!215658))))

(declare-fun bs!1113162 () Bool)

(assert (= bs!1113162 (and b!4723503 b!4722845)))

(assert (=> bs!1113162 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887947) (= lambda!215736 lambda!215640))))

(declare-fun bs!1113163 () Bool)

(assert (= bs!1113163 (and b!4723503 d!1503887)))

(assert (=> bs!1113163 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888057) (= lambda!215736 lambda!215661))))

(declare-fun bs!1113164 () Bool)

(assert (= bs!1113164 (and b!4723503 b!4722969)))

(assert (=> bs!1113164 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888110) (= lambda!215736 lambda!215668))))

(assert (=> bs!1113154 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888168) (= lambda!215736 lambda!215677))))

(declare-fun bs!1113165 () Bool)

(assert (= bs!1113165 (and b!4723503 b!4723273)))

(assert (=> bs!1113165 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888294) (= lambda!215736 lambda!215691))))

(declare-fun bs!1113166 () Bool)

(assert (= bs!1113166 (and b!4723503 d!1504139)))

(assert (=> bs!1113166 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888442) (= lambda!215736 lambda!215724))))

(declare-fun bs!1113167 () Bool)

(assert (= bs!1113167 (and b!4723503 b!4722954)))

(assert (=> bs!1113167 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215736 lambda!215662))))

(declare-fun bs!1113168 () Bool)

(assert (= bs!1113168 (and b!4723503 b!4722952)))

(assert (=> bs!1113168 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215736 lambda!215663))))

(declare-fun bs!1113169 () Bool)

(assert (= bs!1113169 (and b!4723503 b!4723056)))

(assert (=> bs!1113169 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215736 lambda!215675))))

(declare-fun bs!1113170 () Bool)

(assert (= bs!1113170 (and b!4723503 b!4723443)))

(assert (=> bs!1113170 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888469) (= lambda!215736 lambda!215733))))

(declare-fun bs!1113171 () Bool)

(assert (= bs!1113171 (and b!4723503 b!4722978)))

(assert (=> bs!1113171 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215736 lambda!215670))))

(declare-fun bs!1113172 () Bool)

(assert (= bs!1113172 (and b!4723503 d!1503799)))

(assert (=> bs!1113172 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887948) (= lambda!215736 lambda!215641))))

(declare-fun bs!1113173 () Bool)

(assert (= bs!1113173 (and b!4723503 b!4723275)))

(assert (=> bs!1113173 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215736 lambda!215689))))

(declare-fun bs!1113174 () Bool)

(assert (= bs!1113174 (and b!4723503 b!4722947)))

(assert (=> bs!1113174 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888056) (= lambda!215736 lambda!215660))))

(declare-fun bs!1113175 () Bool)

(assert (= bs!1113175 (and b!4723503 d!1503911)))

(assert (=> bs!1113175 (not (= lambda!215736 lambda!215674))))

(assert (=> bs!1113162 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215736 lambda!215639))))

(declare-fun bs!1113176 () Bool)

(assert (= bs!1113176 (and b!4723503 b!4723310)))

(assert (=> bs!1113176 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215736 lambda!215697))))

(assert (=> bs!1113152 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215736 lambda!215671))))

(assert (=> bs!1113174 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215736 lambda!215659))))

(assert (=> bs!1113168 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888077) (= lambda!215736 lambda!215664))))

(declare-fun bs!1113177 () Bool)

(assert (= bs!1113177 (and b!4723503 b!4723401)))

(assert (=> bs!1113177 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215736 lambda!215718))))

(assert (=> bs!1113164 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215736 lambda!215667))))

(assert (=> bs!1113170 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215736 lambda!215732))))

(declare-fun bs!1113178 () Bool)

(assert (= bs!1113178 (and b!4723503 d!1503907)))

(assert (=> bs!1113178 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888136) (= lambda!215736 lambda!215673))))

(declare-fun bs!1113179 () Bool)

(assert (= bs!1113179 (and b!4723503 d!1504043)))

(assert (=> bs!1113179 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888295) (= lambda!215736 lambda!215695))))

(assert (=> bs!1113165 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215736 lambda!215690))))

(declare-fun bs!1113180 () Bool)

(assert (= bs!1113180 (and b!4723503 d!1503991)))

(assert (=> bs!1113180 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215736 lambda!215688))))

(declare-fun bs!1113181 () Bool)

(assert (= bs!1113181 (and b!4723503 d!1504085)))

(assert (=> bs!1113181 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888323) (= lambda!215736 lambda!215703))))

(declare-fun bs!1113182 () Bool)

(assert (= bs!1113182 (and b!4723503 d!1503963)))

(assert (=> bs!1113182 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888169) (= lambda!215736 lambda!215678))))

(declare-fun bs!1113183 () Bool)

(assert (= bs!1113183 (and b!4723503 b!4723445)))

(assert (=> bs!1113183 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215736 lambda!215731))))

(assert (=> bs!1113160 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888441) (= lambda!215736 lambda!215722))))

(declare-fun bs!1113184 () Bool)

(assert (= bs!1113184 (and b!4723503 d!1503899)))

(assert (=> bs!1113184 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888111) (= lambda!215736 lambda!215669))))

(assert (=> b!4723503 true))

(declare-fun bs!1113189 () Bool)

(declare-fun b!4723501 () Bool)

(assert (= bs!1113189 (and b!4723501 d!1503873)))

(declare-fun lambda!215738 () Int)

(assert (=> bs!1113189 (not (= lambda!215738 lambda!215656))))

(declare-fun bs!1113191 () Bool)

(assert (= bs!1113191 (and b!4723501 b!4722976)))

(assert (=> bs!1113191 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888135) (= lambda!215738 lambda!215672))))

(declare-fun bs!1113192 () Bool)

(assert (= bs!1113192 (and b!4723501 d!1504161)))

(assert (=> bs!1113192 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888470) (= lambda!215738 lambda!215734))))

(declare-fun bs!1113193 () Bool)

(assert (= bs!1113193 (and b!4723501 b!4723054)))

(assert (=> bs!1113193 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215738 lambda!215676))))

(declare-fun bs!1113194 () Bool)

(assert (= bs!1113194 (and b!4723501 b!4722971)))

(assert (=> bs!1113194 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215738 lambda!215666))))

(declare-fun bs!1113196 () Bool)

(assert (= bs!1113196 (and b!4723501 d!1504127)))

(assert (=> bs!1113196 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888077) (= lambda!215738 lambda!215715))))

(declare-fun bs!1113198 () Bool)

(assert (= bs!1113198 (and b!4723501 b!4723308)))

(assert (=> bs!1113198 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888322) (= lambda!215738 lambda!215700))))

(assert (=> bs!1113198 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215738 lambda!215698))))

(declare-fun bs!1113200 () Bool)

(assert (= bs!1113200 (and b!4723501 d!1503889)))

(assert (=> bs!1113200 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888078) (= lambda!215738 lambda!215665))))

(declare-fun bs!1113202 () Bool)

(assert (= bs!1113202 (and b!4723501 b!4723399)))

(assert (=> bs!1113202 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215738 lambda!215720))))

(declare-fun bs!1113204 () Bool)

(assert (= bs!1113204 (and b!4723501 b!4722949)))

(assert (=> bs!1113204 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215738 lambda!215658))))

(declare-fun bs!1113206 () Bool)

(assert (= bs!1113206 (and b!4723501 b!4722845)))

(assert (=> bs!1113206 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887947) (= lambda!215738 lambda!215640))))

(declare-fun bs!1113207 () Bool)

(assert (= bs!1113207 (and b!4723501 d!1503887)))

(assert (=> bs!1113207 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888057) (= lambda!215738 lambda!215661))))

(declare-fun bs!1113209 () Bool)

(assert (= bs!1113209 (and b!4723501 b!4722969)))

(assert (=> bs!1113209 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888110) (= lambda!215738 lambda!215668))))

(assert (=> bs!1113193 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888168) (= lambda!215738 lambda!215677))))

(declare-fun bs!1113212 () Bool)

(assert (= bs!1113212 (and b!4723501 b!4723273)))

(assert (=> bs!1113212 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888294) (= lambda!215738 lambda!215691))))

(declare-fun bs!1113214 () Bool)

(assert (= bs!1113214 (and b!4723501 d!1504139)))

(assert (=> bs!1113214 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888442) (= lambda!215738 lambda!215724))))

(declare-fun bs!1113215 () Bool)

(assert (= bs!1113215 (and b!4723501 b!4722954)))

(assert (=> bs!1113215 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215738 lambda!215662))))

(declare-fun bs!1113217 () Bool)

(assert (= bs!1113217 (and b!4723501 b!4722952)))

(assert (=> bs!1113217 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215738 lambda!215663))))

(declare-fun bs!1113219 () Bool)

(assert (= bs!1113219 (and b!4723501 b!4723056)))

(assert (=> bs!1113219 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215738 lambda!215675))))

(declare-fun bs!1113221 () Bool)

(assert (= bs!1113221 (and b!4723501 b!4723443)))

(assert (=> bs!1113221 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888469) (= lambda!215738 lambda!215733))))

(declare-fun bs!1113223 () Bool)

(assert (= bs!1113223 (and b!4723501 b!4722978)))

(assert (=> bs!1113223 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215738 lambda!215670))))

(declare-fun bs!1113224 () Bool)

(assert (= bs!1113224 (and b!4723501 d!1503799)))

(assert (=> bs!1113224 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887948) (= lambda!215738 lambda!215641))))

(declare-fun bs!1113225 () Bool)

(assert (= bs!1113225 (and b!4723501 b!4723275)))

(assert (=> bs!1113225 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215738 lambda!215689))))

(declare-fun bs!1113227 () Bool)

(assert (= bs!1113227 (and b!4723501 b!4722947)))

(assert (=> bs!1113227 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888056) (= lambda!215738 lambda!215660))))

(declare-fun bs!1113229 () Bool)

(assert (= bs!1113229 (and b!4723501 d!1503911)))

(assert (=> bs!1113229 (not (= lambda!215738 lambda!215674))))

(assert (=> bs!1113206 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215738 lambda!215639))))

(declare-fun bs!1113232 () Bool)

(assert (= bs!1113232 (and b!4723501 b!4723310)))

(assert (=> bs!1113232 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215738 lambda!215697))))

(assert (=> bs!1113191 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215738 lambda!215671))))

(assert (=> bs!1113227 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215738 lambda!215659))))

(assert (=> bs!1113217 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888077) (= lambda!215738 lambda!215664))))

(declare-fun bs!1113236 () Bool)

(assert (= bs!1113236 (and b!4723501 b!4723401)))

(assert (=> bs!1113236 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215738 lambda!215718))))

(assert (=> bs!1113209 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215738 lambda!215667))))

(assert (=> bs!1113221 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215738 lambda!215732))))

(declare-fun bs!1113237 () Bool)

(assert (= bs!1113237 (and b!4723501 d!1503907)))

(assert (=> bs!1113237 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888136) (= lambda!215738 lambda!215673))))

(declare-fun bs!1113238 () Bool)

(assert (= bs!1113238 (and b!4723501 d!1504043)))

(assert (=> bs!1113238 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888295) (= lambda!215738 lambda!215695))))

(assert (=> bs!1113212 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215738 lambda!215690))))

(declare-fun bs!1113239 () Bool)

(assert (= bs!1113239 (and b!4723501 d!1503991)))

(assert (=> bs!1113239 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215738 lambda!215688))))

(declare-fun bs!1113240 () Bool)

(assert (= bs!1113240 (and b!4723501 d!1504085)))

(assert (=> bs!1113240 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888323) (= lambda!215738 lambda!215703))))

(declare-fun bs!1113241 () Bool)

(assert (= bs!1113241 (and b!4723501 d!1503963)))

(assert (=> bs!1113241 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888169) (= lambda!215738 lambda!215678))))

(declare-fun bs!1113242 () Bool)

(assert (= bs!1113242 (and b!4723501 b!4723445)))

(assert (=> bs!1113242 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215738 lambda!215731))))

(declare-fun bs!1113244 () Bool)

(assert (= bs!1113244 (and b!4723501 b!4723503)))

(assert (=> bs!1113244 (= lambda!215738 lambda!215736)))

(declare-fun bs!1113245 () Bool)

(assert (= bs!1113245 (and b!4723501 b!4722847)))

(assert (=> bs!1113245 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1887727) (= lambda!215738 lambda!215638))))

(assert (=> bs!1113202 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888441) (= lambda!215738 lambda!215722))))

(declare-fun bs!1113248 () Bool)

(assert (= bs!1113248 (and b!4723501 d!1503899)))

(assert (=> bs!1113248 (= (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888111) (= lambda!215738 lambda!215669))))

(assert (=> b!4723501 true))

(declare-fun lambda!215740 () Int)

(assert (=> bs!1113189 (not (= lambda!215740 lambda!215656))))

(declare-fun lt!1888504 () ListMap!5281)

(assert (=> bs!1113192 (= (= lt!1888504 lt!1888470) (= lambda!215740 lambda!215734))))

(assert (=> bs!1113193 (= (= lt!1888504 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215740 lambda!215676))))

(assert (=> bs!1113194 (= (= lt!1888504 lt!1887727) (= lambda!215740 lambda!215666))))

(assert (=> bs!1113196 (= (= lt!1888504 lt!1888077) (= lambda!215740 lambda!215715))))

(assert (=> bs!1113198 (= (= lt!1888504 lt!1888322) (= lambda!215740 lambda!215700))))

(assert (=> bs!1113198 (= (= lt!1888504 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215740 lambda!215698))))

(assert (=> bs!1113200 (= (= lt!1888504 lt!1888078) (= lambda!215740 lambda!215665))))

(assert (=> bs!1113202 (= (= lt!1888504 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215740 lambda!215720))))

(assert (=> bs!1113204 (= (= lt!1888504 lt!1887727) (= lambda!215740 lambda!215658))))

(assert (=> bs!1113206 (= (= lt!1888504 lt!1887947) (= lambda!215740 lambda!215640))))

(assert (=> bs!1113207 (= (= lt!1888504 lt!1888057) (= lambda!215740 lambda!215661))))

(assert (=> bs!1113209 (= (= lt!1888504 lt!1888110) (= lambda!215740 lambda!215668))))

(assert (=> bs!1113193 (= (= lt!1888504 lt!1888168) (= lambda!215740 lambda!215677))))

(assert (=> bs!1113212 (= (= lt!1888504 lt!1888294) (= lambda!215740 lambda!215691))))

(assert (=> bs!1113214 (= (= lt!1888504 lt!1888442) (= lambda!215740 lambda!215724))))

(assert (=> bs!1113215 (= (= lt!1888504 lt!1887727) (= lambda!215740 lambda!215662))))

(assert (=> bs!1113217 (= (= lt!1888504 lt!1887727) (= lambda!215740 lambda!215663))))

(assert (=> bs!1113219 (= (= lt!1888504 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215740 lambda!215675))))

(assert (=> bs!1113221 (= (= lt!1888504 lt!1888469) (= lambda!215740 lambda!215733))))

(assert (=> bs!1113223 (= (= lt!1888504 lt!1887727) (= lambda!215740 lambda!215670))))

(assert (=> bs!1113224 (= (= lt!1888504 lt!1887948) (= lambda!215740 lambda!215641))))

(assert (=> bs!1113225 (= (= lt!1888504 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215740 lambda!215689))))

(assert (=> bs!1113227 (= (= lt!1888504 lt!1888056) (= lambda!215740 lambda!215660))))

(assert (=> bs!1113229 (not (= lambda!215740 lambda!215674))))

(assert (=> bs!1113206 (= (= lt!1888504 lt!1887727) (= lambda!215740 lambda!215639))))

(assert (=> bs!1113232 (= (= lt!1888504 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215740 lambda!215697))))

(assert (=> bs!1113191 (= (= lt!1888504 lt!1887727) (= lambda!215740 lambda!215671))))

(assert (=> bs!1113227 (= (= lt!1888504 lt!1887727) (= lambda!215740 lambda!215659))))

(assert (=> bs!1113217 (= (= lt!1888504 lt!1888077) (= lambda!215740 lambda!215664))))

(assert (=> b!4723501 (= (= lt!1888504 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215740 lambda!215738))))

(assert (=> bs!1113191 (= (= lt!1888504 lt!1888135) (= lambda!215740 lambda!215672))))

(assert (=> bs!1113236 (= (= lt!1888504 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215740 lambda!215718))))

(assert (=> bs!1113209 (= (= lt!1888504 lt!1887727) (= lambda!215740 lambda!215667))))

(assert (=> bs!1113221 (= (= lt!1888504 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215740 lambda!215732))))

(assert (=> bs!1113237 (= (= lt!1888504 lt!1888136) (= lambda!215740 lambda!215673))))

(assert (=> bs!1113238 (= (= lt!1888504 lt!1888295) (= lambda!215740 lambda!215695))))

(assert (=> bs!1113212 (= (= lt!1888504 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215740 lambda!215690))))

(assert (=> bs!1113239 (= (= lt!1888504 lt!1887727) (= lambda!215740 lambda!215688))))

(assert (=> bs!1113240 (= (= lt!1888504 lt!1888323) (= lambda!215740 lambda!215703))))

(assert (=> bs!1113241 (= (= lt!1888504 lt!1888169) (= lambda!215740 lambda!215678))))

(assert (=> bs!1113242 (= (= lt!1888504 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215740 lambda!215731))))

(assert (=> bs!1113244 (= (= lt!1888504 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215740 lambda!215736))))

(assert (=> bs!1113245 (= (= lt!1888504 lt!1887727) (= lambda!215740 lambda!215638))))

(assert (=> bs!1113202 (= (= lt!1888504 lt!1888441) (= lambda!215740 lambda!215722))))

(assert (=> bs!1113248 (= (= lt!1888504 lt!1888111) (= lambda!215740 lambda!215669))))

(assert (=> b!4723501 true))

(declare-fun bs!1113273 () Bool)

(declare-fun d!1504211 () Bool)

(assert (= bs!1113273 (and d!1504211 b!4723501)))

(declare-fun lt!1888505 () ListMap!5281)

(declare-fun lambda!215742 () Int)

(assert (=> bs!1113273 (= (= lt!1888505 lt!1888504) (= lambda!215742 lambda!215740))))

(declare-fun bs!1113274 () Bool)

(assert (= bs!1113274 (and d!1504211 d!1503873)))

(assert (=> bs!1113274 (not (= lambda!215742 lambda!215656))))

(declare-fun bs!1113275 () Bool)

(assert (= bs!1113275 (and d!1504211 d!1504161)))

(assert (=> bs!1113275 (= (= lt!1888505 lt!1888470) (= lambda!215742 lambda!215734))))

(declare-fun bs!1113276 () Bool)

(assert (= bs!1113276 (and d!1504211 b!4723054)))

(assert (=> bs!1113276 (= (= lt!1888505 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215742 lambda!215676))))

(declare-fun bs!1113277 () Bool)

(assert (= bs!1113277 (and d!1504211 b!4722971)))

(assert (=> bs!1113277 (= (= lt!1888505 lt!1887727) (= lambda!215742 lambda!215666))))

(declare-fun bs!1113278 () Bool)

(assert (= bs!1113278 (and d!1504211 d!1504127)))

(assert (=> bs!1113278 (= (= lt!1888505 lt!1888077) (= lambda!215742 lambda!215715))))

(declare-fun bs!1113279 () Bool)

(assert (= bs!1113279 (and d!1504211 b!4723308)))

(assert (=> bs!1113279 (= (= lt!1888505 lt!1888322) (= lambda!215742 lambda!215700))))

(assert (=> bs!1113279 (= (= lt!1888505 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215742 lambda!215698))))

(declare-fun bs!1113280 () Bool)

(assert (= bs!1113280 (and d!1504211 d!1503889)))

(assert (=> bs!1113280 (= (= lt!1888505 lt!1888078) (= lambda!215742 lambda!215665))))

(declare-fun bs!1113281 () Bool)

(assert (= bs!1113281 (and d!1504211 b!4723399)))

(assert (=> bs!1113281 (= (= lt!1888505 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215742 lambda!215720))))

(declare-fun bs!1113282 () Bool)

(assert (= bs!1113282 (and d!1504211 b!4722949)))

(assert (=> bs!1113282 (= (= lt!1888505 lt!1887727) (= lambda!215742 lambda!215658))))

(declare-fun bs!1113283 () Bool)

(assert (= bs!1113283 (and d!1504211 b!4722845)))

(assert (=> bs!1113283 (= (= lt!1888505 lt!1887947) (= lambda!215742 lambda!215640))))

(declare-fun bs!1113284 () Bool)

(assert (= bs!1113284 (and d!1504211 d!1503887)))

(assert (=> bs!1113284 (= (= lt!1888505 lt!1888057) (= lambda!215742 lambda!215661))))

(declare-fun bs!1113285 () Bool)

(assert (= bs!1113285 (and d!1504211 b!4722969)))

(assert (=> bs!1113285 (= (= lt!1888505 lt!1888110) (= lambda!215742 lambda!215668))))

(assert (=> bs!1113276 (= (= lt!1888505 lt!1888168) (= lambda!215742 lambda!215677))))

(declare-fun bs!1113286 () Bool)

(assert (= bs!1113286 (and d!1504211 b!4723273)))

(assert (=> bs!1113286 (= (= lt!1888505 lt!1888294) (= lambda!215742 lambda!215691))))

(declare-fun bs!1113287 () Bool)

(assert (= bs!1113287 (and d!1504211 d!1504139)))

(assert (=> bs!1113287 (= (= lt!1888505 lt!1888442) (= lambda!215742 lambda!215724))))

(declare-fun bs!1113288 () Bool)

(assert (= bs!1113288 (and d!1504211 b!4722954)))

(assert (=> bs!1113288 (= (= lt!1888505 lt!1887727) (= lambda!215742 lambda!215662))))

(declare-fun bs!1113290 () Bool)

(assert (= bs!1113290 (and d!1504211 b!4722952)))

(assert (=> bs!1113290 (= (= lt!1888505 lt!1887727) (= lambda!215742 lambda!215663))))

(declare-fun bs!1113292 () Bool)

(assert (= bs!1113292 (and d!1504211 b!4723056)))

(assert (=> bs!1113292 (= (= lt!1888505 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215742 lambda!215675))))

(declare-fun bs!1113294 () Bool)

(assert (= bs!1113294 (and d!1504211 b!4723443)))

(assert (=> bs!1113294 (= (= lt!1888505 lt!1888469) (= lambda!215742 lambda!215733))))

(declare-fun bs!1113296 () Bool)

(assert (= bs!1113296 (and d!1504211 b!4722978)))

(assert (=> bs!1113296 (= (= lt!1888505 lt!1887727) (= lambda!215742 lambda!215670))))

(declare-fun bs!1113298 () Bool)

(assert (= bs!1113298 (and d!1504211 d!1503799)))

(assert (=> bs!1113298 (= (= lt!1888505 lt!1887948) (= lambda!215742 lambda!215641))))

(declare-fun bs!1113300 () Bool)

(assert (= bs!1113300 (and d!1504211 b!4723275)))

(assert (=> bs!1113300 (= (= lt!1888505 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215742 lambda!215689))))

(declare-fun bs!1113302 () Bool)

(assert (= bs!1113302 (and d!1504211 b!4722947)))

(assert (=> bs!1113302 (= (= lt!1888505 lt!1888056) (= lambda!215742 lambda!215660))))

(declare-fun bs!1113304 () Bool)

(assert (= bs!1113304 (and d!1504211 d!1503911)))

(assert (=> bs!1113304 (not (= lambda!215742 lambda!215674))))

(assert (=> bs!1113283 (= (= lt!1888505 lt!1887727) (= lambda!215742 lambda!215639))))

(declare-fun bs!1113306 () Bool)

(assert (= bs!1113306 (and d!1504211 b!4723310)))

(assert (=> bs!1113306 (= (= lt!1888505 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215742 lambda!215697))))

(declare-fun bs!1113308 () Bool)

(assert (= bs!1113308 (and d!1504211 b!4722976)))

(assert (=> bs!1113308 (= (= lt!1888505 lt!1887727) (= lambda!215742 lambda!215671))))

(assert (=> bs!1113302 (= (= lt!1888505 lt!1887727) (= lambda!215742 lambda!215659))))

(assert (=> bs!1113290 (= (= lt!1888505 lt!1888077) (= lambda!215742 lambda!215664))))

(assert (=> bs!1113273 (= (= lt!1888505 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215742 lambda!215738))))

(assert (=> bs!1113308 (= (= lt!1888505 lt!1888135) (= lambda!215742 lambda!215672))))

(declare-fun bs!1113312 () Bool)

(assert (= bs!1113312 (and d!1504211 b!4723401)))

(assert (=> bs!1113312 (= (= lt!1888505 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215742 lambda!215718))))

(assert (=> bs!1113285 (= (= lt!1888505 lt!1887727) (= lambda!215742 lambda!215667))))

(assert (=> bs!1113294 (= (= lt!1888505 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215742 lambda!215732))))

(declare-fun bs!1113315 () Bool)

(assert (= bs!1113315 (and d!1504211 d!1503907)))

(assert (=> bs!1113315 (= (= lt!1888505 lt!1888136) (= lambda!215742 lambda!215673))))

(declare-fun bs!1113317 () Bool)

(assert (= bs!1113317 (and d!1504211 d!1504043)))

(assert (=> bs!1113317 (= (= lt!1888505 lt!1888295) (= lambda!215742 lambda!215695))))

(assert (=> bs!1113286 (= (= lt!1888505 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215742 lambda!215690))))

(declare-fun bs!1113320 () Bool)

(assert (= bs!1113320 (and d!1504211 d!1503991)))

(assert (=> bs!1113320 (= (= lt!1888505 lt!1887727) (= lambda!215742 lambda!215688))))

(declare-fun bs!1113322 () Bool)

(assert (= bs!1113322 (and d!1504211 d!1504085)))

(assert (=> bs!1113322 (= (= lt!1888505 lt!1888323) (= lambda!215742 lambda!215703))))

(declare-fun bs!1113323 () Bool)

(assert (= bs!1113323 (and d!1504211 d!1503963)))

(assert (=> bs!1113323 (= (= lt!1888505 lt!1888169) (= lambda!215742 lambda!215678))))

(declare-fun bs!1113324 () Bool)

(assert (= bs!1113324 (and d!1504211 b!4723445)))

(assert (=> bs!1113324 (= (= lt!1888505 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215742 lambda!215731))))

(declare-fun bs!1113326 () Bool)

(assert (= bs!1113326 (and d!1504211 b!4723503)))

(assert (=> bs!1113326 (= (= lt!1888505 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215742 lambda!215736))))

(declare-fun bs!1113328 () Bool)

(assert (= bs!1113328 (and d!1504211 b!4722847)))

(assert (=> bs!1113328 (= (= lt!1888505 lt!1887727) (= lambda!215742 lambda!215638))))

(assert (=> bs!1113281 (= (= lt!1888505 lt!1888441) (= lambda!215742 lambda!215722))))

(declare-fun bs!1113331 () Bool)

(assert (= bs!1113331 (and d!1504211 d!1503899)))

(assert (=> bs!1113331 (= (= lt!1888505 lt!1888111) (= lambda!215742 lambda!215669))))

(assert (=> d!1504211 true))

(declare-fun bm!330401 () Bool)

(declare-fun call!330407 () Bool)

(declare-fun c!806700 () Bool)

(assert (=> bm!330401 (= call!330407 (forall!11590 (ite c!806700 (toList!5917 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (ite c!806700 lambda!215736 lambda!215740)))))

(declare-fun e!2945926 () ListMap!5281)

(assert (=> b!4723501 (= e!2945926 lt!1888504)))

(declare-fun lt!1888499 () ListMap!5281)

(assert (=> b!4723501 (= lt!1888499 (+!2269 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (h!59177 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(assert (=> b!4723501 (= lt!1888504 (addToMapMapFromBucket!1444 (t!360220 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (+!2269 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (h!59177 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))))

(declare-fun lt!1888514 () Unit!130119)

(declare-fun call!330408 () Unit!130119)

(assert (=> b!4723501 (= lt!1888514 call!330408)))

(assert (=> b!4723501 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) lambda!215738)))

(declare-fun lt!1888502 () Unit!130119)

(assert (=> b!4723501 (= lt!1888502 lt!1888514)))

(assert (=> b!4723501 (forall!11590 (toList!5917 lt!1888499) lambda!215740)))

(declare-fun lt!1888500 () Unit!130119)

(declare-fun Unit!130360 () Unit!130119)

(assert (=> b!4723501 (= lt!1888500 Unit!130360)))

(assert (=> b!4723501 (forall!11590 (t!360220 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lambda!215740)))

(declare-fun lt!1888498 () Unit!130119)

(declare-fun Unit!130361 () Unit!130119)

(assert (=> b!4723501 (= lt!1888498 Unit!130361)))

(declare-fun lt!1888509 () Unit!130119)

(declare-fun Unit!130362 () Unit!130119)

(assert (=> b!4723501 (= lt!1888509 Unit!130362)))

(declare-fun lt!1888512 () Unit!130119)

(assert (=> b!4723501 (= lt!1888512 (forallContained!3639 (toList!5917 lt!1888499) lambda!215740 (h!59177 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(assert (=> b!4723501 (contains!16175 lt!1888499 (_1!30519 (h!59177 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(declare-fun lt!1888515 () Unit!130119)

(declare-fun Unit!130363 () Unit!130119)

(assert (=> b!4723501 (= lt!1888515 Unit!130363)))

(assert (=> b!4723501 (contains!16175 lt!1888504 (_1!30519 (h!59177 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(declare-fun lt!1888508 () Unit!130119)

(declare-fun Unit!130364 () Unit!130119)

(assert (=> b!4723501 (= lt!1888508 Unit!130364)))

(assert (=> b!4723501 call!330407))

(declare-fun lt!1888496 () Unit!130119)

(declare-fun Unit!130365 () Unit!130119)

(assert (=> b!4723501 (= lt!1888496 Unit!130365)))

(assert (=> b!4723501 (forall!11590 (toList!5917 lt!1888499) lambda!215740)))

(declare-fun lt!1888495 () Unit!130119)

(declare-fun Unit!130366 () Unit!130119)

(assert (=> b!4723501 (= lt!1888495 Unit!130366)))

(declare-fun lt!1888506 () Unit!130119)

(declare-fun Unit!130367 () Unit!130119)

(assert (=> b!4723501 (= lt!1888506 Unit!130367)))

(declare-fun lt!1888497 () Unit!130119)

(assert (=> b!4723501 (= lt!1888497 (addForallContainsKeyThenBeforeAdding!796 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888504 (_1!30519 (h!59177 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (_2!30519 (h!59177 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))))

(assert (=> b!4723501 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) lambda!215740)))

(declare-fun lt!1888510 () Unit!130119)

(assert (=> b!4723501 (= lt!1888510 lt!1888497)))

(declare-fun call!330406 () Bool)

(assert (=> b!4723501 call!330406))

(declare-fun lt!1888501 () Unit!130119)

(declare-fun Unit!130368 () Unit!130119)

(assert (=> b!4723501 (= lt!1888501 Unit!130368)))

(declare-fun res!1998513 () Bool)

(assert (=> b!4723501 (= res!1998513 (forall!11590 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023)))) lambda!215740))))

(declare-fun e!2945928 () Bool)

(assert (=> b!4723501 (=> (not res!1998513) (not e!2945928))))

(assert (=> b!4723501 e!2945928))

(declare-fun lt!1888507 () Unit!130119)

(declare-fun Unit!130369 () Unit!130119)

(assert (=> b!4723501 (= lt!1888507 Unit!130369)))

(declare-fun e!2945927 () Bool)

(assert (=> d!1504211 e!2945927))

(declare-fun res!1998515 () Bool)

(assert (=> d!1504211 (=> (not res!1998515) (not e!2945927))))

(assert (=> d!1504211 (= res!1998515 (forall!11590 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023)))) lambda!215742))))

(assert (=> d!1504211 (= lt!1888505 e!2945926)))

(assert (=> d!1504211 (= c!806700 ((_ is Nil!52830) (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(assert (=> d!1504211 (noDuplicateKeys!2014 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))

(assert (=> d!1504211 (= (addToMapMapFromBucket!1444 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023)))) (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) lt!1888505)))

(declare-fun b!4723502 () Bool)

(assert (=> b!4723502 (= e!2945928 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) lambda!215740))))

(assert (=> b!4723503 (= e!2945926 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(declare-fun lt!1888503 () Unit!130119)

(assert (=> b!4723503 (= lt!1888503 call!330408)))

(assert (=> b!4723503 call!330407))

(declare-fun lt!1888513 () Unit!130119)

(assert (=> b!4723503 (= lt!1888513 lt!1888503)))

(assert (=> b!4723503 call!330406))

(declare-fun lt!1888511 () Unit!130119)

(declare-fun Unit!130370 () Unit!130119)

(assert (=> b!4723503 (= lt!1888511 Unit!130370)))

(declare-fun b!4723504 () Bool)

(assert (=> b!4723504 (= e!2945927 (invariantList!1511 (toList!5917 lt!1888505)))))

(declare-fun b!4723505 () Bool)

(declare-fun res!1998514 () Bool)

(assert (=> b!4723505 (=> (not res!1998514) (not e!2945927))))

(assert (=> b!4723505 (= res!1998514 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) lambda!215742))))

(declare-fun bm!330402 () Bool)

(assert (=> bm!330402 (= call!330406 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (ite c!806700 lambda!215736 lambda!215740)))))

(declare-fun bm!330403 () Bool)

(assert (=> bm!330403 (= call!330408 (lemmaContainsAllItsOwnKeys!797 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(assert (= (and d!1504211 c!806700) b!4723503))

(assert (= (and d!1504211 (not c!806700)) b!4723501))

(assert (= (and b!4723501 res!1998513) b!4723502))

(assert (= (or b!4723503 b!4723501) bm!330403))

(assert (= (or b!4723503 b!4723501) bm!330402))

(assert (= (or b!4723503 b!4723501) bm!330401))

(assert (= (and d!1504211 res!1998515) b!4723505))

(assert (= (and b!4723505 res!1998514) b!4723504))

(declare-fun m!5660141 () Bool)

(assert (=> bm!330402 m!5660141))

(assert (=> bm!330403 m!5658755))

(declare-fun m!5660143 () Bool)

(assert (=> bm!330403 m!5660143))

(declare-fun m!5660145 () Bool)

(assert (=> b!4723504 m!5660145))

(declare-fun m!5660147 () Bool)

(assert (=> d!1504211 m!5660147))

(assert (=> d!1504211 m!5659123))

(declare-fun m!5660149 () Bool)

(assert (=> b!4723505 m!5660149))

(declare-fun m!5660151 () Bool)

(assert (=> bm!330401 m!5660151))

(declare-fun m!5660153 () Bool)

(assert (=> b!4723501 m!5660153))

(declare-fun m!5660155 () Bool)

(assert (=> b!4723501 m!5660155))

(declare-fun m!5660157 () Bool)

(assert (=> b!4723501 m!5660157))

(declare-fun m!5660159 () Bool)

(assert (=> b!4723501 m!5660159))

(assert (=> b!4723501 m!5658755))

(declare-fun m!5660161 () Bool)

(assert (=> b!4723501 m!5660161))

(declare-fun m!5660163 () Bool)

(assert (=> b!4723501 m!5660163))

(declare-fun m!5660167 () Bool)

(assert (=> b!4723501 m!5660167))

(declare-fun m!5660171 () Bool)

(assert (=> b!4723501 m!5660171))

(declare-fun m!5660175 () Bool)

(assert (=> b!4723501 m!5660175))

(assert (=> b!4723501 m!5660159))

(assert (=> b!4723501 m!5658755))

(assert (=> b!4723501 m!5660163))

(declare-fun m!5660183 () Bool)

(assert (=> b!4723501 m!5660183))

(declare-fun m!5660185 () Bool)

(assert (=> b!4723501 m!5660185))

(assert (=> b!4723502 m!5660155))

(assert (=> b!4722845 d!1504211))

(declare-fun d!1504225 () Bool)

(declare-fun res!1998529 () Bool)

(declare-fun e!2945944 () Bool)

(assert (=> d!1504225 (=> res!1998529 e!2945944)))

(assert (=> d!1504225 (= res!1998529 ((_ is Nil!52830) (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(assert (=> d!1504225 (= (forall!11590 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023)))) lambda!215640) e!2945944)))

(declare-fun b!4723527 () Bool)

(declare-fun e!2945945 () Bool)

(assert (=> b!4723527 (= e!2945944 e!2945945)))

(declare-fun res!1998530 () Bool)

(assert (=> b!4723527 (=> (not res!1998530) (not e!2945945))))

(assert (=> b!4723527 (= res!1998530 (dynLambda!21821 lambda!215640 (h!59177 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(declare-fun b!4723528 () Bool)

(assert (=> b!4723528 (= e!2945945 (forall!11590 (t!360220 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lambda!215640))))

(assert (= (and d!1504225 (not res!1998529)) b!4723527))

(assert (= (and b!4723527 res!1998530) b!4723528))

(declare-fun b_lambda!178871 () Bool)

(assert (=> (not b_lambda!178871) (not b!4723527)))

(declare-fun m!5660209 () Bool)

(assert (=> b!4723527 m!5660209))

(declare-fun m!5660213 () Bool)

(assert (=> b!4723528 m!5660213))

(assert (=> b!4722845 d!1504225))

(declare-fun d!1504227 () Bool)

(declare-fun e!2945947 () Bool)

(assert (=> d!1504227 e!2945947))

(declare-fun res!1998532 () Bool)

(assert (=> d!1504227 (=> res!1998532 e!2945947)))

(declare-fun e!2945949 () Bool)

(assert (=> d!1504227 (= res!1998532 e!2945949)))

(declare-fun res!1998531 () Bool)

(assert (=> d!1504227 (=> (not res!1998531) (not e!2945949))))

(declare-fun lt!1888557 () Bool)

(assert (=> d!1504227 (= res!1998531 (not lt!1888557))))

(declare-fun lt!1888550 () Bool)

(assert (=> d!1504227 (= lt!1888557 lt!1888550)))

(declare-fun lt!1888551 () Unit!130119)

(declare-fun e!2945950 () Unit!130119)

(assert (=> d!1504227 (= lt!1888551 e!2945950)))

(declare-fun c!806705 () Bool)

(assert (=> d!1504227 (= c!806705 lt!1888550)))

(assert (=> d!1504227 (= lt!1888550 (containsKey!3373 (toList!5917 lt!1887947) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(assert (=> d!1504227 (= (contains!16175 lt!1887947 (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) lt!1888557)))

(declare-fun b!4723529 () Bool)

(declare-fun e!2945946 () Bool)

(assert (=> b!4723529 (= e!2945946 (contains!16179 (keys!18974 lt!1887947) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(declare-fun b!4723530 () Bool)

(assert (=> b!4723530 (= e!2945947 e!2945946)))

(declare-fun res!1998533 () Bool)

(assert (=> b!4723530 (=> (not res!1998533) (not e!2945946))))

(assert (=> b!4723530 (= res!1998533 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1887947) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))))

(declare-fun b!4723531 () Bool)

(declare-fun e!2945951 () List!52957)

(assert (=> b!4723531 (= e!2945951 (keys!18974 lt!1887947))))

(declare-fun b!4723532 () Bool)

(assert (=> b!4723532 (= e!2945951 (getKeysList!951 (toList!5917 lt!1887947)))))

(declare-fun b!4723533 () Bool)

(declare-fun e!2945948 () Unit!130119)

(assert (=> b!4723533 (= e!2945950 e!2945948)))

(declare-fun c!806707 () Bool)

(declare-fun call!330413 () Bool)

(assert (=> b!4723533 (= c!806707 call!330413)))

(declare-fun b!4723534 () Bool)

(assert (=> b!4723534 false))

(declare-fun lt!1888553 () Unit!130119)

(declare-fun lt!1888556 () Unit!130119)

(assert (=> b!4723534 (= lt!1888553 lt!1888556)))

(assert (=> b!4723534 (containsKey!3373 (toList!5917 lt!1887947) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(assert (=> b!4723534 (= lt!1888556 (lemmaInGetKeysListThenContainsKey!950 (toList!5917 lt!1887947) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(declare-fun Unit!130371 () Unit!130119)

(assert (=> b!4723534 (= e!2945948 Unit!130371)))

(declare-fun b!4723535 () Bool)

(declare-fun Unit!130372 () Unit!130119)

(assert (=> b!4723535 (= e!2945948 Unit!130372)))

(declare-fun b!4723536 () Bool)

(assert (=> b!4723536 (= e!2945949 (not (contains!16179 (keys!18974 lt!1887947) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))))

(declare-fun bm!330408 () Bool)

(assert (=> bm!330408 (= call!330413 (contains!16179 e!2945951 (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(declare-fun c!806706 () Bool)

(assert (=> bm!330408 (= c!806706 c!806705)))

(declare-fun b!4723537 () Bool)

(declare-fun lt!1888554 () Unit!130119)

(assert (=> b!4723537 (= e!2945950 lt!1888554)))

(declare-fun lt!1888552 () Unit!130119)

(assert (=> b!4723537 (= lt!1888552 (lemmaContainsKeyImpliesGetValueByKeyDefined!1848 (toList!5917 lt!1887947) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(assert (=> b!4723537 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1887947) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(declare-fun lt!1888555 () Unit!130119)

(assert (=> b!4723537 (= lt!1888555 lt!1888552)))

(assert (=> b!4723537 (= lt!1888554 (lemmaInListThenGetKeysListContains!946 (toList!5917 lt!1887947) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(assert (=> b!4723537 call!330413))

(assert (= (and d!1504227 c!806705) b!4723537))

(assert (= (and d!1504227 (not c!806705)) b!4723533))

(assert (= (and b!4723533 c!806707) b!4723534))

(assert (= (and b!4723533 (not c!806707)) b!4723535))

(assert (= (or b!4723537 b!4723533) bm!330408))

(assert (= (and bm!330408 c!806706) b!4723532))

(assert (= (and bm!330408 (not c!806706)) b!4723531))

(assert (= (and d!1504227 res!1998531) b!4723536))

(assert (= (and d!1504227 (not res!1998532)) b!4723530))

(assert (= (and b!4723530 res!1998533) b!4723529))

(declare-fun m!5660215 () Bool)

(assert (=> b!4723537 m!5660215))

(declare-fun m!5660217 () Bool)

(assert (=> b!4723537 m!5660217))

(assert (=> b!4723537 m!5660217))

(declare-fun m!5660219 () Bool)

(assert (=> b!4723537 m!5660219))

(declare-fun m!5660221 () Bool)

(assert (=> b!4723537 m!5660221))

(declare-fun m!5660223 () Bool)

(assert (=> b!4723534 m!5660223))

(declare-fun m!5660225 () Bool)

(assert (=> b!4723534 m!5660225))

(assert (=> b!4723530 m!5660217))

(assert (=> b!4723530 m!5660217))

(assert (=> b!4723530 m!5660219))

(declare-fun m!5660227 () Bool)

(assert (=> b!4723531 m!5660227))

(declare-fun m!5660229 () Bool)

(assert (=> b!4723532 m!5660229))

(assert (=> b!4723536 m!5660227))

(assert (=> b!4723536 m!5660227))

(declare-fun m!5660231 () Bool)

(assert (=> b!4723536 m!5660231))

(assert (=> d!1504227 m!5660223))

(declare-fun m!5660233 () Bool)

(assert (=> bm!330408 m!5660233))

(assert (=> b!4723529 m!5660227))

(assert (=> b!4723529 m!5660227))

(assert (=> b!4723529 m!5660231))

(assert (=> b!4722845 d!1504227))

(declare-fun d!1504231 () Bool)

(declare-fun e!2945956 () Bool)

(assert (=> d!1504231 e!2945956))

(declare-fun res!1998537 () Bool)

(assert (=> d!1504231 (=> res!1998537 e!2945956)))

(declare-fun e!2945959 () Bool)

(assert (=> d!1504231 (= res!1998537 e!2945959)))

(declare-fun res!1998536 () Bool)

(assert (=> d!1504231 (=> (not res!1998536) (not e!2945959))))

(declare-fun lt!1888571 () Bool)

(assert (=> d!1504231 (= res!1998536 (not lt!1888571))))

(declare-fun lt!1888558 () Bool)

(assert (=> d!1504231 (= lt!1888571 lt!1888558)))

(declare-fun lt!1888560 () Unit!130119)

(declare-fun e!2945961 () Unit!130119)

(assert (=> d!1504231 (= lt!1888560 e!2945961)))

(declare-fun c!806708 () Bool)

(assert (=> d!1504231 (= c!806708 lt!1888558)))

(assert (=> d!1504231 (= lt!1888558 (containsKey!3373 (toList!5917 lt!1887942) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(assert (=> d!1504231 (= (contains!16175 lt!1887942 (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) lt!1888571)))

(declare-fun b!4723540 () Bool)

(declare-fun e!2945954 () Bool)

(assert (=> b!4723540 (= e!2945954 (contains!16179 (keys!18974 lt!1887942) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(declare-fun b!4723541 () Bool)

(assert (=> b!4723541 (= e!2945956 e!2945954)))

(declare-fun res!1998538 () Bool)

(assert (=> b!4723541 (=> (not res!1998538) (not e!2945954))))

(assert (=> b!4723541 (= res!1998538 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1887942) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))))

(declare-fun b!4723542 () Bool)

(declare-fun e!2945963 () List!52957)

(assert (=> b!4723542 (= e!2945963 (keys!18974 lt!1887942))))

(declare-fun b!4723543 () Bool)

(assert (=> b!4723543 (= e!2945963 (getKeysList!951 (toList!5917 lt!1887942)))))

(declare-fun b!4723544 () Bool)

(declare-fun e!2945957 () Unit!130119)

(assert (=> b!4723544 (= e!2945961 e!2945957)))

(declare-fun c!806712 () Bool)

(declare-fun call!330414 () Bool)

(assert (=> b!4723544 (= c!806712 call!330414)))

(declare-fun b!4723545 () Bool)

(assert (=> b!4723545 false))

(declare-fun lt!1888563 () Unit!130119)

(declare-fun lt!1888570 () Unit!130119)

(assert (=> b!4723545 (= lt!1888563 lt!1888570)))

(assert (=> b!4723545 (containsKey!3373 (toList!5917 lt!1887942) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(assert (=> b!4723545 (= lt!1888570 (lemmaInGetKeysListThenContainsKey!950 (toList!5917 lt!1887942) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(declare-fun Unit!130373 () Unit!130119)

(assert (=> b!4723545 (= e!2945957 Unit!130373)))

(declare-fun b!4723547 () Bool)

(declare-fun Unit!130374 () Unit!130119)

(assert (=> b!4723547 (= e!2945957 Unit!130374)))

(declare-fun b!4723549 () Bool)

(assert (=> b!4723549 (= e!2945959 (not (contains!16179 (keys!18974 lt!1887942) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))))

(declare-fun bm!330409 () Bool)

(assert (=> bm!330409 (= call!330414 (contains!16179 e!2945963 (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(declare-fun c!806710 () Bool)

(assert (=> bm!330409 (= c!806710 c!806708)))

(declare-fun b!4723552 () Bool)

(declare-fun lt!1888566 () Unit!130119)

(assert (=> b!4723552 (= e!2945961 lt!1888566)))

(declare-fun lt!1888561 () Unit!130119)

(assert (=> b!4723552 (= lt!1888561 (lemmaContainsKeyImpliesGetValueByKeyDefined!1848 (toList!5917 lt!1887942) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(assert (=> b!4723552 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1887942) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(declare-fun lt!1888568 () Unit!130119)

(assert (=> b!4723552 (= lt!1888568 lt!1888561)))

(assert (=> b!4723552 (= lt!1888566 (lemmaInListThenGetKeysListContains!946 (toList!5917 lt!1887942) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(assert (=> b!4723552 call!330414))

(assert (= (and d!1504231 c!806708) b!4723552))

(assert (= (and d!1504231 (not c!806708)) b!4723544))

(assert (= (and b!4723544 c!806712) b!4723545))

(assert (= (and b!4723544 (not c!806712)) b!4723547))

(assert (= (or b!4723552 b!4723544) bm!330409))

(assert (= (and bm!330409 c!806710) b!4723543))

(assert (= (and bm!330409 (not c!806710)) b!4723542))

(assert (= (and d!1504231 res!1998536) b!4723549))

(assert (= (and d!1504231 (not res!1998537)) b!4723541))

(assert (= (and b!4723541 res!1998538) b!4723540))

(declare-fun m!5660241 () Bool)

(assert (=> b!4723552 m!5660241))

(declare-fun m!5660243 () Bool)

(assert (=> b!4723552 m!5660243))

(assert (=> b!4723552 m!5660243))

(declare-fun m!5660251 () Bool)

(assert (=> b!4723552 m!5660251))

(declare-fun m!5660254 () Bool)

(assert (=> b!4723552 m!5660254))

(declare-fun m!5660257 () Bool)

(assert (=> b!4723545 m!5660257))

(declare-fun m!5660259 () Bool)

(assert (=> b!4723545 m!5660259))

(assert (=> b!4723541 m!5660243))

(assert (=> b!4723541 m!5660243))

(assert (=> b!4723541 m!5660251))

(declare-fun m!5660263 () Bool)

(assert (=> b!4723542 m!5660263))

(declare-fun m!5660267 () Bool)

(assert (=> b!4723543 m!5660267))

(assert (=> b!4723549 m!5660263))

(assert (=> b!4723549 m!5660263))

(declare-fun m!5660271 () Bool)

(assert (=> b!4723549 m!5660271))

(assert (=> d!1504231 m!5660257))

(declare-fun m!5660275 () Bool)

(assert (=> bm!330409 m!5660275))

(assert (=> b!4723540 m!5660263))

(assert (=> b!4723540 m!5660263))

(assert (=> b!4723540 m!5660271))

(assert (=> b!4722845 d!1504231))

(declare-fun d!1504237 () Bool)

(assert (=> d!1504237 (dynLambda!21821 lambda!215640 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))

(declare-fun lt!1888574 () Unit!130119)

(assert (=> d!1504237 (= lt!1888574 (choose!33336 (toList!5917 lt!1887942) lambda!215640 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(declare-fun e!2945968 () Bool)

(assert (=> d!1504237 e!2945968))

(declare-fun res!1998542 () Bool)

(assert (=> d!1504237 (=> (not res!1998542) (not e!2945968))))

(assert (=> d!1504237 (= res!1998542 (forall!11590 (toList!5917 lt!1887942) lambda!215640))))

(assert (=> d!1504237 (= (forallContained!3639 (toList!5917 lt!1887942) lambda!215640 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888574)))

(declare-fun b!4723562 () Bool)

(assert (=> b!4723562 (= e!2945968 (contains!16180 (toList!5917 lt!1887942) (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(assert (= (and d!1504237 res!1998542) b!4723562))

(declare-fun b_lambda!178875 () Bool)

(assert (=> (not b_lambda!178875) (not d!1504237)))

(declare-fun m!5660279 () Bool)

(assert (=> d!1504237 m!5660279))

(declare-fun m!5660281 () Bool)

(assert (=> d!1504237 m!5660281))

(assert (=> d!1504237 m!5658751))

(declare-fun m!5660283 () Bool)

(assert (=> b!4723562 m!5660283))

(assert (=> b!4722845 d!1504237))

(declare-fun d!1504241 () Bool)

(declare-fun res!1998545 () Bool)

(declare-fun e!2945970 () Bool)

(assert (=> d!1504241 (=> res!1998545 e!2945970)))

(assert (=> d!1504241 (= res!1998545 ((_ is Nil!52830) (toList!5917 lt!1887727)))))

(assert (=> d!1504241 (= (forall!11590 (toList!5917 lt!1887727) lambda!215639) e!2945970)))

(declare-fun b!4723565 () Bool)

(declare-fun e!2945971 () Bool)

(assert (=> b!4723565 (= e!2945970 e!2945971)))

(declare-fun res!1998546 () Bool)

(assert (=> b!4723565 (=> (not res!1998546) (not e!2945971))))

(assert (=> b!4723565 (= res!1998546 (dynLambda!21821 lambda!215639 (h!59177 (toList!5917 lt!1887727))))))

(declare-fun b!4723566 () Bool)

(assert (=> b!4723566 (= e!2945971 (forall!11590 (t!360220 (toList!5917 lt!1887727)) lambda!215639))))

(assert (= (and d!1504241 (not res!1998545)) b!4723565))

(assert (= (and b!4723565 res!1998546) b!4723566))

(declare-fun b_lambda!178877 () Bool)

(assert (=> (not b_lambda!178877) (not b!4723565)))

(declare-fun m!5660293 () Bool)

(assert (=> b!4723565 m!5660293))

(declare-fun m!5660295 () Bool)

(assert (=> b!4723566 m!5660295))

(assert (=> b!4722845 d!1504241))

(declare-fun bs!1113337 () Bool)

(declare-fun d!1504245 () Bool)

(assert (= bs!1113337 (and d!1504245 b!4723501)))

(declare-fun lambda!215744 () Int)

(assert (=> bs!1113337 (= (= lt!1887947 lt!1888504) (= lambda!215744 lambda!215740))))

(declare-fun bs!1113338 () Bool)

(assert (= bs!1113338 (and d!1504245 d!1503873)))

(assert (=> bs!1113338 (not (= lambda!215744 lambda!215656))))

(declare-fun bs!1113339 () Bool)

(assert (= bs!1113339 (and d!1504245 b!4723054)))

(assert (=> bs!1113339 (= (= lt!1887947 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215744 lambda!215676))))

(declare-fun bs!1113340 () Bool)

(assert (= bs!1113340 (and d!1504245 b!4722971)))

(assert (=> bs!1113340 (= (= lt!1887947 lt!1887727) (= lambda!215744 lambda!215666))))

(declare-fun bs!1113341 () Bool)

(assert (= bs!1113341 (and d!1504245 d!1504127)))

(assert (=> bs!1113341 (= (= lt!1887947 lt!1888077) (= lambda!215744 lambda!215715))))

(declare-fun bs!1113342 () Bool)

(assert (= bs!1113342 (and d!1504245 b!4723308)))

(assert (=> bs!1113342 (= (= lt!1887947 lt!1888322) (= lambda!215744 lambda!215700))))

(assert (=> bs!1113342 (= (= lt!1887947 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215744 lambda!215698))))

(declare-fun bs!1113343 () Bool)

(assert (= bs!1113343 (and d!1504245 d!1503889)))

(assert (=> bs!1113343 (= (= lt!1887947 lt!1888078) (= lambda!215744 lambda!215665))))

(declare-fun bs!1113344 () Bool)

(assert (= bs!1113344 (and d!1504245 b!4723399)))

(assert (=> bs!1113344 (= (= lt!1887947 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215744 lambda!215720))))

(declare-fun bs!1113345 () Bool)

(assert (= bs!1113345 (and d!1504245 b!4722949)))

(assert (=> bs!1113345 (= (= lt!1887947 lt!1887727) (= lambda!215744 lambda!215658))))

(declare-fun bs!1113346 () Bool)

(assert (= bs!1113346 (and d!1504245 b!4722845)))

(assert (=> bs!1113346 (= lambda!215744 lambda!215640)))

(declare-fun bs!1113347 () Bool)

(assert (= bs!1113347 (and d!1504245 d!1503887)))

(assert (=> bs!1113347 (= (= lt!1887947 lt!1888057) (= lambda!215744 lambda!215661))))

(declare-fun bs!1113348 () Bool)

(assert (= bs!1113348 (and d!1504245 b!4722969)))

(assert (=> bs!1113348 (= (= lt!1887947 lt!1888110) (= lambda!215744 lambda!215668))))

(assert (=> bs!1113339 (= (= lt!1887947 lt!1888168) (= lambda!215744 lambda!215677))))

(declare-fun bs!1113349 () Bool)

(assert (= bs!1113349 (and d!1504245 b!4723273)))

(assert (=> bs!1113349 (= (= lt!1887947 lt!1888294) (= lambda!215744 lambda!215691))))

(declare-fun bs!1113350 () Bool)

(assert (= bs!1113350 (and d!1504245 d!1504139)))

(assert (=> bs!1113350 (= (= lt!1887947 lt!1888442) (= lambda!215744 lambda!215724))))

(declare-fun bs!1113351 () Bool)

(assert (= bs!1113351 (and d!1504245 b!4722954)))

(assert (=> bs!1113351 (= (= lt!1887947 lt!1887727) (= lambda!215744 lambda!215662))))

(declare-fun bs!1113352 () Bool)

(assert (= bs!1113352 (and d!1504245 b!4722952)))

(assert (=> bs!1113352 (= (= lt!1887947 lt!1887727) (= lambda!215744 lambda!215663))))

(declare-fun bs!1113353 () Bool)

(assert (= bs!1113353 (and d!1504245 b!4723056)))

(assert (=> bs!1113353 (= (= lt!1887947 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215744 lambda!215675))))

(declare-fun bs!1113354 () Bool)

(assert (= bs!1113354 (and d!1504245 b!4723443)))

(assert (=> bs!1113354 (= (= lt!1887947 lt!1888469) (= lambda!215744 lambda!215733))))

(declare-fun bs!1113355 () Bool)

(assert (= bs!1113355 (and d!1504245 b!4722978)))

(assert (=> bs!1113355 (= (= lt!1887947 lt!1887727) (= lambda!215744 lambda!215670))))

(declare-fun bs!1113356 () Bool)

(assert (= bs!1113356 (and d!1504245 d!1503799)))

(assert (=> bs!1113356 (= (= lt!1887947 lt!1887948) (= lambda!215744 lambda!215641))))

(declare-fun bs!1113357 () Bool)

(assert (= bs!1113357 (and d!1504245 b!4723275)))

(assert (=> bs!1113357 (= (= lt!1887947 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215744 lambda!215689))))

(declare-fun bs!1113358 () Bool)

(assert (= bs!1113358 (and d!1504245 b!4722947)))

(assert (=> bs!1113358 (= (= lt!1887947 lt!1888056) (= lambda!215744 lambda!215660))))

(declare-fun bs!1113359 () Bool)

(assert (= bs!1113359 (and d!1504245 d!1503911)))

(assert (=> bs!1113359 (not (= lambda!215744 lambda!215674))))

(assert (=> bs!1113346 (= (= lt!1887947 lt!1887727) (= lambda!215744 lambda!215639))))

(declare-fun bs!1113360 () Bool)

(assert (= bs!1113360 (and d!1504245 b!4723310)))

(assert (=> bs!1113360 (= (= lt!1887947 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215744 lambda!215697))))

(declare-fun bs!1113361 () Bool)

(assert (= bs!1113361 (and d!1504245 b!4722976)))

(assert (=> bs!1113361 (= (= lt!1887947 lt!1887727) (= lambda!215744 lambda!215671))))

(assert (=> bs!1113358 (= (= lt!1887947 lt!1887727) (= lambda!215744 lambda!215659))))

(assert (=> bs!1113352 (= (= lt!1887947 lt!1888077) (= lambda!215744 lambda!215664))))

(assert (=> bs!1113337 (= (= lt!1887947 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215744 lambda!215738))))

(assert (=> bs!1113361 (= (= lt!1887947 lt!1888135) (= lambda!215744 lambda!215672))))

(declare-fun bs!1113362 () Bool)

(assert (= bs!1113362 (and d!1504245 b!4723401)))

(assert (=> bs!1113362 (= (= lt!1887947 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215744 lambda!215718))))

(assert (=> bs!1113348 (= (= lt!1887947 lt!1887727) (= lambda!215744 lambda!215667))))

(assert (=> bs!1113354 (= (= lt!1887947 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215744 lambda!215732))))

(declare-fun bs!1113363 () Bool)

(assert (= bs!1113363 (and d!1504245 d!1503907)))

(assert (=> bs!1113363 (= (= lt!1887947 lt!1888136) (= lambda!215744 lambda!215673))))

(declare-fun bs!1113364 () Bool)

(assert (= bs!1113364 (and d!1504245 d!1504043)))

(assert (=> bs!1113364 (= (= lt!1887947 lt!1888295) (= lambda!215744 lambda!215695))))

(assert (=> bs!1113349 (= (= lt!1887947 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215744 lambda!215690))))

(declare-fun bs!1113365 () Bool)

(assert (= bs!1113365 (and d!1504245 d!1503991)))

(assert (=> bs!1113365 (= (= lt!1887947 lt!1887727) (= lambda!215744 lambda!215688))))

(declare-fun bs!1113366 () Bool)

(assert (= bs!1113366 (and d!1504245 d!1504161)))

(assert (=> bs!1113366 (= (= lt!1887947 lt!1888470) (= lambda!215744 lambda!215734))))

(declare-fun bs!1113367 () Bool)

(assert (= bs!1113367 (and d!1504245 d!1504211)))

(assert (=> bs!1113367 (= (= lt!1887947 lt!1888505) (= lambda!215744 lambda!215742))))

(declare-fun bs!1113368 () Bool)

(assert (= bs!1113368 (and d!1504245 d!1504085)))

(assert (=> bs!1113368 (= (= lt!1887947 lt!1888323) (= lambda!215744 lambda!215703))))

(declare-fun bs!1113369 () Bool)

(assert (= bs!1113369 (and d!1504245 d!1503963)))

(assert (=> bs!1113369 (= (= lt!1887947 lt!1888169) (= lambda!215744 lambda!215678))))

(declare-fun bs!1113370 () Bool)

(assert (= bs!1113370 (and d!1504245 b!4723445)))

(assert (=> bs!1113370 (= (= lt!1887947 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215744 lambda!215731))))

(declare-fun bs!1113371 () Bool)

(assert (= bs!1113371 (and d!1504245 b!4723503)))

(assert (=> bs!1113371 (= (= lt!1887947 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215744 lambda!215736))))

(declare-fun bs!1113372 () Bool)

(assert (= bs!1113372 (and d!1504245 b!4722847)))

(assert (=> bs!1113372 (= (= lt!1887947 lt!1887727) (= lambda!215744 lambda!215638))))

(assert (=> bs!1113344 (= (= lt!1887947 lt!1888441) (= lambda!215744 lambda!215722))))

(declare-fun bs!1113373 () Bool)

(assert (= bs!1113373 (and d!1504245 d!1503899)))

(assert (=> bs!1113373 (= (= lt!1887947 lt!1888111) (= lambda!215744 lambda!215669))))

(assert (=> d!1504245 true))

(assert (=> d!1504245 (forall!11590 (toList!5917 lt!1887727) lambda!215744)))

(declare-fun lt!1888587 () Unit!130119)

(assert (=> d!1504245 (= lt!1888587 (choose!33338 lt!1887727 lt!1887947 (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (_2!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(assert (=> d!1504245 (forall!11590 (toList!5917 (+!2269 lt!1887727 (tuple2!54451 (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (_2!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))) lambda!215744)))

(assert (=> d!1504245 (= (addForallContainsKeyThenBeforeAdding!796 lt!1887727 lt!1887947 (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (_2!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) lt!1888587)))

(declare-fun bs!1113382 () Bool)

(assert (= bs!1113382 d!1504245))

(declare-fun m!5660335 () Bool)

(assert (=> bs!1113382 m!5660335))

(declare-fun m!5660337 () Bool)

(assert (=> bs!1113382 m!5660337))

(declare-fun m!5660339 () Bool)

(assert (=> bs!1113382 m!5660339))

(declare-fun m!5660341 () Bool)

(assert (=> bs!1113382 m!5660341))

(assert (=> b!4722845 d!1504245))

(assert (=> b!4722845 d!1503929))

(declare-fun d!1504253 () Bool)

(declare-fun res!1998558 () Bool)

(declare-fun e!2945986 () Bool)

(assert (=> d!1504253 (=> res!1998558 e!2945986)))

(assert (=> d!1504253 (= res!1998558 ((_ is Nil!52830) (_2!30520 (h!59178 (toList!5918 lm!2023)))))))

(assert (=> d!1504253 (= (forall!11590 (_2!30520 (h!59178 (toList!5918 lm!2023))) lambda!215640) e!2945986)))

(declare-fun b!4723590 () Bool)

(declare-fun e!2945987 () Bool)

(assert (=> b!4723590 (= e!2945986 e!2945987)))

(declare-fun res!1998559 () Bool)

(assert (=> b!4723590 (=> (not res!1998559) (not e!2945987))))

(assert (=> b!4723590 (= res!1998559 (dynLambda!21821 lambda!215640 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(declare-fun b!4723591 () Bool)

(assert (=> b!4723591 (= e!2945987 (forall!11590 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023)))) lambda!215640))))

(assert (= (and d!1504253 (not res!1998558)) b!4723590))

(assert (= (and b!4723590 res!1998559) b!4723591))

(declare-fun b_lambda!178883 () Bool)

(assert (=> (not b_lambda!178883) (not b!4723590)))

(assert (=> b!4723590 m!5660279))

(assert (=> b!4723591 m!5658749))

(assert (=> b!4722845 d!1504253))

(declare-fun d!1504255 () Bool)

(declare-fun res!1998560 () Bool)

(declare-fun e!2945988 () Bool)

(assert (=> d!1504255 (=> res!1998560 e!2945988)))

(assert (=> d!1504255 (= res!1998560 ((_ is Nil!52830) (toList!5917 lt!1887942)))))

(assert (=> d!1504255 (= (forall!11590 (toList!5917 lt!1887942) lambda!215640) e!2945988)))

(declare-fun b!4723592 () Bool)

(declare-fun e!2945989 () Bool)

(assert (=> b!4723592 (= e!2945988 e!2945989)))

(declare-fun res!1998561 () Bool)

(assert (=> b!4723592 (=> (not res!1998561) (not e!2945989))))

(assert (=> b!4723592 (= res!1998561 (dynLambda!21821 lambda!215640 (h!59177 (toList!5917 lt!1887942))))))

(declare-fun b!4723593 () Bool)

(assert (=> b!4723593 (= e!2945989 (forall!11590 (t!360220 (toList!5917 lt!1887942)) lambda!215640))))

(assert (= (and d!1504255 (not res!1998560)) b!4723592))

(assert (= (and b!4723592 res!1998561) b!4723593))

(declare-fun b_lambda!178885 () Bool)

(assert (=> (not b_lambda!178885) (not b!4723592)))

(declare-fun m!5660343 () Bool)

(assert (=> b!4723592 m!5660343))

(declare-fun m!5660345 () Bool)

(assert (=> b!4723593 m!5660345))

(assert (=> b!4722845 d!1504255))

(declare-fun d!1504257 () Bool)

(declare-fun e!2945990 () Bool)

(assert (=> d!1504257 e!2945990))

(declare-fun res!1998563 () Bool)

(assert (=> d!1504257 (=> (not res!1998563) (not e!2945990))))

(declare-fun lt!1888611 () ListMap!5281)

(assert (=> d!1504257 (= res!1998563 (contains!16175 lt!1888611 (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(declare-fun lt!1888612 () List!52954)

(assert (=> d!1504257 (= lt!1888611 (ListMap!5282 lt!1888612))))

(declare-fun lt!1888609 () Unit!130119)

(declare-fun lt!1888610 () Unit!130119)

(assert (=> d!1504257 (= lt!1888609 lt!1888610)))

(assert (=> d!1504257 (= (getValueByKey!1957 lt!1888612 (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (Some!12360 (_2!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(assert (=> d!1504257 (= lt!1888610 (lemmaContainsTupThenGetReturnValue!1086 lt!1888612 (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (_2!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(assert (=> d!1504257 (= lt!1888612 (insertNoDuplicatedKeys!594 (toList!5917 lt!1887727) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (_2!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(assert (=> d!1504257 (= (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) lt!1888611)))

(declare-fun b!4723594 () Bool)

(declare-fun res!1998562 () Bool)

(assert (=> b!4723594 (=> (not res!1998562) (not e!2945990))))

(assert (=> b!4723594 (= res!1998562 (= (getValueByKey!1957 (toList!5917 lt!1888611) (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (Some!12360 (_2!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))))

(declare-fun b!4723595 () Bool)

(assert (=> b!4723595 (= e!2945990 (contains!16180 (toList!5917 lt!1888611) (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))

(assert (= (and d!1504257 res!1998563) b!4723594))

(assert (= (and b!4723594 res!1998562) b!4723595))

(declare-fun m!5660347 () Bool)

(assert (=> d!1504257 m!5660347))

(declare-fun m!5660349 () Bool)

(assert (=> d!1504257 m!5660349))

(declare-fun m!5660351 () Bool)

(assert (=> d!1504257 m!5660351))

(declare-fun m!5660353 () Bool)

(assert (=> d!1504257 m!5660353))

(declare-fun m!5660355 () Bool)

(assert (=> b!4723594 m!5660355))

(declare-fun m!5660357 () Bool)

(assert (=> b!4723595 m!5660357))

(assert (=> b!4722845 d!1504257))

(declare-fun d!1504259 () Bool)

(assert (=> d!1504259 (= (invariantList!1511 (toList!5917 lt!1887984)) (noDuplicatedKeys!374 (toList!5917 lt!1887984)))))

(declare-fun bs!1113402 () Bool)

(assert (= bs!1113402 d!1504259))

(declare-fun m!5660359 () Bool)

(assert (=> bs!1113402 m!5660359))

(assert (=> d!1503843 d!1504259))

(declare-fun d!1504261 () Bool)

(declare-fun res!1998564 () Bool)

(declare-fun e!2945991 () Bool)

(assert (=> d!1504261 (=> res!1998564 e!2945991)))

(assert (=> d!1504261 (= res!1998564 ((_ is Nil!52831) (t!360221 (toList!5918 lm!2023))))))

(assert (=> d!1504261 (= (forall!11588 (t!360221 (toList!5918 lm!2023)) lambda!215642) e!2945991)))

(declare-fun b!4723596 () Bool)

(declare-fun e!2945992 () Bool)

(assert (=> b!4723596 (= e!2945991 e!2945992)))

(declare-fun res!1998565 () Bool)

(assert (=> b!4723596 (=> (not res!1998565) (not e!2945992))))

(assert (=> b!4723596 (= res!1998565 (dynLambda!21820 lambda!215642 (h!59178 (t!360221 (toList!5918 lm!2023)))))))

(declare-fun b!4723597 () Bool)

(assert (=> b!4723597 (= e!2945992 (forall!11588 (t!360221 (t!360221 (toList!5918 lm!2023))) lambda!215642))))

(assert (= (and d!1504261 (not res!1998564)) b!4723596))

(assert (= (and b!4723596 res!1998565) b!4723597))

(declare-fun b_lambda!178887 () Bool)

(assert (=> (not b_lambda!178887) (not b!4723596)))

(declare-fun m!5660361 () Bool)

(assert (=> b!4723596 m!5660361))

(declare-fun m!5660363 () Bool)

(assert (=> b!4723597 m!5660363))

(assert (=> d!1503843 d!1504261))

(declare-fun b!4723599 () Bool)

(declare-fun e!2945993 () List!52954)

(declare-fun e!2945994 () List!52954)

(assert (=> b!4723599 (= e!2945993 e!2945994)))

(declare-fun c!806722 () Bool)

(assert (=> b!4723599 (= c!806722 ((_ is Cons!52830) (t!360220 oldBucket!34)))))

(declare-fun b!4723600 () Bool)

(assert (=> b!4723600 (= e!2945994 (Cons!52830 (h!59177 (t!360220 oldBucket!34)) (removePairForKey!1609 (t!360220 (t!360220 oldBucket!34)) key!4653)))))

(declare-fun b!4723598 () Bool)

(assert (=> b!4723598 (= e!2945993 (t!360220 (t!360220 oldBucket!34)))))

(declare-fun b!4723601 () Bool)

(assert (=> b!4723601 (= e!2945994 Nil!52830)))

(declare-fun d!1504263 () Bool)

(declare-fun lt!1888613 () List!52954)

(assert (=> d!1504263 (not (containsKey!3369 lt!1888613 key!4653))))

(assert (=> d!1504263 (= lt!1888613 e!2945993)))

(declare-fun c!806723 () Bool)

(assert (=> d!1504263 (= c!806723 (and ((_ is Cons!52830) (t!360220 oldBucket!34)) (= (_1!30519 (h!59177 (t!360220 oldBucket!34))) key!4653)))))

(assert (=> d!1504263 (noDuplicateKeys!2014 (t!360220 oldBucket!34))))

(assert (=> d!1504263 (= (removePairForKey!1609 (t!360220 oldBucket!34) key!4653) lt!1888613)))

(assert (= (and d!1504263 c!806723) b!4723598))

(assert (= (and d!1504263 (not c!806723)) b!4723599))

(assert (= (and b!4723599 c!806722) b!4723600))

(assert (= (and b!4723599 (not c!806722)) b!4723601))

(declare-fun m!5660365 () Bool)

(assert (=> b!4723600 m!5660365))

(declare-fun m!5660367 () Bool)

(assert (=> d!1504263 m!5660367))

(assert (=> d!1504263 m!5658783))

(assert (=> b!4722937 d!1504263))

(declare-fun d!1504265 () Bool)

(declare-fun res!1998566 () Bool)

(declare-fun e!2945995 () Bool)

(assert (=> d!1504265 (=> res!1998566 e!2945995)))

(assert (=> d!1504265 (= res!1998566 ((_ is Nil!52830) (Cons!52830 lt!1887722 lt!1887720)))))

(assert (=> d!1504265 (= (forall!11590 (Cons!52830 lt!1887722 lt!1887720) lambda!215673) e!2945995)))

(declare-fun b!4723602 () Bool)

(declare-fun e!2945996 () Bool)

(assert (=> b!4723602 (= e!2945995 e!2945996)))

(declare-fun res!1998567 () Bool)

(assert (=> b!4723602 (=> (not res!1998567) (not e!2945996))))

(assert (=> b!4723602 (= res!1998567 (dynLambda!21821 lambda!215673 (h!59177 (Cons!52830 lt!1887722 lt!1887720))))))

(declare-fun b!4723603 () Bool)

(assert (=> b!4723603 (= e!2945996 (forall!11590 (t!360220 (Cons!52830 lt!1887722 lt!1887720)) lambda!215673))))

(assert (= (and d!1504265 (not res!1998566)) b!4723602))

(assert (= (and b!4723602 res!1998567) b!4723603))

(declare-fun b_lambda!178889 () Bool)

(assert (=> (not b_lambda!178889) (not b!4723602)))

(declare-fun m!5660369 () Bool)

(assert (=> b!4723602 m!5660369))

(declare-fun m!5660371 () Bool)

(assert (=> b!4723603 m!5660371))

(assert (=> d!1503907 d!1504265))

(declare-fun d!1504267 () Bool)

(declare-fun res!1998568 () Bool)

(declare-fun e!2945997 () Bool)

(assert (=> d!1504267 (=> res!1998568 e!2945997)))

(assert (=> d!1504267 (= res!1998568 (not ((_ is Cons!52830) (Cons!52830 lt!1887722 lt!1887720))))))

(assert (=> d!1504267 (= (noDuplicateKeys!2014 (Cons!52830 lt!1887722 lt!1887720)) e!2945997)))

(declare-fun b!4723604 () Bool)

(declare-fun e!2945998 () Bool)

(assert (=> b!4723604 (= e!2945997 e!2945998)))

(declare-fun res!1998569 () Bool)

(assert (=> b!4723604 (=> (not res!1998569) (not e!2945998))))

(assert (=> b!4723604 (= res!1998569 (not (containsKey!3369 (t!360220 (Cons!52830 lt!1887722 lt!1887720)) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720))))))))

(declare-fun b!4723605 () Bool)

(assert (=> b!4723605 (= e!2945998 (noDuplicateKeys!2014 (t!360220 (Cons!52830 lt!1887722 lt!1887720))))))

(assert (= (and d!1504267 (not res!1998568)) b!4723604))

(assert (= (and b!4723604 res!1998569) b!4723605))

(declare-fun m!5660373 () Bool)

(assert (=> b!4723604 m!5660373))

(declare-fun m!5660375 () Bool)

(assert (=> b!4723605 m!5660375))

(assert (=> d!1503907 d!1504267))

(declare-fun d!1504269 () Bool)

(declare-fun lt!1888614 () Bool)

(assert (=> d!1504269 (= lt!1888614 (select (content!9395 (toList!5917 lt!1888124)) (h!59177 oldBucket!34)))))

(declare-fun e!2946000 () Bool)

(assert (=> d!1504269 (= lt!1888614 e!2946000)))

(declare-fun res!1998571 () Bool)

(assert (=> d!1504269 (=> (not res!1998571) (not e!2946000))))

(assert (=> d!1504269 (= res!1998571 ((_ is Cons!52830) (toList!5917 lt!1888124)))))

(assert (=> d!1504269 (= (contains!16180 (toList!5917 lt!1888124) (h!59177 oldBucket!34)) lt!1888614)))

(declare-fun b!4723606 () Bool)

(declare-fun e!2945999 () Bool)

(assert (=> b!4723606 (= e!2946000 e!2945999)))

(declare-fun res!1998570 () Bool)

(assert (=> b!4723606 (=> res!1998570 e!2945999)))

(assert (=> b!4723606 (= res!1998570 (= (h!59177 (toList!5917 lt!1888124)) (h!59177 oldBucket!34)))))

(declare-fun b!4723607 () Bool)

(assert (=> b!4723607 (= e!2945999 (contains!16180 (t!360220 (toList!5917 lt!1888124)) (h!59177 oldBucket!34)))))

(assert (= (and d!1504269 res!1998571) b!4723606))

(assert (= (and b!4723606 (not res!1998570)) b!4723607))

(declare-fun m!5660377 () Bool)

(assert (=> d!1504269 m!5660377))

(declare-fun m!5660379 () Bool)

(assert (=> d!1504269 m!5660379))

(declare-fun m!5660381 () Bool)

(assert (=> b!4723607 m!5660381))

(assert (=> b!4722975 d!1504269))

(declare-fun d!1504271 () Bool)

(declare-fun res!1998572 () Bool)

(declare-fun e!2946001 () Bool)

(assert (=> d!1504271 (=> res!1998572 e!2946001)))

(assert (=> d!1504271 (= res!1998572 ((_ is Nil!52830) (toList!5917 lt!1887727)))))

(assert (=> d!1504271 (= (forall!11590 (toList!5917 lt!1887727) lambda!215659) e!2946001)))

(declare-fun b!4723608 () Bool)

(declare-fun e!2946002 () Bool)

(assert (=> b!4723608 (= e!2946001 e!2946002)))

(declare-fun res!1998573 () Bool)

(assert (=> b!4723608 (=> (not res!1998573) (not e!2946002))))

(assert (=> b!4723608 (= res!1998573 (dynLambda!21821 lambda!215659 (h!59177 (toList!5917 lt!1887727))))))

(declare-fun b!4723609 () Bool)

(assert (=> b!4723609 (= e!2946002 (forall!11590 (t!360220 (toList!5917 lt!1887727)) lambda!215659))))

(assert (= (and d!1504271 (not res!1998572)) b!4723608))

(assert (= (and b!4723608 res!1998573) b!4723609))

(declare-fun b_lambda!178891 () Bool)

(assert (=> (not b_lambda!178891) (not b!4723608)))

(declare-fun m!5660383 () Bool)

(assert (=> b!4723608 m!5660383))

(declare-fun m!5660385 () Bool)

(assert (=> b!4723609 m!5660385))

(assert (=> b!4722947 d!1504271))

(assert (=> b!4722947 d!1503945))

(declare-fun d!1504273 () Bool)

(declare-fun res!1998574 () Bool)

(declare-fun e!2946003 () Bool)

(assert (=> d!1504273 (=> res!1998574 e!2946003)))

(assert (=> d!1504273 (= res!1998574 ((_ is Nil!52830) (toList!5917 lt!1888051)))))

(assert (=> d!1504273 (= (forall!11590 (toList!5917 lt!1888051) lambda!215660) e!2946003)))

(declare-fun b!4723610 () Bool)

(declare-fun e!2946004 () Bool)

(assert (=> b!4723610 (= e!2946003 e!2946004)))

(declare-fun res!1998575 () Bool)

(assert (=> b!4723610 (=> (not res!1998575) (not e!2946004))))

(assert (=> b!4723610 (= res!1998575 (dynLambda!21821 lambda!215660 (h!59177 (toList!5917 lt!1888051))))))

(declare-fun b!4723611 () Bool)

(assert (=> b!4723611 (= e!2946004 (forall!11590 (t!360220 (toList!5917 lt!1888051)) lambda!215660))))

(assert (= (and d!1504273 (not res!1998574)) b!4723610))

(assert (= (and b!4723610 res!1998575) b!4723611))

(declare-fun b_lambda!178893 () Bool)

(assert (=> (not b_lambda!178893) (not b!4723610)))

(declare-fun m!5660387 () Bool)

(assert (=> b!4723610 m!5660387))

(declare-fun m!5660389 () Bool)

(assert (=> b!4723611 m!5660389))

(assert (=> b!4722947 d!1504273))

(declare-fun bs!1113430 () Bool)

(declare-fun d!1504275 () Bool)

(assert (= bs!1113430 (and d!1504275 b!4723501)))

(declare-fun lambda!215747 () Int)

(assert (=> bs!1113430 (= (= lt!1888056 lt!1888504) (= lambda!215747 lambda!215740))))

(declare-fun bs!1113433 () Bool)

(assert (= bs!1113433 (and d!1504275 d!1503873)))

(assert (=> bs!1113433 (not (= lambda!215747 lambda!215656))))

(declare-fun bs!1113435 () Bool)

(assert (= bs!1113435 (and d!1504275 b!4722971)))

(assert (=> bs!1113435 (= (= lt!1888056 lt!1887727) (= lambda!215747 lambda!215666))))

(declare-fun bs!1113436 () Bool)

(assert (= bs!1113436 (and d!1504275 d!1504127)))

(assert (=> bs!1113436 (= (= lt!1888056 lt!1888077) (= lambda!215747 lambda!215715))))

(declare-fun bs!1113437 () Bool)

(assert (= bs!1113437 (and d!1504275 b!4723308)))

(assert (=> bs!1113437 (= (= lt!1888056 lt!1888322) (= lambda!215747 lambda!215700))))

(assert (=> bs!1113437 (= (= lt!1888056 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215747 lambda!215698))))

(declare-fun bs!1113440 () Bool)

(assert (= bs!1113440 (and d!1504275 d!1503889)))

(assert (=> bs!1113440 (= (= lt!1888056 lt!1888078) (= lambda!215747 lambda!215665))))

(declare-fun bs!1113441 () Bool)

(assert (= bs!1113441 (and d!1504275 b!4723399)))

(assert (=> bs!1113441 (= (= lt!1888056 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215747 lambda!215720))))

(declare-fun bs!1113442 () Bool)

(assert (= bs!1113442 (and d!1504275 b!4722949)))

(assert (=> bs!1113442 (= (= lt!1888056 lt!1887727) (= lambda!215747 lambda!215658))))

(declare-fun bs!1113443 () Bool)

(assert (= bs!1113443 (and d!1504275 b!4722845)))

(assert (=> bs!1113443 (= (= lt!1888056 lt!1887947) (= lambda!215747 lambda!215640))))

(declare-fun bs!1113444 () Bool)

(assert (= bs!1113444 (and d!1504275 d!1503887)))

(assert (=> bs!1113444 (= (= lt!1888056 lt!1888057) (= lambda!215747 lambda!215661))))

(declare-fun bs!1113445 () Bool)

(assert (= bs!1113445 (and d!1504275 b!4722969)))

(assert (=> bs!1113445 (= (= lt!1888056 lt!1888110) (= lambda!215747 lambda!215668))))

(declare-fun bs!1113446 () Bool)

(assert (= bs!1113446 (and d!1504275 b!4723054)))

(assert (=> bs!1113446 (= (= lt!1888056 lt!1888168) (= lambda!215747 lambda!215677))))

(declare-fun bs!1113447 () Bool)

(assert (= bs!1113447 (and d!1504275 b!4723273)))

(assert (=> bs!1113447 (= (= lt!1888056 lt!1888294) (= lambda!215747 lambda!215691))))

(declare-fun bs!1113448 () Bool)

(assert (= bs!1113448 (and d!1504275 d!1504139)))

(assert (=> bs!1113448 (= (= lt!1888056 lt!1888442) (= lambda!215747 lambda!215724))))

(declare-fun bs!1113449 () Bool)

(assert (= bs!1113449 (and d!1504275 b!4722954)))

(assert (=> bs!1113449 (= (= lt!1888056 lt!1887727) (= lambda!215747 lambda!215662))))

(declare-fun bs!1113450 () Bool)

(assert (= bs!1113450 (and d!1504275 b!4722952)))

(assert (=> bs!1113450 (= (= lt!1888056 lt!1887727) (= lambda!215747 lambda!215663))))

(declare-fun bs!1113451 () Bool)

(assert (= bs!1113451 (and d!1504275 b!4723056)))

(assert (=> bs!1113451 (= (= lt!1888056 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215747 lambda!215675))))

(declare-fun bs!1113452 () Bool)

(assert (= bs!1113452 (and d!1504275 b!4723443)))

(assert (=> bs!1113452 (= (= lt!1888056 lt!1888469) (= lambda!215747 lambda!215733))))

(declare-fun bs!1113453 () Bool)

(assert (= bs!1113453 (and d!1504275 b!4722978)))

(assert (=> bs!1113453 (= (= lt!1888056 lt!1887727) (= lambda!215747 lambda!215670))))

(declare-fun bs!1113454 () Bool)

(assert (= bs!1113454 (and d!1504275 d!1503799)))

(assert (=> bs!1113454 (= (= lt!1888056 lt!1887948) (= lambda!215747 lambda!215641))))

(declare-fun bs!1113455 () Bool)

(assert (= bs!1113455 (and d!1504275 b!4723275)))

(assert (=> bs!1113455 (= (= lt!1888056 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215747 lambda!215689))))

(declare-fun bs!1113456 () Bool)

(assert (= bs!1113456 (and d!1504275 b!4722947)))

(assert (=> bs!1113456 (= lambda!215747 lambda!215660)))

(declare-fun bs!1113457 () Bool)

(assert (= bs!1113457 (and d!1504275 d!1503911)))

(assert (=> bs!1113457 (not (= lambda!215747 lambda!215674))))

(assert (=> bs!1113443 (= (= lt!1888056 lt!1887727) (= lambda!215747 lambda!215639))))

(declare-fun bs!1113458 () Bool)

(assert (= bs!1113458 (and d!1504275 b!4723310)))

(assert (=> bs!1113458 (= (= lt!1888056 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215747 lambda!215697))))

(declare-fun bs!1113459 () Bool)

(assert (= bs!1113459 (and d!1504275 b!4722976)))

(assert (=> bs!1113459 (= (= lt!1888056 lt!1887727) (= lambda!215747 lambda!215671))))

(assert (=> bs!1113456 (= (= lt!1888056 lt!1887727) (= lambda!215747 lambda!215659))))

(assert (=> bs!1113450 (= (= lt!1888056 lt!1888077) (= lambda!215747 lambda!215664))))

(assert (=> bs!1113430 (= (= lt!1888056 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215747 lambda!215738))))

(assert (=> bs!1113459 (= (= lt!1888056 lt!1888135) (= lambda!215747 lambda!215672))))

(declare-fun bs!1113460 () Bool)

(assert (= bs!1113460 (and d!1504275 b!4723401)))

(assert (=> bs!1113460 (= (= lt!1888056 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215747 lambda!215718))))

(assert (=> bs!1113445 (= (= lt!1888056 lt!1887727) (= lambda!215747 lambda!215667))))

(assert (=> bs!1113452 (= (= lt!1888056 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215747 lambda!215732))))

(declare-fun bs!1113461 () Bool)

(assert (= bs!1113461 (and d!1504275 d!1503907)))

(assert (=> bs!1113461 (= (= lt!1888056 lt!1888136) (= lambda!215747 lambda!215673))))

(declare-fun bs!1113462 () Bool)

(assert (= bs!1113462 (and d!1504275 d!1504043)))

(assert (=> bs!1113462 (= (= lt!1888056 lt!1888295) (= lambda!215747 lambda!215695))))

(assert (=> bs!1113447 (= (= lt!1888056 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215747 lambda!215690))))

(declare-fun bs!1113463 () Bool)

(assert (= bs!1113463 (and d!1504275 d!1503991)))

(assert (=> bs!1113463 (= (= lt!1888056 lt!1887727) (= lambda!215747 lambda!215688))))

(declare-fun bs!1113464 () Bool)

(assert (= bs!1113464 (and d!1504275 d!1504161)))

(assert (=> bs!1113464 (= (= lt!1888056 lt!1888470) (= lambda!215747 lambda!215734))))

(declare-fun bs!1113465 () Bool)

(assert (= bs!1113465 (and d!1504275 d!1504211)))

(assert (=> bs!1113465 (= (= lt!1888056 lt!1888505) (= lambda!215747 lambda!215742))))

(assert (=> bs!1113446 (= (= lt!1888056 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215747 lambda!215676))))

(declare-fun bs!1113466 () Bool)

(assert (= bs!1113466 (and d!1504275 d!1504245)))

(assert (=> bs!1113466 (= (= lt!1888056 lt!1887947) (= lambda!215747 lambda!215744))))

(declare-fun bs!1113467 () Bool)

(assert (= bs!1113467 (and d!1504275 d!1504085)))

(assert (=> bs!1113467 (= (= lt!1888056 lt!1888323) (= lambda!215747 lambda!215703))))

(declare-fun bs!1113468 () Bool)

(assert (= bs!1113468 (and d!1504275 d!1503963)))

(assert (=> bs!1113468 (= (= lt!1888056 lt!1888169) (= lambda!215747 lambda!215678))))

(declare-fun bs!1113469 () Bool)

(assert (= bs!1113469 (and d!1504275 b!4723445)))

(assert (=> bs!1113469 (= (= lt!1888056 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215747 lambda!215731))))

(declare-fun bs!1113470 () Bool)

(assert (= bs!1113470 (and d!1504275 b!4723503)))

(assert (=> bs!1113470 (= (= lt!1888056 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215747 lambda!215736))))

(declare-fun bs!1113471 () Bool)

(assert (= bs!1113471 (and d!1504275 b!4722847)))

(assert (=> bs!1113471 (= (= lt!1888056 lt!1887727) (= lambda!215747 lambda!215638))))

(assert (=> bs!1113441 (= (= lt!1888056 lt!1888441) (= lambda!215747 lambda!215722))))

(declare-fun bs!1113472 () Bool)

(assert (= bs!1113472 (and d!1504275 d!1503899)))

(assert (=> bs!1113472 (= (= lt!1888056 lt!1888111) (= lambda!215747 lambda!215669))))

(assert (=> d!1504275 true))

(assert (=> d!1504275 (forall!11590 (toList!5917 lt!1887727) lambda!215747)))

(declare-fun lt!1888615 () Unit!130119)

(assert (=> d!1504275 (= lt!1888615 (choose!33338 lt!1887727 lt!1888056 (_1!30519 (h!59177 newBucket!218)) (_2!30519 (h!59177 newBucket!218))))))

(assert (=> d!1504275 (forall!11590 (toList!5917 (+!2269 lt!1887727 (tuple2!54451 (_1!30519 (h!59177 newBucket!218)) (_2!30519 (h!59177 newBucket!218))))) lambda!215747)))

(assert (=> d!1504275 (= (addForallContainsKeyThenBeforeAdding!796 lt!1887727 lt!1888056 (_1!30519 (h!59177 newBucket!218)) (_2!30519 (h!59177 newBucket!218))) lt!1888615)))

(declare-fun bs!1113473 () Bool)

(assert (= bs!1113473 d!1504275))

(declare-fun m!5660391 () Bool)

(assert (=> bs!1113473 m!5660391))

(declare-fun m!5660393 () Bool)

(assert (=> bs!1113473 m!5660393))

(declare-fun m!5660395 () Bool)

(assert (=> bs!1113473 m!5660395))

(declare-fun m!5660397 () Bool)

(assert (=> bs!1113473 m!5660397))

(assert (=> b!4722947 d!1504275))

(declare-fun d!1504277 () Bool)

(declare-fun e!2946005 () Bool)

(assert (=> d!1504277 e!2946005))

(declare-fun res!1998577 () Bool)

(assert (=> d!1504277 (=> (not res!1998577) (not e!2946005))))

(declare-fun lt!1888618 () ListMap!5281)

(assert (=> d!1504277 (= res!1998577 (contains!16175 lt!1888618 (_1!30519 (h!59177 newBucket!218))))))

(declare-fun lt!1888619 () List!52954)

(assert (=> d!1504277 (= lt!1888618 (ListMap!5282 lt!1888619))))

(declare-fun lt!1888616 () Unit!130119)

(declare-fun lt!1888617 () Unit!130119)

(assert (=> d!1504277 (= lt!1888616 lt!1888617)))

(assert (=> d!1504277 (= (getValueByKey!1957 lt!1888619 (_1!30519 (h!59177 newBucket!218))) (Some!12360 (_2!30519 (h!59177 newBucket!218))))))

(assert (=> d!1504277 (= lt!1888617 (lemmaContainsTupThenGetReturnValue!1086 lt!1888619 (_1!30519 (h!59177 newBucket!218)) (_2!30519 (h!59177 newBucket!218))))))

(assert (=> d!1504277 (= lt!1888619 (insertNoDuplicatedKeys!594 (toList!5917 lt!1887727) (_1!30519 (h!59177 newBucket!218)) (_2!30519 (h!59177 newBucket!218))))))

(assert (=> d!1504277 (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888618)))

(declare-fun b!4723612 () Bool)

(declare-fun res!1998576 () Bool)

(assert (=> b!4723612 (=> (not res!1998576) (not e!2946005))))

(assert (=> b!4723612 (= res!1998576 (= (getValueByKey!1957 (toList!5917 lt!1888618) (_1!30519 (h!59177 newBucket!218))) (Some!12360 (_2!30519 (h!59177 newBucket!218)))))))

(declare-fun b!4723613 () Bool)

(assert (=> b!4723613 (= e!2946005 (contains!16180 (toList!5917 lt!1888618) (h!59177 newBucket!218)))))

(assert (= (and d!1504277 res!1998577) b!4723612))

(assert (= (and b!4723612 res!1998576) b!4723613))

(declare-fun m!5660399 () Bool)

(assert (=> d!1504277 m!5660399))

(declare-fun m!5660401 () Bool)

(assert (=> d!1504277 m!5660401))

(declare-fun m!5660403 () Bool)

(assert (=> d!1504277 m!5660403))

(declare-fun m!5660405 () Bool)

(assert (=> d!1504277 m!5660405))

(declare-fun m!5660407 () Bool)

(assert (=> b!4723612 m!5660407))

(declare-fun m!5660409 () Bool)

(assert (=> b!4723613 m!5660409))

(assert (=> b!4722947 d!1504277))

(declare-fun d!1504279 () Bool)

(declare-fun res!1998578 () Bool)

(declare-fun e!2946006 () Bool)

(assert (=> d!1504279 (=> res!1998578 e!2946006)))

(assert (=> d!1504279 (= res!1998578 ((_ is Nil!52830) newBucket!218))))

(assert (=> d!1504279 (= (forall!11590 newBucket!218 lambda!215660) e!2946006)))

(declare-fun b!4723614 () Bool)

(declare-fun e!2946007 () Bool)

(assert (=> b!4723614 (= e!2946006 e!2946007)))

(declare-fun res!1998579 () Bool)

(assert (=> b!4723614 (=> (not res!1998579) (not e!2946007))))

(assert (=> b!4723614 (= res!1998579 (dynLambda!21821 lambda!215660 (h!59177 newBucket!218)))))

(declare-fun b!4723615 () Bool)

(assert (=> b!4723615 (= e!2946007 (forall!11590 (t!360220 newBucket!218) lambda!215660))))

(assert (= (and d!1504279 (not res!1998578)) b!4723614))

(assert (= (and b!4723614 res!1998579) b!4723615))

(declare-fun b_lambda!178895 () Bool)

(assert (=> (not b_lambda!178895) (not b!4723614)))

(declare-fun m!5660411 () Bool)

(assert (=> b!4723614 m!5660411))

(assert (=> b!4723615 m!5658939))

(assert (=> b!4722947 d!1504279))

(declare-fun d!1504281 () Bool)

(declare-fun res!1998580 () Bool)

(declare-fun e!2946008 () Bool)

(assert (=> d!1504281 (=> res!1998580 e!2946008)))

(assert (=> d!1504281 (= res!1998580 ((_ is Nil!52830) (t!360220 newBucket!218)))))

(assert (=> d!1504281 (= (forall!11590 (t!360220 newBucket!218) lambda!215660) e!2946008)))

(declare-fun b!4723616 () Bool)

(declare-fun e!2946009 () Bool)

(assert (=> b!4723616 (= e!2946008 e!2946009)))

(declare-fun res!1998581 () Bool)

(assert (=> b!4723616 (=> (not res!1998581) (not e!2946009))))

(assert (=> b!4723616 (= res!1998581 (dynLambda!21821 lambda!215660 (h!59177 (t!360220 newBucket!218))))))

(declare-fun b!4723617 () Bool)

(assert (=> b!4723617 (= e!2946009 (forall!11590 (t!360220 (t!360220 newBucket!218)) lambda!215660))))

(assert (= (and d!1504281 (not res!1998580)) b!4723616))

(assert (= (and b!4723616 res!1998581) b!4723617))

(declare-fun b_lambda!178897 () Bool)

(assert (=> (not b_lambda!178897) (not b!4723616)))

(declare-fun m!5660413 () Bool)

(assert (=> b!4723616 m!5660413))

(declare-fun m!5660415 () Bool)

(assert (=> b!4723617 m!5660415))

(assert (=> b!4722947 d!1504281))

(declare-fun d!1504283 () Bool)

(declare-fun e!2946011 () Bool)

(assert (=> d!1504283 e!2946011))

(declare-fun res!1998583 () Bool)

(assert (=> d!1504283 (=> res!1998583 e!2946011)))

(declare-fun e!2946013 () Bool)

(assert (=> d!1504283 (= res!1998583 e!2946013)))

(declare-fun res!1998582 () Bool)

(assert (=> d!1504283 (=> (not res!1998582) (not e!2946013))))

(declare-fun lt!1888627 () Bool)

(assert (=> d!1504283 (= res!1998582 (not lt!1888627))))

(declare-fun lt!1888620 () Bool)

(assert (=> d!1504283 (= lt!1888627 lt!1888620)))

(declare-fun lt!1888621 () Unit!130119)

(declare-fun e!2946014 () Unit!130119)

(assert (=> d!1504283 (= lt!1888621 e!2946014)))

(declare-fun c!806724 () Bool)

(assert (=> d!1504283 (= c!806724 lt!1888620)))

(assert (=> d!1504283 (= lt!1888620 (containsKey!3373 (toList!5917 lt!1888051) (_1!30519 (h!59177 newBucket!218))))))

(assert (=> d!1504283 (= (contains!16175 lt!1888051 (_1!30519 (h!59177 newBucket!218))) lt!1888627)))

(declare-fun b!4723618 () Bool)

(declare-fun e!2946010 () Bool)

(assert (=> b!4723618 (= e!2946010 (contains!16179 (keys!18974 lt!1888051) (_1!30519 (h!59177 newBucket!218))))))

(declare-fun b!4723619 () Bool)

(assert (=> b!4723619 (= e!2946011 e!2946010)))

(declare-fun res!1998584 () Bool)

(assert (=> b!4723619 (=> (not res!1998584) (not e!2946010))))

(assert (=> b!4723619 (= res!1998584 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1888051) (_1!30519 (h!59177 newBucket!218)))))))

(declare-fun b!4723620 () Bool)

(declare-fun e!2946015 () List!52957)

(assert (=> b!4723620 (= e!2946015 (keys!18974 lt!1888051))))

(declare-fun b!4723621 () Bool)

(assert (=> b!4723621 (= e!2946015 (getKeysList!951 (toList!5917 lt!1888051)))))

(declare-fun b!4723622 () Bool)

(declare-fun e!2946012 () Unit!130119)

(assert (=> b!4723622 (= e!2946014 e!2946012)))

(declare-fun c!806726 () Bool)

(declare-fun call!330423 () Bool)

(assert (=> b!4723622 (= c!806726 call!330423)))

(declare-fun b!4723623 () Bool)

(assert (=> b!4723623 false))

(declare-fun lt!1888623 () Unit!130119)

(declare-fun lt!1888626 () Unit!130119)

(assert (=> b!4723623 (= lt!1888623 lt!1888626)))

(assert (=> b!4723623 (containsKey!3373 (toList!5917 lt!1888051) (_1!30519 (h!59177 newBucket!218)))))

(assert (=> b!4723623 (= lt!1888626 (lemmaInGetKeysListThenContainsKey!950 (toList!5917 lt!1888051) (_1!30519 (h!59177 newBucket!218))))))

(declare-fun Unit!130390 () Unit!130119)

(assert (=> b!4723623 (= e!2946012 Unit!130390)))

(declare-fun b!4723624 () Bool)

(declare-fun Unit!130391 () Unit!130119)

(assert (=> b!4723624 (= e!2946012 Unit!130391)))

(declare-fun b!4723625 () Bool)

(assert (=> b!4723625 (= e!2946013 (not (contains!16179 (keys!18974 lt!1888051) (_1!30519 (h!59177 newBucket!218)))))))

(declare-fun bm!330418 () Bool)

(assert (=> bm!330418 (= call!330423 (contains!16179 e!2946015 (_1!30519 (h!59177 newBucket!218))))))

(declare-fun c!806725 () Bool)

(assert (=> bm!330418 (= c!806725 c!806724)))

(declare-fun b!4723626 () Bool)

(declare-fun lt!1888624 () Unit!130119)

(assert (=> b!4723626 (= e!2946014 lt!1888624)))

(declare-fun lt!1888622 () Unit!130119)

(assert (=> b!4723626 (= lt!1888622 (lemmaContainsKeyImpliesGetValueByKeyDefined!1848 (toList!5917 lt!1888051) (_1!30519 (h!59177 newBucket!218))))))

(assert (=> b!4723626 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1888051) (_1!30519 (h!59177 newBucket!218))))))

(declare-fun lt!1888625 () Unit!130119)

(assert (=> b!4723626 (= lt!1888625 lt!1888622)))

(assert (=> b!4723626 (= lt!1888624 (lemmaInListThenGetKeysListContains!946 (toList!5917 lt!1888051) (_1!30519 (h!59177 newBucket!218))))))

(assert (=> b!4723626 call!330423))

(assert (= (and d!1504283 c!806724) b!4723626))

(assert (= (and d!1504283 (not c!806724)) b!4723622))

(assert (= (and b!4723622 c!806726) b!4723623))

(assert (= (and b!4723622 (not c!806726)) b!4723624))

(assert (= (or b!4723626 b!4723622) bm!330418))

(assert (= (and bm!330418 c!806725) b!4723621))

(assert (= (and bm!330418 (not c!806725)) b!4723620))

(assert (= (and d!1504283 res!1998582) b!4723625))

(assert (= (and d!1504283 (not res!1998583)) b!4723619))

(assert (= (and b!4723619 res!1998584) b!4723618))

(declare-fun m!5660417 () Bool)

(assert (=> b!4723626 m!5660417))

(declare-fun m!5660419 () Bool)

(assert (=> b!4723626 m!5660419))

(assert (=> b!4723626 m!5660419))

(declare-fun m!5660421 () Bool)

(assert (=> b!4723626 m!5660421))

(declare-fun m!5660423 () Bool)

(assert (=> b!4723626 m!5660423))

(declare-fun m!5660425 () Bool)

(assert (=> b!4723623 m!5660425))

(declare-fun m!5660427 () Bool)

(assert (=> b!4723623 m!5660427))

(assert (=> b!4723619 m!5660419))

(assert (=> b!4723619 m!5660419))

(assert (=> b!4723619 m!5660421))

(declare-fun m!5660429 () Bool)

(assert (=> b!4723620 m!5660429))

(declare-fun m!5660431 () Bool)

(assert (=> b!4723621 m!5660431))

(assert (=> b!4723625 m!5660429))

(assert (=> b!4723625 m!5660429))

(declare-fun m!5660433 () Bool)

(assert (=> b!4723625 m!5660433))

(assert (=> d!1504283 m!5660425))

(declare-fun m!5660435 () Bool)

(assert (=> bm!330418 m!5660435))

(assert (=> b!4723618 m!5660429))

(assert (=> b!4723618 m!5660429))

(assert (=> b!4723618 m!5660433))

(assert (=> b!4722947 d!1504283))

(declare-fun d!1504285 () Bool)

(declare-fun e!2946017 () Bool)

(assert (=> d!1504285 e!2946017))

(declare-fun res!1998586 () Bool)

(assert (=> d!1504285 (=> res!1998586 e!2946017)))

(declare-fun e!2946019 () Bool)

(assert (=> d!1504285 (= res!1998586 e!2946019)))

(declare-fun res!1998585 () Bool)

(assert (=> d!1504285 (=> (not res!1998585) (not e!2946019))))

(declare-fun lt!1888635 () Bool)

(assert (=> d!1504285 (= res!1998585 (not lt!1888635))))

(declare-fun lt!1888628 () Bool)

(assert (=> d!1504285 (= lt!1888635 lt!1888628)))

(declare-fun lt!1888629 () Unit!130119)

(declare-fun e!2946020 () Unit!130119)

(assert (=> d!1504285 (= lt!1888629 e!2946020)))

(declare-fun c!806727 () Bool)

(assert (=> d!1504285 (= c!806727 lt!1888628)))

(assert (=> d!1504285 (= lt!1888628 (containsKey!3373 (toList!5917 lt!1888056) (_1!30519 (h!59177 newBucket!218))))))

(assert (=> d!1504285 (= (contains!16175 lt!1888056 (_1!30519 (h!59177 newBucket!218))) lt!1888635)))

(declare-fun b!4723627 () Bool)

(declare-fun e!2946016 () Bool)

(assert (=> b!4723627 (= e!2946016 (contains!16179 (keys!18974 lt!1888056) (_1!30519 (h!59177 newBucket!218))))))

(declare-fun b!4723628 () Bool)

(assert (=> b!4723628 (= e!2946017 e!2946016)))

(declare-fun res!1998587 () Bool)

(assert (=> b!4723628 (=> (not res!1998587) (not e!2946016))))

(assert (=> b!4723628 (= res!1998587 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1888056) (_1!30519 (h!59177 newBucket!218)))))))

(declare-fun b!4723629 () Bool)

(declare-fun e!2946021 () List!52957)

(assert (=> b!4723629 (= e!2946021 (keys!18974 lt!1888056))))

(declare-fun b!4723630 () Bool)

(assert (=> b!4723630 (= e!2946021 (getKeysList!951 (toList!5917 lt!1888056)))))

(declare-fun b!4723631 () Bool)

(declare-fun e!2946018 () Unit!130119)

(assert (=> b!4723631 (= e!2946020 e!2946018)))

(declare-fun c!806729 () Bool)

(declare-fun call!330424 () Bool)

(assert (=> b!4723631 (= c!806729 call!330424)))

(declare-fun b!4723632 () Bool)

(assert (=> b!4723632 false))

(declare-fun lt!1888631 () Unit!130119)

(declare-fun lt!1888634 () Unit!130119)

(assert (=> b!4723632 (= lt!1888631 lt!1888634)))

(assert (=> b!4723632 (containsKey!3373 (toList!5917 lt!1888056) (_1!30519 (h!59177 newBucket!218)))))

(assert (=> b!4723632 (= lt!1888634 (lemmaInGetKeysListThenContainsKey!950 (toList!5917 lt!1888056) (_1!30519 (h!59177 newBucket!218))))))

(declare-fun Unit!130392 () Unit!130119)

(assert (=> b!4723632 (= e!2946018 Unit!130392)))

(declare-fun b!4723633 () Bool)

(declare-fun Unit!130393 () Unit!130119)

(assert (=> b!4723633 (= e!2946018 Unit!130393)))

(declare-fun b!4723634 () Bool)

(assert (=> b!4723634 (= e!2946019 (not (contains!16179 (keys!18974 lt!1888056) (_1!30519 (h!59177 newBucket!218)))))))

(declare-fun bm!330419 () Bool)

(assert (=> bm!330419 (= call!330424 (contains!16179 e!2946021 (_1!30519 (h!59177 newBucket!218))))))

(declare-fun c!806728 () Bool)

(assert (=> bm!330419 (= c!806728 c!806727)))

(declare-fun b!4723635 () Bool)

(declare-fun lt!1888632 () Unit!130119)

(assert (=> b!4723635 (= e!2946020 lt!1888632)))

(declare-fun lt!1888630 () Unit!130119)

(assert (=> b!4723635 (= lt!1888630 (lemmaContainsKeyImpliesGetValueByKeyDefined!1848 (toList!5917 lt!1888056) (_1!30519 (h!59177 newBucket!218))))))

(assert (=> b!4723635 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1888056) (_1!30519 (h!59177 newBucket!218))))))

(declare-fun lt!1888633 () Unit!130119)

(assert (=> b!4723635 (= lt!1888633 lt!1888630)))

(assert (=> b!4723635 (= lt!1888632 (lemmaInListThenGetKeysListContains!946 (toList!5917 lt!1888056) (_1!30519 (h!59177 newBucket!218))))))

(assert (=> b!4723635 call!330424))

(assert (= (and d!1504285 c!806727) b!4723635))

(assert (= (and d!1504285 (not c!806727)) b!4723631))

(assert (= (and b!4723631 c!806729) b!4723632))

(assert (= (and b!4723631 (not c!806729)) b!4723633))

(assert (= (or b!4723635 b!4723631) bm!330419))

(assert (= (and bm!330419 c!806728) b!4723630))

(assert (= (and bm!330419 (not c!806728)) b!4723629))

(assert (= (and d!1504285 res!1998585) b!4723634))

(assert (= (and d!1504285 (not res!1998586)) b!4723628))

(assert (= (and b!4723628 res!1998587) b!4723627))

(declare-fun m!5660437 () Bool)

(assert (=> b!4723635 m!5660437))

(declare-fun m!5660439 () Bool)

(assert (=> b!4723635 m!5660439))

(assert (=> b!4723635 m!5660439))

(declare-fun m!5660441 () Bool)

(assert (=> b!4723635 m!5660441))

(declare-fun m!5660443 () Bool)

(assert (=> b!4723635 m!5660443))

(declare-fun m!5660445 () Bool)

(assert (=> b!4723632 m!5660445))

(declare-fun m!5660447 () Bool)

(assert (=> b!4723632 m!5660447))

(assert (=> b!4723628 m!5660439))

(assert (=> b!4723628 m!5660439))

(assert (=> b!4723628 m!5660441))

(declare-fun m!5660449 () Bool)

(assert (=> b!4723629 m!5660449))

(declare-fun m!5660451 () Bool)

(assert (=> b!4723630 m!5660451))

(assert (=> b!4723634 m!5660449))

(assert (=> b!4723634 m!5660449))

(declare-fun m!5660453 () Bool)

(assert (=> b!4723634 m!5660453))

(assert (=> d!1504285 m!5660445))

(declare-fun m!5660455 () Bool)

(assert (=> bm!330419 m!5660455))

(assert (=> b!4723627 m!5660449))

(assert (=> b!4723627 m!5660449))

(assert (=> b!4723627 m!5660453))

(assert (=> b!4722947 d!1504285))

(declare-fun bs!1113496 () Bool)

(declare-fun b!4723638 () Bool)

(assert (= bs!1113496 (and b!4723638 d!1503873)))

(declare-fun lambda!215750 () Int)

(assert (=> bs!1113496 (not (= lambda!215750 lambda!215656))))

(declare-fun bs!1113498 () Bool)

(assert (= bs!1113498 (and b!4723638 b!4722971)))

(assert (=> bs!1113498 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215750 lambda!215666))))

(declare-fun bs!1113500 () Bool)

(assert (= bs!1113500 (and b!4723638 d!1504127)))

(assert (=> bs!1113500 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888077) (= lambda!215750 lambda!215715))))

(declare-fun bs!1113502 () Bool)

(assert (= bs!1113502 (and b!4723638 b!4723308)))

(assert (=> bs!1113502 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888322) (= lambda!215750 lambda!215700))))

(assert (=> bs!1113502 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215750 lambda!215698))))

(declare-fun bs!1113505 () Bool)

(assert (= bs!1113505 (and b!4723638 d!1503889)))

(assert (=> bs!1113505 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888078) (= lambda!215750 lambda!215665))))

(declare-fun bs!1113507 () Bool)

(assert (= bs!1113507 (and b!4723638 b!4723399)))

(assert (=> bs!1113507 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215750 lambda!215720))))

(declare-fun bs!1113509 () Bool)

(assert (= bs!1113509 (and b!4723638 b!4722949)))

(assert (=> bs!1113509 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215750 lambda!215658))))

(declare-fun bs!1113510 () Bool)

(assert (= bs!1113510 (and b!4723638 b!4722845)))

(assert (=> bs!1113510 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887947) (= lambda!215750 lambda!215640))))

(declare-fun bs!1113511 () Bool)

(assert (= bs!1113511 (and b!4723638 d!1503887)))

(assert (=> bs!1113511 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888057) (= lambda!215750 lambda!215661))))

(declare-fun bs!1113512 () Bool)

(assert (= bs!1113512 (and b!4723638 b!4723501)))

(assert (=> bs!1113512 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888504) (= lambda!215750 lambda!215740))))

(declare-fun bs!1113515 () Bool)

(assert (= bs!1113515 (and b!4723638 d!1504275)))

(assert (=> bs!1113515 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888056) (= lambda!215750 lambda!215747))))

(declare-fun bs!1113516 () Bool)

(assert (= bs!1113516 (and b!4723638 b!4722969)))

(assert (=> bs!1113516 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888110) (= lambda!215750 lambda!215668))))

(declare-fun bs!1113517 () Bool)

(assert (= bs!1113517 (and b!4723638 b!4723054)))

(assert (=> bs!1113517 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888168) (= lambda!215750 lambda!215677))))

(declare-fun bs!1113518 () Bool)

(assert (= bs!1113518 (and b!4723638 b!4723273)))

(assert (=> bs!1113518 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888294) (= lambda!215750 lambda!215691))))

(declare-fun bs!1113519 () Bool)

(assert (= bs!1113519 (and b!4723638 d!1504139)))

(assert (=> bs!1113519 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888442) (= lambda!215750 lambda!215724))))

(declare-fun bs!1113520 () Bool)

(assert (= bs!1113520 (and b!4723638 b!4722954)))

(assert (=> bs!1113520 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215750 lambda!215662))))

(declare-fun bs!1113521 () Bool)

(assert (= bs!1113521 (and b!4723638 b!4722952)))

(assert (=> bs!1113521 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215750 lambda!215663))))

(declare-fun bs!1113522 () Bool)

(assert (= bs!1113522 (and b!4723638 b!4723056)))

(assert (=> bs!1113522 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215750 lambda!215675))))

(declare-fun bs!1113523 () Bool)

(assert (= bs!1113523 (and b!4723638 b!4723443)))

(assert (=> bs!1113523 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888469) (= lambda!215750 lambda!215733))))

(declare-fun bs!1113524 () Bool)

(assert (= bs!1113524 (and b!4723638 b!4722978)))

(assert (=> bs!1113524 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215750 lambda!215670))))

(declare-fun bs!1113525 () Bool)

(assert (= bs!1113525 (and b!4723638 d!1503799)))

(assert (=> bs!1113525 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887948) (= lambda!215750 lambda!215641))))

(declare-fun bs!1113526 () Bool)

(assert (= bs!1113526 (and b!4723638 b!4723275)))

(assert (=> bs!1113526 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215750 lambda!215689))))

(declare-fun bs!1113527 () Bool)

(assert (= bs!1113527 (and b!4723638 b!4722947)))

(assert (=> bs!1113527 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888056) (= lambda!215750 lambda!215660))))

(declare-fun bs!1113528 () Bool)

(assert (= bs!1113528 (and b!4723638 d!1503911)))

(assert (=> bs!1113528 (not (= lambda!215750 lambda!215674))))

(assert (=> bs!1113510 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215750 lambda!215639))))

(declare-fun bs!1113529 () Bool)

(assert (= bs!1113529 (and b!4723638 b!4723310)))

(assert (=> bs!1113529 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215750 lambda!215697))))

(declare-fun bs!1113530 () Bool)

(assert (= bs!1113530 (and b!4723638 b!4722976)))

(assert (=> bs!1113530 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215750 lambda!215671))))

(assert (=> bs!1113527 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215750 lambda!215659))))

(assert (=> bs!1113521 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888077) (= lambda!215750 lambda!215664))))

(assert (=> bs!1113512 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215750 lambda!215738))))

(assert (=> bs!1113530 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888135) (= lambda!215750 lambda!215672))))

(declare-fun bs!1113531 () Bool)

(assert (= bs!1113531 (and b!4723638 b!4723401)))

(assert (=> bs!1113531 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215750 lambda!215718))))

(assert (=> bs!1113516 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215750 lambda!215667))))

(assert (=> bs!1113523 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215750 lambda!215732))))

(declare-fun bs!1113532 () Bool)

(assert (= bs!1113532 (and b!4723638 d!1503907)))

(assert (=> bs!1113532 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888136) (= lambda!215750 lambda!215673))))

(declare-fun bs!1113533 () Bool)

(assert (= bs!1113533 (and b!4723638 d!1504043)))

(assert (=> bs!1113533 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888295) (= lambda!215750 lambda!215695))))

(assert (=> bs!1113518 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215750 lambda!215690))))

(declare-fun bs!1113534 () Bool)

(assert (= bs!1113534 (and b!4723638 d!1503991)))

(assert (=> bs!1113534 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215750 lambda!215688))))

(declare-fun bs!1113535 () Bool)

(assert (= bs!1113535 (and b!4723638 d!1504161)))

(assert (=> bs!1113535 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888470) (= lambda!215750 lambda!215734))))

(declare-fun bs!1113536 () Bool)

(assert (= bs!1113536 (and b!4723638 d!1504211)))

(assert (=> bs!1113536 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888505) (= lambda!215750 lambda!215742))))

(assert (=> bs!1113517 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215750 lambda!215676))))

(declare-fun bs!1113537 () Bool)

(assert (= bs!1113537 (and b!4723638 d!1504245)))

(assert (=> bs!1113537 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887947) (= lambda!215750 lambda!215744))))

(declare-fun bs!1113539 () Bool)

(assert (= bs!1113539 (and b!4723638 d!1504085)))

(assert (=> bs!1113539 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888323) (= lambda!215750 lambda!215703))))

(declare-fun bs!1113541 () Bool)

(assert (= bs!1113541 (and b!4723638 d!1503963)))

(assert (=> bs!1113541 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888169) (= lambda!215750 lambda!215678))))

(declare-fun bs!1113543 () Bool)

(assert (= bs!1113543 (and b!4723638 b!4723445)))

(assert (=> bs!1113543 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215750 lambda!215731))))

(declare-fun bs!1113545 () Bool)

(assert (= bs!1113545 (and b!4723638 b!4723503)))

(assert (=> bs!1113545 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215750 lambda!215736))))

(declare-fun bs!1113547 () Bool)

(assert (= bs!1113547 (and b!4723638 b!4722847)))

(assert (=> bs!1113547 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215750 lambda!215638))))

(assert (=> bs!1113507 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888441) (= lambda!215750 lambda!215722))))

(declare-fun bs!1113549 () Bool)

(assert (= bs!1113549 (and b!4723638 d!1503899)))

(assert (=> bs!1113549 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888111) (= lambda!215750 lambda!215669))))

(assert (=> b!4723638 true))

(declare-fun bs!1113555 () Bool)

(declare-fun b!4723636 () Bool)

(assert (= bs!1113555 (and b!4723636 b!4723638)))

(declare-fun lambda!215752 () Int)

(assert (=> bs!1113555 (= lambda!215752 lambda!215750)))

(declare-fun bs!1113557 () Bool)

(assert (= bs!1113557 (and b!4723636 d!1503873)))

(assert (=> bs!1113557 (not (= lambda!215752 lambda!215656))))

(declare-fun bs!1113559 () Bool)

(assert (= bs!1113559 (and b!4723636 b!4722971)))

(assert (=> bs!1113559 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215752 lambda!215666))))

(declare-fun bs!1113561 () Bool)

(assert (= bs!1113561 (and b!4723636 d!1504127)))

(assert (=> bs!1113561 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888077) (= lambda!215752 lambda!215715))))

(declare-fun bs!1113563 () Bool)

(assert (= bs!1113563 (and b!4723636 b!4723308)))

(assert (=> bs!1113563 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888322) (= lambda!215752 lambda!215700))))

(assert (=> bs!1113563 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215752 lambda!215698))))

(declare-fun bs!1113565 () Bool)

(assert (= bs!1113565 (and b!4723636 d!1503889)))

(assert (=> bs!1113565 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888078) (= lambda!215752 lambda!215665))))

(declare-fun bs!1113567 () Bool)

(assert (= bs!1113567 (and b!4723636 b!4723399)))

(assert (=> bs!1113567 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215752 lambda!215720))))

(declare-fun bs!1113569 () Bool)

(assert (= bs!1113569 (and b!4723636 b!4722949)))

(assert (=> bs!1113569 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215752 lambda!215658))))

(declare-fun bs!1113570 () Bool)

(assert (= bs!1113570 (and b!4723636 b!4722845)))

(assert (=> bs!1113570 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887947) (= lambda!215752 lambda!215640))))

(declare-fun bs!1113572 () Bool)

(assert (= bs!1113572 (and b!4723636 d!1503887)))

(assert (=> bs!1113572 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888057) (= lambda!215752 lambda!215661))))

(declare-fun bs!1113574 () Bool)

(assert (= bs!1113574 (and b!4723636 b!4723501)))

(assert (=> bs!1113574 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888504) (= lambda!215752 lambda!215740))))

(declare-fun bs!1113576 () Bool)

(assert (= bs!1113576 (and b!4723636 d!1504275)))

(assert (=> bs!1113576 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888056) (= lambda!215752 lambda!215747))))

(declare-fun bs!1113578 () Bool)

(assert (= bs!1113578 (and b!4723636 b!4722969)))

(assert (=> bs!1113578 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888110) (= lambda!215752 lambda!215668))))

(declare-fun bs!1113580 () Bool)

(assert (= bs!1113580 (and b!4723636 b!4723054)))

(assert (=> bs!1113580 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888168) (= lambda!215752 lambda!215677))))

(declare-fun bs!1113581 () Bool)

(assert (= bs!1113581 (and b!4723636 b!4723273)))

(assert (=> bs!1113581 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888294) (= lambda!215752 lambda!215691))))

(declare-fun bs!1113583 () Bool)

(assert (= bs!1113583 (and b!4723636 d!1504139)))

(assert (=> bs!1113583 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888442) (= lambda!215752 lambda!215724))))

(declare-fun bs!1113585 () Bool)

(assert (= bs!1113585 (and b!4723636 b!4722954)))

(assert (=> bs!1113585 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215752 lambda!215662))))

(declare-fun bs!1113587 () Bool)

(assert (= bs!1113587 (and b!4723636 b!4722952)))

(assert (=> bs!1113587 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215752 lambda!215663))))

(declare-fun bs!1113589 () Bool)

(assert (= bs!1113589 (and b!4723636 b!4723056)))

(assert (=> bs!1113589 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215752 lambda!215675))))

(declare-fun bs!1113591 () Bool)

(assert (= bs!1113591 (and b!4723636 b!4723443)))

(assert (=> bs!1113591 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888469) (= lambda!215752 lambda!215733))))

(declare-fun bs!1113593 () Bool)

(assert (= bs!1113593 (and b!4723636 b!4722978)))

(assert (=> bs!1113593 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215752 lambda!215670))))

(declare-fun bs!1113595 () Bool)

(assert (= bs!1113595 (and b!4723636 d!1503799)))

(assert (=> bs!1113595 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887948) (= lambda!215752 lambda!215641))))

(declare-fun bs!1113596 () Bool)

(assert (= bs!1113596 (and b!4723636 b!4723275)))

(assert (=> bs!1113596 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215752 lambda!215689))))

(declare-fun bs!1113597 () Bool)

(assert (= bs!1113597 (and b!4723636 b!4722947)))

(assert (=> bs!1113597 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888056) (= lambda!215752 lambda!215660))))

(declare-fun bs!1113599 () Bool)

(assert (= bs!1113599 (and b!4723636 d!1503911)))

(assert (=> bs!1113599 (not (= lambda!215752 lambda!215674))))

(assert (=> bs!1113570 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215752 lambda!215639))))

(declare-fun bs!1113601 () Bool)

(assert (= bs!1113601 (and b!4723636 b!4723310)))

(assert (=> bs!1113601 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215752 lambda!215697))))

(declare-fun bs!1113602 () Bool)

(assert (= bs!1113602 (and b!4723636 b!4722976)))

(assert (=> bs!1113602 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215752 lambda!215671))))

(assert (=> bs!1113597 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215752 lambda!215659))))

(assert (=> bs!1113587 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888077) (= lambda!215752 lambda!215664))))

(assert (=> bs!1113574 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215752 lambda!215738))))

(assert (=> bs!1113602 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888135) (= lambda!215752 lambda!215672))))

(declare-fun bs!1113605 () Bool)

(assert (= bs!1113605 (and b!4723636 b!4723401)))

(assert (=> bs!1113605 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215752 lambda!215718))))

(assert (=> bs!1113578 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215752 lambda!215667))))

(assert (=> bs!1113591 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215752 lambda!215732))))

(declare-fun bs!1113608 () Bool)

(assert (= bs!1113608 (and b!4723636 d!1503907)))

(assert (=> bs!1113608 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888136) (= lambda!215752 lambda!215673))))

(declare-fun bs!1113610 () Bool)

(assert (= bs!1113610 (and b!4723636 d!1504043)))

(assert (=> bs!1113610 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888295) (= lambda!215752 lambda!215695))))

(assert (=> bs!1113581 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215752 lambda!215690))))

(declare-fun bs!1113613 () Bool)

(assert (= bs!1113613 (and b!4723636 d!1503991)))

(assert (=> bs!1113613 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215752 lambda!215688))))

(declare-fun bs!1113615 () Bool)

(assert (= bs!1113615 (and b!4723636 d!1504161)))

(assert (=> bs!1113615 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888470) (= lambda!215752 lambda!215734))))

(declare-fun bs!1113617 () Bool)

(assert (= bs!1113617 (and b!4723636 d!1504211)))

(assert (=> bs!1113617 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888505) (= lambda!215752 lambda!215742))))

(assert (=> bs!1113580 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215752 lambda!215676))))

(declare-fun bs!1113619 () Bool)

(assert (= bs!1113619 (and b!4723636 d!1504245)))

(assert (=> bs!1113619 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887947) (= lambda!215752 lambda!215744))))

(declare-fun bs!1113621 () Bool)

(assert (= bs!1113621 (and b!4723636 d!1504085)))

(assert (=> bs!1113621 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888323) (= lambda!215752 lambda!215703))))

(declare-fun bs!1113623 () Bool)

(assert (= bs!1113623 (and b!4723636 d!1503963)))

(assert (=> bs!1113623 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888169) (= lambda!215752 lambda!215678))))

(declare-fun bs!1113625 () Bool)

(assert (= bs!1113625 (and b!4723636 b!4723445)))

(assert (=> bs!1113625 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215752 lambda!215731))))

(declare-fun bs!1113627 () Bool)

(assert (= bs!1113627 (and b!4723636 b!4723503)))

(assert (=> bs!1113627 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215752 lambda!215736))))

(declare-fun bs!1113629 () Bool)

(assert (= bs!1113629 (and b!4723636 b!4722847)))

(assert (=> bs!1113629 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1887727) (= lambda!215752 lambda!215638))))

(assert (=> bs!1113567 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888441) (= lambda!215752 lambda!215722))))

(declare-fun bs!1113632 () Bool)

(assert (= bs!1113632 (and b!4723636 d!1503899)))

(assert (=> bs!1113632 (= (= (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888111) (= lambda!215752 lambda!215669))))

(assert (=> b!4723636 true))

(declare-fun lambda!215754 () Int)

(declare-fun lt!1888645 () ListMap!5281)

(assert (=> bs!1113555 (= (= lt!1888645 (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215754 lambda!215750))))

(assert (=> b!4723636 (= (= lt!1888645 (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215754 lambda!215752))))

(assert (=> bs!1113557 (not (= lambda!215754 lambda!215656))))

(assert (=> bs!1113559 (= (= lt!1888645 lt!1887727) (= lambda!215754 lambda!215666))))

(assert (=> bs!1113561 (= (= lt!1888645 lt!1888077) (= lambda!215754 lambda!215715))))

(assert (=> bs!1113563 (= (= lt!1888645 lt!1888322) (= lambda!215754 lambda!215700))))

(assert (=> bs!1113563 (= (= lt!1888645 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215754 lambda!215698))))

(assert (=> bs!1113565 (= (= lt!1888645 lt!1888078) (= lambda!215754 lambda!215665))))

(assert (=> bs!1113567 (= (= lt!1888645 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215754 lambda!215720))))

(assert (=> bs!1113569 (= (= lt!1888645 lt!1887727) (= lambda!215754 lambda!215658))))

(assert (=> bs!1113570 (= (= lt!1888645 lt!1887947) (= lambda!215754 lambda!215640))))

(assert (=> bs!1113572 (= (= lt!1888645 lt!1888057) (= lambda!215754 lambda!215661))))

(assert (=> bs!1113574 (= (= lt!1888645 lt!1888504) (= lambda!215754 lambda!215740))))

(assert (=> bs!1113576 (= (= lt!1888645 lt!1888056) (= lambda!215754 lambda!215747))))

(assert (=> bs!1113578 (= (= lt!1888645 lt!1888110) (= lambda!215754 lambda!215668))))

(assert (=> bs!1113580 (= (= lt!1888645 lt!1888168) (= lambda!215754 lambda!215677))))

(assert (=> bs!1113581 (= (= lt!1888645 lt!1888294) (= lambda!215754 lambda!215691))))

(assert (=> bs!1113583 (= (= lt!1888645 lt!1888442) (= lambda!215754 lambda!215724))))

(assert (=> bs!1113585 (= (= lt!1888645 lt!1887727) (= lambda!215754 lambda!215662))))

(assert (=> bs!1113587 (= (= lt!1888645 lt!1887727) (= lambda!215754 lambda!215663))))

(assert (=> bs!1113589 (= (= lt!1888645 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215754 lambda!215675))))

(assert (=> bs!1113591 (= (= lt!1888645 lt!1888469) (= lambda!215754 lambda!215733))))

(assert (=> bs!1113593 (= (= lt!1888645 lt!1887727) (= lambda!215754 lambda!215670))))

(assert (=> bs!1113595 (= (= lt!1888645 lt!1887948) (= lambda!215754 lambda!215641))))

(assert (=> bs!1113596 (= (= lt!1888645 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215754 lambda!215689))))

(assert (=> bs!1113597 (= (= lt!1888645 lt!1888056) (= lambda!215754 lambda!215660))))

(assert (=> bs!1113599 (not (= lambda!215754 lambda!215674))))

(assert (=> bs!1113570 (= (= lt!1888645 lt!1887727) (= lambda!215754 lambda!215639))))

(assert (=> bs!1113601 (= (= lt!1888645 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215754 lambda!215697))))

(assert (=> bs!1113602 (= (= lt!1888645 lt!1887727) (= lambda!215754 lambda!215671))))

(assert (=> bs!1113597 (= (= lt!1888645 lt!1887727) (= lambda!215754 lambda!215659))))

(assert (=> bs!1113587 (= (= lt!1888645 lt!1888077) (= lambda!215754 lambda!215664))))

(assert (=> bs!1113574 (= (= lt!1888645 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215754 lambda!215738))))

(assert (=> bs!1113602 (= (= lt!1888645 lt!1888135) (= lambda!215754 lambda!215672))))

(assert (=> bs!1113605 (= (= lt!1888645 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215754 lambda!215718))))

(assert (=> bs!1113578 (= (= lt!1888645 lt!1887727) (= lambda!215754 lambda!215667))))

(assert (=> bs!1113591 (= (= lt!1888645 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215754 lambda!215732))))

(assert (=> bs!1113608 (= (= lt!1888645 lt!1888136) (= lambda!215754 lambda!215673))))

(assert (=> bs!1113610 (= (= lt!1888645 lt!1888295) (= lambda!215754 lambda!215695))))

(assert (=> bs!1113581 (= (= lt!1888645 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215754 lambda!215690))))

(assert (=> bs!1113613 (= (= lt!1888645 lt!1887727) (= lambda!215754 lambda!215688))))

(assert (=> bs!1113615 (= (= lt!1888645 lt!1888470) (= lambda!215754 lambda!215734))))

(assert (=> bs!1113617 (= (= lt!1888645 lt!1888505) (= lambda!215754 lambda!215742))))

(assert (=> bs!1113580 (= (= lt!1888645 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215754 lambda!215676))))

(assert (=> bs!1113619 (= (= lt!1888645 lt!1887947) (= lambda!215754 lambda!215744))))

(assert (=> bs!1113621 (= (= lt!1888645 lt!1888323) (= lambda!215754 lambda!215703))))

(assert (=> bs!1113623 (= (= lt!1888645 lt!1888169) (= lambda!215754 lambda!215678))))

(assert (=> bs!1113625 (= (= lt!1888645 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215754 lambda!215731))))

(assert (=> bs!1113627 (= (= lt!1888645 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215754 lambda!215736))))

(assert (=> bs!1113629 (= (= lt!1888645 lt!1887727) (= lambda!215754 lambda!215638))))

(assert (=> bs!1113567 (= (= lt!1888645 lt!1888441) (= lambda!215754 lambda!215722))))

(assert (=> bs!1113632 (= (= lt!1888645 lt!1888111) (= lambda!215754 lambda!215669))))

(assert (=> b!4723636 true))

(declare-fun bs!1113649 () Bool)

(declare-fun d!1504287 () Bool)

(assert (= bs!1113649 (and d!1504287 b!4723638)))

(declare-fun lt!1888646 () ListMap!5281)

(declare-fun lambda!215756 () Int)

(assert (=> bs!1113649 (= (= lt!1888646 (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215756 lambda!215750))))

(declare-fun bs!1113650 () Bool)

(assert (= bs!1113650 (and d!1504287 b!4723636)))

(assert (=> bs!1113650 (= (= lt!1888646 (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215756 lambda!215752))))

(declare-fun bs!1113651 () Bool)

(assert (= bs!1113651 (and d!1504287 d!1503873)))

(assert (=> bs!1113651 (not (= lambda!215756 lambda!215656))))

(declare-fun bs!1113652 () Bool)

(assert (= bs!1113652 (and d!1504287 d!1504127)))

(assert (=> bs!1113652 (= (= lt!1888646 lt!1888077) (= lambda!215756 lambda!215715))))

(declare-fun bs!1113653 () Bool)

(assert (= bs!1113653 (and d!1504287 b!4723308)))

(assert (=> bs!1113653 (= (= lt!1888646 lt!1888322) (= lambda!215756 lambda!215700))))

(assert (=> bs!1113653 (= (= lt!1888646 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215756 lambda!215698))))

(declare-fun bs!1113654 () Bool)

(assert (= bs!1113654 (and d!1504287 d!1503889)))

(assert (=> bs!1113654 (= (= lt!1888646 lt!1888078) (= lambda!215756 lambda!215665))))

(declare-fun bs!1113655 () Bool)

(assert (= bs!1113655 (and d!1504287 b!4723399)))

(assert (=> bs!1113655 (= (= lt!1888646 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215756 lambda!215720))))

(declare-fun bs!1113656 () Bool)

(assert (= bs!1113656 (and d!1504287 b!4722949)))

(assert (=> bs!1113656 (= (= lt!1888646 lt!1887727) (= lambda!215756 lambda!215658))))

(declare-fun bs!1113657 () Bool)

(assert (= bs!1113657 (and d!1504287 b!4722845)))

(assert (=> bs!1113657 (= (= lt!1888646 lt!1887947) (= lambda!215756 lambda!215640))))

(declare-fun bs!1113658 () Bool)

(assert (= bs!1113658 (and d!1504287 d!1503887)))

(assert (=> bs!1113658 (= (= lt!1888646 lt!1888057) (= lambda!215756 lambda!215661))))

(declare-fun bs!1113659 () Bool)

(assert (= bs!1113659 (and d!1504287 b!4723501)))

(assert (=> bs!1113659 (= (= lt!1888646 lt!1888504) (= lambda!215756 lambda!215740))))

(declare-fun bs!1113660 () Bool)

(assert (= bs!1113660 (and d!1504287 d!1504275)))

(assert (=> bs!1113660 (= (= lt!1888646 lt!1888056) (= lambda!215756 lambda!215747))))

(declare-fun bs!1113661 () Bool)

(assert (= bs!1113661 (and d!1504287 b!4722969)))

(assert (=> bs!1113661 (= (= lt!1888646 lt!1888110) (= lambda!215756 lambda!215668))))

(declare-fun bs!1113662 () Bool)

(assert (= bs!1113662 (and d!1504287 b!4723054)))

(assert (=> bs!1113662 (= (= lt!1888646 lt!1888168) (= lambda!215756 lambda!215677))))

(declare-fun bs!1113664 () Bool)

(assert (= bs!1113664 (and d!1504287 b!4723273)))

(assert (=> bs!1113664 (= (= lt!1888646 lt!1888294) (= lambda!215756 lambda!215691))))

(declare-fun bs!1113665 () Bool)

(assert (= bs!1113665 (and d!1504287 d!1504139)))

(assert (=> bs!1113665 (= (= lt!1888646 lt!1888442) (= lambda!215756 lambda!215724))))

(declare-fun bs!1113667 () Bool)

(assert (= bs!1113667 (and d!1504287 b!4722954)))

(assert (=> bs!1113667 (= (= lt!1888646 lt!1887727) (= lambda!215756 lambda!215662))))

(declare-fun bs!1113669 () Bool)

(assert (= bs!1113669 (and d!1504287 b!4722952)))

(assert (=> bs!1113669 (= (= lt!1888646 lt!1887727) (= lambda!215756 lambda!215663))))

(declare-fun bs!1113671 () Bool)

(assert (= bs!1113671 (and d!1504287 b!4723056)))

(assert (=> bs!1113671 (= (= lt!1888646 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215756 lambda!215675))))

(declare-fun bs!1113673 () Bool)

(assert (= bs!1113673 (and d!1504287 b!4723443)))

(assert (=> bs!1113673 (= (= lt!1888646 lt!1888469) (= lambda!215756 lambda!215733))))

(declare-fun bs!1113675 () Bool)

(assert (= bs!1113675 (and d!1504287 b!4722978)))

(assert (=> bs!1113675 (= (= lt!1888646 lt!1887727) (= lambda!215756 lambda!215670))))

(declare-fun bs!1113676 () Bool)

(assert (= bs!1113676 (and d!1504287 d!1503799)))

(assert (=> bs!1113676 (= (= lt!1888646 lt!1887948) (= lambda!215756 lambda!215641))))

(declare-fun bs!1113678 () Bool)

(assert (= bs!1113678 (and d!1504287 b!4723275)))

(assert (=> bs!1113678 (= (= lt!1888646 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215756 lambda!215689))))

(declare-fun bs!1113680 () Bool)

(assert (= bs!1113680 (and d!1504287 b!4722947)))

(assert (=> bs!1113680 (= (= lt!1888646 lt!1888056) (= lambda!215756 lambda!215660))))

(declare-fun bs!1113681 () Bool)

(assert (= bs!1113681 (and d!1504287 d!1503911)))

(assert (=> bs!1113681 (not (= lambda!215756 lambda!215674))))

(assert (=> bs!1113657 (= (= lt!1888646 lt!1887727) (= lambda!215756 lambda!215639))))

(declare-fun bs!1113684 () Bool)

(assert (= bs!1113684 (and d!1504287 b!4723310)))

(assert (=> bs!1113684 (= (= lt!1888646 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215756 lambda!215697))))

(declare-fun bs!1113686 () Bool)

(assert (= bs!1113686 (and d!1504287 b!4722976)))

(assert (=> bs!1113686 (= (= lt!1888646 lt!1887727) (= lambda!215756 lambda!215671))))

(assert (=> bs!1113680 (= (= lt!1888646 lt!1887727) (= lambda!215756 lambda!215659))))

(assert (=> bs!1113669 (= (= lt!1888646 lt!1888077) (= lambda!215756 lambda!215664))))

(assert (=> bs!1113659 (= (= lt!1888646 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215756 lambda!215738))))

(assert (=> bs!1113686 (= (= lt!1888646 lt!1888135) (= lambda!215756 lambda!215672))))

(declare-fun bs!1113692 () Bool)

(assert (= bs!1113692 (and d!1504287 b!4723401)))

(assert (=> bs!1113692 (= (= lt!1888646 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215756 lambda!215718))))

(assert (=> bs!1113661 (= (= lt!1888646 lt!1887727) (= lambda!215756 lambda!215667))))

(assert (=> bs!1113673 (= (= lt!1888646 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215756 lambda!215732))))

(declare-fun bs!1113695 () Bool)

(assert (= bs!1113695 (and d!1504287 d!1503907)))

(assert (=> bs!1113695 (= (= lt!1888646 lt!1888136) (= lambda!215756 lambda!215673))))

(declare-fun bs!1113697 () Bool)

(assert (= bs!1113697 (and d!1504287 d!1504043)))

(assert (=> bs!1113697 (= (= lt!1888646 lt!1888295) (= lambda!215756 lambda!215695))))

(assert (=> bs!1113664 (= (= lt!1888646 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215756 lambda!215690))))

(declare-fun bs!1113700 () Bool)

(assert (= bs!1113700 (and d!1504287 d!1503991)))

(assert (=> bs!1113700 (= (= lt!1888646 lt!1887727) (= lambda!215756 lambda!215688))))

(declare-fun bs!1113701 () Bool)

(assert (= bs!1113701 (and d!1504287 d!1504161)))

(assert (=> bs!1113701 (= (= lt!1888646 lt!1888470) (= lambda!215756 lambda!215734))))

(declare-fun bs!1113703 () Bool)

(assert (= bs!1113703 (and d!1504287 d!1504211)))

(assert (=> bs!1113703 (= (= lt!1888646 lt!1888505) (= lambda!215756 lambda!215742))))

(assert (=> bs!1113662 (= (= lt!1888646 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215756 lambda!215676))))

(declare-fun bs!1113705 () Bool)

(assert (= bs!1113705 (and d!1504287 d!1504245)))

(assert (=> bs!1113705 (= (= lt!1888646 lt!1887947) (= lambda!215756 lambda!215744))))

(declare-fun bs!1113707 () Bool)

(assert (= bs!1113707 (and d!1504287 b!4722971)))

(assert (=> bs!1113707 (= (= lt!1888646 lt!1887727) (= lambda!215756 lambda!215666))))

(assert (=> bs!1113650 (= (= lt!1888646 lt!1888645) (= lambda!215756 lambda!215754))))

(declare-fun bs!1113708 () Bool)

(assert (= bs!1113708 (and d!1504287 d!1504085)))

(assert (=> bs!1113708 (= (= lt!1888646 lt!1888323) (= lambda!215756 lambda!215703))))

(declare-fun bs!1113710 () Bool)

(assert (= bs!1113710 (and d!1504287 d!1503963)))

(assert (=> bs!1113710 (= (= lt!1888646 lt!1888169) (= lambda!215756 lambda!215678))))

(declare-fun bs!1113712 () Bool)

(assert (= bs!1113712 (and d!1504287 b!4723445)))

(assert (=> bs!1113712 (= (= lt!1888646 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215756 lambda!215731))))

(declare-fun bs!1113714 () Bool)

(assert (= bs!1113714 (and d!1504287 b!4723503)))

(assert (=> bs!1113714 (= (= lt!1888646 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215756 lambda!215736))))

(declare-fun bs!1113716 () Bool)

(assert (= bs!1113716 (and d!1504287 b!4722847)))

(assert (=> bs!1113716 (= (= lt!1888646 lt!1887727) (= lambda!215756 lambda!215638))))

(assert (=> bs!1113655 (= (= lt!1888646 lt!1888441) (= lambda!215756 lambda!215722))))

(declare-fun bs!1113719 () Bool)

(assert (= bs!1113719 (and d!1504287 d!1503899)))

(assert (=> bs!1113719 (= (= lt!1888646 lt!1888111) (= lambda!215756 lambda!215669))))

(assert (=> d!1504287 true))

(declare-fun c!806730 () Bool)

(declare-fun call!330426 () Bool)

(declare-fun bm!330420 () Bool)

(assert (=> bm!330420 (= call!330426 (forall!11590 (ite c!806730 (toList!5917 (+!2269 lt!1887727 (h!59177 newBucket!218))) (t!360220 newBucket!218)) (ite c!806730 lambda!215750 lambda!215754)))))

(declare-fun e!2946022 () ListMap!5281)

(assert (=> b!4723636 (= e!2946022 lt!1888645)))

(declare-fun lt!1888640 () ListMap!5281)

(assert (=> b!4723636 (= lt!1888640 (+!2269 (+!2269 lt!1887727 (h!59177 newBucket!218)) (h!59177 (t!360220 newBucket!218))))))

(assert (=> b!4723636 (= lt!1888645 (addToMapMapFromBucket!1444 (t!360220 (t!360220 newBucket!218)) (+!2269 (+!2269 lt!1887727 (h!59177 newBucket!218)) (h!59177 (t!360220 newBucket!218)))))))

(declare-fun lt!1888655 () Unit!130119)

(declare-fun call!330427 () Unit!130119)

(assert (=> b!4723636 (= lt!1888655 call!330427)))

(assert (=> b!4723636 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 newBucket!218))) lambda!215752)))

(declare-fun lt!1888643 () Unit!130119)

(assert (=> b!4723636 (= lt!1888643 lt!1888655)))

(assert (=> b!4723636 (forall!11590 (toList!5917 lt!1888640) lambda!215754)))

(declare-fun lt!1888641 () Unit!130119)

(declare-fun Unit!130394 () Unit!130119)

(assert (=> b!4723636 (= lt!1888641 Unit!130394)))

(assert (=> b!4723636 (forall!11590 (t!360220 (t!360220 newBucket!218)) lambda!215754)))

(declare-fun lt!1888639 () Unit!130119)

(declare-fun Unit!130395 () Unit!130119)

(assert (=> b!4723636 (= lt!1888639 Unit!130395)))

(declare-fun lt!1888650 () Unit!130119)

(declare-fun Unit!130396 () Unit!130119)

(assert (=> b!4723636 (= lt!1888650 Unit!130396)))

(declare-fun lt!1888653 () Unit!130119)

(assert (=> b!4723636 (= lt!1888653 (forallContained!3639 (toList!5917 lt!1888640) lambda!215754 (h!59177 (t!360220 newBucket!218))))))

(assert (=> b!4723636 (contains!16175 lt!1888640 (_1!30519 (h!59177 (t!360220 newBucket!218))))))

(declare-fun lt!1888656 () Unit!130119)

(declare-fun Unit!130397 () Unit!130119)

(assert (=> b!4723636 (= lt!1888656 Unit!130397)))

(assert (=> b!4723636 (contains!16175 lt!1888645 (_1!30519 (h!59177 (t!360220 newBucket!218))))))

(declare-fun lt!1888649 () Unit!130119)

(declare-fun Unit!130398 () Unit!130119)

(assert (=> b!4723636 (= lt!1888649 Unit!130398)))

(assert (=> b!4723636 call!330426))

(declare-fun lt!1888637 () Unit!130119)

(declare-fun Unit!130399 () Unit!130119)

(assert (=> b!4723636 (= lt!1888637 Unit!130399)))

(assert (=> b!4723636 (forall!11590 (toList!5917 lt!1888640) lambda!215754)))

(declare-fun lt!1888636 () Unit!130119)

(declare-fun Unit!130400 () Unit!130119)

(assert (=> b!4723636 (= lt!1888636 Unit!130400)))

(declare-fun lt!1888647 () Unit!130119)

(declare-fun Unit!130401 () Unit!130119)

(assert (=> b!4723636 (= lt!1888647 Unit!130401)))

(declare-fun lt!1888638 () Unit!130119)

(assert (=> b!4723636 (= lt!1888638 (addForallContainsKeyThenBeforeAdding!796 (+!2269 lt!1887727 (h!59177 newBucket!218)) lt!1888645 (_1!30519 (h!59177 (t!360220 newBucket!218))) (_2!30519 (h!59177 (t!360220 newBucket!218)))))))

(assert (=> b!4723636 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 newBucket!218))) lambda!215754)))

(declare-fun lt!1888651 () Unit!130119)

(assert (=> b!4723636 (= lt!1888651 lt!1888638)))

(declare-fun call!330425 () Bool)

(assert (=> b!4723636 call!330425))

(declare-fun lt!1888642 () Unit!130119)

(declare-fun Unit!130402 () Unit!130119)

(assert (=> b!4723636 (= lt!1888642 Unit!130402)))

(declare-fun res!1998588 () Bool)

(assert (=> b!4723636 (= res!1998588 (forall!11590 (t!360220 newBucket!218) lambda!215754))))

(declare-fun e!2946024 () Bool)

(assert (=> b!4723636 (=> (not res!1998588) (not e!2946024))))

(assert (=> b!4723636 e!2946024))

(declare-fun lt!1888648 () Unit!130119)

(declare-fun Unit!130403 () Unit!130119)

(assert (=> b!4723636 (= lt!1888648 Unit!130403)))

(declare-fun e!2946023 () Bool)

(assert (=> d!1504287 e!2946023))

(declare-fun res!1998590 () Bool)

(assert (=> d!1504287 (=> (not res!1998590) (not e!2946023))))

(assert (=> d!1504287 (= res!1998590 (forall!11590 (t!360220 newBucket!218) lambda!215756))))

(assert (=> d!1504287 (= lt!1888646 e!2946022)))

(assert (=> d!1504287 (= c!806730 ((_ is Nil!52830) (t!360220 newBucket!218)))))

(assert (=> d!1504287 (noDuplicateKeys!2014 (t!360220 newBucket!218))))

(assert (=> d!1504287 (= (addToMapMapFromBucket!1444 (t!360220 newBucket!218) (+!2269 lt!1887727 (h!59177 newBucket!218))) lt!1888646)))

(declare-fun b!4723637 () Bool)

(assert (=> b!4723637 (= e!2946024 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 newBucket!218))) lambda!215754))))

(assert (=> b!4723638 (= e!2946022 (+!2269 lt!1887727 (h!59177 newBucket!218)))))

(declare-fun lt!1888644 () Unit!130119)

(assert (=> b!4723638 (= lt!1888644 call!330427)))

(assert (=> b!4723638 call!330426))

(declare-fun lt!1888654 () Unit!130119)

(assert (=> b!4723638 (= lt!1888654 lt!1888644)))

(assert (=> b!4723638 call!330425))

(declare-fun lt!1888652 () Unit!130119)

(declare-fun Unit!130404 () Unit!130119)

(assert (=> b!4723638 (= lt!1888652 Unit!130404)))

(declare-fun b!4723639 () Bool)

(assert (=> b!4723639 (= e!2946023 (invariantList!1511 (toList!5917 lt!1888646)))))

(declare-fun b!4723640 () Bool)

(declare-fun res!1998589 () Bool)

(assert (=> b!4723640 (=> (not res!1998589) (not e!2946023))))

(assert (=> b!4723640 (= res!1998589 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 newBucket!218))) lambda!215756))))

(declare-fun bm!330421 () Bool)

(assert (=> bm!330421 (= call!330425 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 newBucket!218))) (ite c!806730 lambda!215750 lambda!215754)))))

(declare-fun bm!330422 () Bool)

(assert (=> bm!330422 (= call!330427 (lemmaContainsAllItsOwnKeys!797 (+!2269 lt!1887727 (h!59177 newBucket!218))))))

(assert (= (and d!1504287 c!806730) b!4723638))

(assert (= (and d!1504287 (not c!806730)) b!4723636))

(assert (= (and b!4723636 res!1998588) b!4723637))

(assert (= (or b!4723638 b!4723636) bm!330422))

(assert (= (or b!4723638 b!4723636) bm!330421))

(assert (= (or b!4723638 b!4723636) bm!330420))

(assert (= (and d!1504287 res!1998590) b!4723640))

(assert (= (and b!4723640 res!1998589) b!4723639))

(declare-fun m!5660499 () Bool)

(assert (=> bm!330421 m!5660499))

(assert (=> bm!330422 m!5658945))

(declare-fun m!5660501 () Bool)

(assert (=> bm!330422 m!5660501))

(declare-fun m!5660503 () Bool)

(assert (=> b!4723639 m!5660503))

(declare-fun m!5660505 () Bool)

(assert (=> d!1504287 m!5660505))

(assert (=> d!1504287 m!5659101))

(declare-fun m!5660507 () Bool)

(assert (=> b!4723640 m!5660507))

(declare-fun m!5660509 () Bool)

(assert (=> bm!330420 m!5660509))

(declare-fun m!5660511 () Bool)

(assert (=> b!4723636 m!5660511))

(declare-fun m!5660513 () Bool)

(assert (=> b!4723636 m!5660513))

(declare-fun m!5660515 () Bool)

(assert (=> b!4723636 m!5660515))

(declare-fun m!5660519 () Bool)

(assert (=> b!4723636 m!5660519))

(assert (=> b!4723636 m!5658945))

(declare-fun m!5660523 () Bool)

(assert (=> b!4723636 m!5660523))

(declare-fun m!5660527 () Bool)

(assert (=> b!4723636 m!5660527))

(declare-fun m!5660531 () Bool)

(assert (=> b!4723636 m!5660531))

(declare-fun m!5660535 () Bool)

(assert (=> b!4723636 m!5660535))

(declare-fun m!5660539 () Bool)

(assert (=> b!4723636 m!5660539))

(assert (=> b!4723636 m!5660519))

(assert (=> b!4723636 m!5658945))

(assert (=> b!4723636 m!5660527))

(declare-fun m!5660543 () Bool)

(assert (=> b!4723636 m!5660543))

(declare-fun m!5660547 () Bool)

(assert (=> b!4723636 m!5660547))

(assert (=> b!4723637 m!5660513))

(assert (=> b!4722947 d!1504287))

(declare-fun d!1504295 () Bool)

(assert (=> d!1504295 (dynLambda!21821 lambda!215660 (h!59177 newBucket!218))))

(declare-fun lt!1888678 () Unit!130119)

(assert (=> d!1504295 (= lt!1888678 (choose!33336 (toList!5917 lt!1888051) lambda!215660 (h!59177 newBucket!218)))))

(declare-fun e!2946032 () Bool)

(assert (=> d!1504295 e!2946032))

(declare-fun res!1998598 () Bool)

(assert (=> d!1504295 (=> (not res!1998598) (not e!2946032))))

(assert (=> d!1504295 (= res!1998598 (forall!11590 (toList!5917 lt!1888051) lambda!215660))))

(assert (=> d!1504295 (= (forallContained!3639 (toList!5917 lt!1888051) lambda!215660 (h!59177 newBucket!218)) lt!1888678)))

(declare-fun b!4723650 () Bool)

(assert (=> b!4723650 (= e!2946032 (contains!16180 (toList!5917 lt!1888051) (h!59177 newBucket!218)))))

(assert (= (and d!1504295 res!1998598) b!4723650))

(declare-fun b_lambda!178903 () Bool)

(assert (=> (not b_lambda!178903) (not d!1504295)))

(assert (=> d!1504295 m!5660411))

(declare-fun m!5660567 () Bool)

(assert (=> d!1504295 m!5660567))

(assert (=> d!1504295 m!5658941))

(declare-fun m!5660569 () Bool)

(assert (=> b!4723650 m!5660569))

(assert (=> b!4722947 d!1504295))

(declare-fun d!1504299 () Bool)

(assert (=> d!1504299 (= (invariantList!1511 (toList!5917 lt!1888043)) (noDuplicatedKeys!374 (toList!5917 lt!1888043)))))

(declare-fun bs!1113724 () Bool)

(assert (= bs!1113724 d!1504299))

(declare-fun m!5660571 () Bool)

(assert (=> bs!1113724 m!5660571))

(assert (=> d!1503871 d!1504299))

(declare-fun d!1504301 () Bool)

(declare-fun res!1998602 () Bool)

(declare-fun e!2946039 () Bool)

(assert (=> d!1504301 (=> res!1998602 e!2946039)))

(assert (=> d!1504301 (= res!1998602 ((_ is Nil!52831) (toList!5918 lm!2023)))))

(assert (=> d!1504301 (= (forall!11588 (toList!5918 lm!2023) lambda!215653) e!2946039)))

(declare-fun b!4723660 () Bool)

(declare-fun e!2946040 () Bool)

(assert (=> b!4723660 (= e!2946039 e!2946040)))

(declare-fun res!1998603 () Bool)

(assert (=> b!4723660 (=> (not res!1998603) (not e!2946040))))

(assert (=> b!4723660 (= res!1998603 (dynLambda!21820 lambda!215653 (h!59178 (toList!5918 lm!2023))))))

(declare-fun b!4723661 () Bool)

(assert (=> b!4723661 (= e!2946040 (forall!11588 (t!360221 (toList!5918 lm!2023)) lambda!215653))))

(assert (= (and d!1504301 (not res!1998602)) b!4723660))

(assert (= (and b!4723660 res!1998603) b!4723661))

(declare-fun b_lambda!178905 () Bool)

(assert (=> (not b_lambda!178905) (not b!4723660)))

(declare-fun m!5660573 () Bool)

(assert (=> b!4723660 m!5660573))

(declare-fun m!5660575 () Bool)

(assert (=> b!4723661 m!5660575))

(assert (=> d!1503871 d!1504301))

(declare-fun d!1504303 () Bool)

(assert (=> d!1504303 (= (invariantList!1511 (toList!5917 lt!1887759)) (noDuplicatedKeys!374 (toList!5917 lt!1887759)))))

(declare-fun bs!1113725 () Bool)

(assert (= bs!1113725 d!1504303))

(declare-fun m!5660577 () Bool)

(assert (=> bs!1113725 m!5660577))

(assert (=> d!1503791 d!1504303))

(declare-fun d!1504305 () Bool)

(declare-fun res!1998604 () Bool)

(declare-fun e!2946041 () Bool)

(assert (=> d!1504305 (=> res!1998604 e!2946041)))

(assert (=> d!1504305 (= res!1998604 ((_ is Nil!52831) (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))))

(assert (=> d!1504305 (= (forall!11588 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))) lambda!215558) e!2946041)))

(declare-fun b!4723662 () Bool)

(declare-fun e!2946042 () Bool)

(assert (=> b!4723662 (= e!2946041 e!2946042)))

(declare-fun res!1998605 () Bool)

(assert (=> b!4723662 (=> (not res!1998605) (not e!2946042))))

(assert (=> b!4723662 (= res!1998605 (dynLambda!21820 lambda!215558 (h!59178 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))))))

(declare-fun b!4723663 () Bool)

(assert (=> b!4723663 (= e!2946042 (forall!11588 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))) lambda!215558))))

(assert (= (and d!1504305 (not res!1998604)) b!4723662))

(assert (= (and b!4723662 res!1998605) b!4723663))

(declare-fun b_lambda!178907 () Bool)

(assert (=> (not b_lambda!178907) (not b!4723662)))

(declare-fun m!5660597 () Bool)

(assert (=> b!4723662 m!5660597))

(declare-fun m!5660601 () Bool)

(assert (=> b!4723663 m!5660601))

(assert (=> d!1503791 d!1504305))

(declare-fun d!1504309 () Bool)

(declare-fun lt!1888687 () Bool)

(assert (=> d!1504309 (= lt!1888687 (select (content!9396 e!2945520) key!4653))))

(declare-fun e!2946043 () Bool)

(assert (=> d!1504309 (= lt!1888687 e!2946043)))

(declare-fun res!1998607 () Bool)

(assert (=> d!1504309 (=> (not res!1998607) (not e!2946043))))

(assert (=> d!1504309 (= res!1998607 ((_ is Cons!52833) e!2945520))))

(assert (=> d!1504309 (= (contains!16179 e!2945520 key!4653) lt!1888687)))

(declare-fun b!4723664 () Bool)

(declare-fun e!2946044 () Bool)

(assert (=> b!4723664 (= e!2946043 e!2946044)))

(declare-fun res!1998606 () Bool)

(assert (=> b!4723664 (=> res!1998606 e!2946044)))

(assert (=> b!4723664 (= res!1998606 (= (h!59182 e!2945520) key!4653))))

(declare-fun b!4723665 () Bool)

(assert (=> b!4723665 (= e!2946044 (contains!16179 (t!360225 e!2945520) key!4653))))

(assert (= (and d!1504309 res!1998607) b!4723664))

(assert (= (and b!4723664 (not res!1998606)) b!4723665))

(declare-fun m!5660603 () Bool)

(assert (=> d!1504309 m!5660603))

(declare-fun m!5660605 () Bool)

(assert (=> d!1504309 m!5660605))

(declare-fun m!5660607 () Bool)

(assert (=> b!4723665 m!5660607))

(assert (=> bm!330336 d!1504309))

(declare-fun d!1504311 () Bool)

(declare-fun res!1998609 () Bool)

(declare-fun e!2946046 () Bool)

(assert (=> d!1504311 (=> res!1998609 e!2946046)))

(assert (=> d!1504311 (= res!1998609 ((_ is Nil!52830) oldBucket!34))))

(assert (=> d!1504311 (= (forall!11590 oldBucket!34 lambda!215669) e!2946046)))

(declare-fun b!4723667 () Bool)

(declare-fun e!2946047 () Bool)

(assert (=> b!4723667 (= e!2946046 e!2946047)))

(declare-fun res!1998610 () Bool)

(assert (=> b!4723667 (=> (not res!1998610) (not e!2946047))))

(assert (=> b!4723667 (= res!1998610 (dynLambda!21821 lambda!215669 (h!59177 oldBucket!34)))))

(declare-fun b!4723668 () Bool)

(assert (=> b!4723668 (= e!2946047 (forall!11590 (t!360220 oldBucket!34) lambda!215669))))

(assert (= (and d!1504311 (not res!1998609)) b!4723667))

(assert (= (and b!4723667 res!1998610) b!4723668))

(declare-fun b_lambda!178911 () Bool)

(assert (=> (not b_lambda!178911) (not b!4723667)))

(declare-fun m!5660615 () Bool)

(assert (=> b!4723667 m!5660615))

(declare-fun m!5660617 () Bool)

(assert (=> b!4723668 m!5660617))

(assert (=> d!1503899 d!1504311))

(assert (=> d!1503899 d!1503847))

(declare-fun d!1504315 () Bool)

(declare-fun res!1998613 () Bool)

(declare-fun e!2946049 () Bool)

(assert (=> d!1504315 (=> res!1998613 e!2946049)))

(assert (=> d!1504315 (= res!1998613 (and ((_ is Cons!52830) (t!360220 newBucket!218)) (= (_1!30519 (h!59177 (t!360220 newBucket!218))) (_1!30519 (h!59177 newBucket!218)))))))

(assert (=> d!1504315 (= (containsKey!3369 (t!360220 newBucket!218) (_1!30519 (h!59177 newBucket!218))) e!2946049)))

(declare-fun b!4723671 () Bool)

(declare-fun e!2946050 () Bool)

(assert (=> b!4723671 (= e!2946049 e!2946050)))

(declare-fun res!1998614 () Bool)

(assert (=> b!4723671 (=> (not res!1998614) (not e!2946050))))

(assert (=> b!4723671 (= res!1998614 ((_ is Cons!52830) (t!360220 newBucket!218)))))

(declare-fun b!4723672 () Bool)

(assert (=> b!4723672 (= e!2946050 (containsKey!3369 (t!360220 (t!360220 newBucket!218)) (_1!30519 (h!59177 newBucket!218))))))

(assert (= (and d!1504315 (not res!1998613)) b!4723671))

(assert (= (and b!4723671 res!1998614) b!4723672))

(declare-fun m!5660621 () Bool)

(assert (=> b!4723672 m!5660621))

(assert (=> b!4722981 d!1504315))

(declare-fun d!1504317 () Bool)

(declare-fun res!1998615 () Bool)

(declare-fun e!2946051 () Bool)

(assert (=> d!1504317 (=> res!1998615 e!2946051)))

(assert (=> d!1504317 (= res!1998615 (not ((_ is Cons!52830) (t!360220 oldBucket!34))))))

(assert (=> d!1504317 (= (noDuplicateKeys!2014 (t!360220 oldBucket!34)) e!2946051)))

(declare-fun b!4723673 () Bool)

(declare-fun e!2946052 () Bool)

(assert (=> b!4723673 (= e!2946051 e!2946052)))

(declare-fun res!1998616 () Bool)

(assert (=> b!4723673 (=> (not res!1998616) (not e!2946052))))

(assert (=> b!4723673 (= res!1998616 (not (containsKey!3369 (t!360220 (t!360220 oldBucket!34)) (_1!30519 (h!59177 (t!360220 oldBucket!34))))))))

(declare-fun b!4723674 () Bool)

(assert (=> b!4723674 (= e!2946052 (noDuplicateKeys!2014 (t!360220 (t!360220 oldBucket!34))))))

(assert (= (and d!1504317 (not res!1998615)) b!4723673))

(assert (= (and b!4723673 res!1998616) b!4723674))

(declare-fun m!5660633 () Bool)

(assert (=> b!4723673 m!5660633))

(declare-fun m!5660635 () Bool)

(assert (=> b!4723674 m!5660635))

(assert (=> b!4722866 d!1504317))

(assert (=> b!4722880 d!1504021))

(assert (=> b!4722880 d!1504023))

(declare-fun d!1504321 () Bool)

(declare-fun res!1998620 () Bool)

(declare-fun e!2946059 () Bool)

(assert (=> d!1504321 (=> res!1998620 e!2946059)))

(assert (=> d!1504321 (= res!1998620 (and ((_ is Cons!52830) (t!360220 oldBucket!34)) (= (_1!30519 (h!59177 (t!360220 oldBucket!34))) (_1!30519 (h!59177 oldBucket!34)))))))

(assert (=> d!1504321 (= (containsKey!3369 (t!360220 oldBucket!34) (_1!30519 (h!59177 oldBucket!34))) e!2946059)))

(declare-fun b!4723684 () Bool)

(declare-fun e!2946060 () Bool)

(assert (=> b!4723684 (= e!2946059 e!2946060)))

(declare-fun res!1998621 () Bool)

(assert (=> b!4723684 (=> (not res!1998621) (not e!2946060))))

(assert (=> b!4723684 (= res!1998621 ((_ is Cons!52830) (t!360220 oldBucket!34)))))

(declare-fun b!4723685 () Bool)

(assert (=> b!4723685 (= e!2946060 (containsKey!3369 (t!360220 (t!360220 oldBucket!34)) (_1!30519 (h!59177 oldBucket!34))))))

(assert (= (and d!1504321 (not res!1998620)) b!4723684))

(assert (= (and b!4723684 res!1998621) b!4723685))

(declare-fun m!5660637 () Bool)

(assert (=> b!4723685 m!5660637))

(assert (=> b!4722865 d!1504321))

(assert (=> bm!330345 d!1503991))

(assert (=> b!4722917 d!1504027))

(declare-fun d!1504323 () Bool)

(assert (=> d!1504323 (containsKey!3373 (toList!5917 lt!1887721) key!4653)))

(declare-fun lt!1888704 () Unit!130119)

(declare-fun choose!33339 (List!52954 K!14185) Unit!130119)

(assert (=> d!1504323 (= lt!1888704 (choose!33339 (toList!5917 lt!1887721) key!4653))))

(assert (=> d!1504323 (invariantList!1511 (toList!5917 lt!1887721))))

(assert (=> d!1504323 (= (lemmaInGetKeysListThenContainsKey!950 (toList!5917 lt!1887721) key!4653) lt!1888704)))

(declare-fun bs!1113739 () Bool)

(assert (= bs!1113739 d!1504323))

(assert (=> bs!1113739 m!5658887))

(declare-fun m!5660659 () Bool)

(assert (=> bs!1113739 m!5660659))

(assert (=> bs!1113739 m!5659167))

(assert (=> b!4722917 d!1504323))

(declare-fun d!1504327 () Bool)

(assert (=> d!1504327 (= (tail!9004 (toList!5918 lm!2023)) (t!360221 (toList!5918 lm!2023)))))

(assert (=> d!1503845 d!1504327))

(declare-fun d!1504329 () Bool)

(declare-fun res!1998622 () Bool)

(declare-fun e!2946061 () Bool)

(assert (=> d!1504329 (=> res!1998622 e!2946061)))

(assert (=> d!1504329 (= res!1998622 ((_ is Nil!52831) (t!360221 (toList!5918 lm!2023))))))

(assert (=> d!1504329 (= (forall!11588 (t!360221 (toList!5918 lm!2023)) lambda!215550) e!2946061)))

(declare-fun b!4723686 () Bool)

(declare-fun e!2946062 () Bool)

(assert (=> b!4723686 (= e!2946061 e!2946062)))

(declare-fun res!1998623 () Bool)

(assert (=> b!4723686 (=> (not res!1998623) (not e!2946062))))

(assert (=> b!4723686 (= res!1998623 (dynLambda!21820 lambda!215550 (h!59178 (t!360221 (toList!5918 lm!2023)))))))

(declare-fun b!4723687 () Bool)

(assert (=> b!4723687 (= e!2946062 (forall!11588 (t!360221 (t!360221 (toList!5918 lm!2023))) lambda!215550))))

(assert (= (and d!1504329 (not res!1998622)) b!4723686))

(assert (= (and b!4723686 res!1998623) b!4723687))

(declare-fun b_lambda!178913 () Bool)

(assert (=> (not b_lambda!178913) (not b!4723686)))

(declare-fun m!5660661 () Bool)

(assert (=> b!4723686 m!5660661))

(declare-fun m!5660663 () Bool)

(assert (=> b!4723687 m!5660663))

(assert (=> b!4722946 d!1504329))

(declare-fun d!1504331 () Bool)

(declare-fun res!1998624 () Bool)

(declare-fun e!2946063 () Bool)

(assert (=> d!1504331 (=> res!1998624 e!2946063)))

(assert (=> d!1504331 (= res!1998624 ((_ is Nil!52830) (toList!5917 lt!1887727)))))

(assert (=> d!1504331 (= (forall!11590 (toList!5917 lt!1887727) lambda!215673) e!2946063)))

(declare-fun b!4723688 () Bool)

(declare-fun e!2946064 () Bool)

(assert (=> b!4723688 (= e!2946063 e!2946064)))

(declare-fun res!1998625 () Bool)

(assert (=> b!4723688 (=> (not res!1998625) (not e!2946064))))

(assert (=> b!4723688 (= res!1998625 (dynLambda!21821 lambda!215673 (h!59177 (toList!5917 lt!1887727))))))

(declare-fun b!4723689 () Bool)

(assert (=> b!4723689 (= e!2946064 (forall!11590 (t!360220 (toList!5917 lt!1887727)) lambda!215673))))

(assert (= (and d!1504331 (not res!1998624)) b!4723688))

(assert (= (and b!4723688 res!1998625) b!4723689))

(declare-fun b_lambda!178915 () Bool)

(assert (=> (not b_lambda!178915) (not b!4723688)))

(declare-fun m!5660665 () Bool)

(assert (=> b!4723688 m!5660665))

(declare-fun m!5660667 () Bool)

(assert (=> b!4723689 m!5660667))

(assert (=> b!4722980 d!1504331))

(declare-fun d!1504333 () Bool)

(declare-fun res!1998626 () Bool)

(declare-fun e!2946065 () Bool)

(assert (=> d!1504333 (=> res!1998626 e!2946065)))

(assert (=> d!1504333 (= res!1998626 ((_ is Nil!52830) (toList!5917 lt!1887727)))))

(assert (=> d!1504333 (= (forall!11590 (toList!5917 lt!1887727) lambda!215669) e!2946065)))

(declare-fun b!4723690 () Bool)

(declare-fun e!2946066 () Bool)

(assert (=> b!4723690 (= e!2946065 e!2946066)))

(declare-fun res!1998627 () Bool)

(assert (=> b!4723690 (=> (not res!1998627) (not e!2946066))))

(assert (=> b!4723690 (= res!1998627 (dynLambda!21821 lambda!215669 (h!59177 (toList!5917 lt!1887727))))))

(declare-fun b!4723691 () Bool)

(assert (=> b!4723691 (= e!2946066 (forall!11590 (t!360220 (toList!5917 lt!1887727)) lambda!215669))))

(assert (= (and d!1504333 (not res!1998626)) b!4723690))

(assert (= (and b!4723690 res!1998627) b!4723691))

(declare-fun b_lambda!178917 () Bool)

(assert (=> (not b_lambda!178917) (not b!4723690)))

(declare-fun m!5660669 () Bool)

(assert (=> b!4723690 m!5660669))

(declare-fun m!5660671 () Bool)

(assert (=> b!4723691 m!5660671))

(assert (=> b!4722973 d!1504333))

(declare-fun bs!1113837 () Bool)

(declare-fun b!4723755 () Bool)

(assert (= bs!1113837 (and b!4723755 b!4723096)))

(declare-fun lambda!215770 () Int)

(assert (=> bs!1113837 (= (= (t!360220 (toList!5917 lt!1887721)) (toList!5917 lt!1887721)) (= lambda!215770 lambda!215684))))

(assert (=> b!4723755 true))

(declare-fun bs!1113838 () Bool)

(declare-fun b!4723754 () Bool)

(assert (= bs!1113838 (and b!4723754 b!4723096)))

(declare-fun lambda!215771 () Int)

(assert (=> bs!1113838 (= (= (Cons!52830 (h!59177 (toList!5917 lt!1887721)) (t!360220 (toList!5917 lt!1887721))) (toList!5917 lt!1887721)) (= lambda!215771 lambda!215684))))

(declare-fun bs!1113839 () Bool)

(assert (= bs!1113839 (and b!4723754 b!4723755)))

(assert (=> bs!1113839 (= (= (Cons!52830 (h!59177 (toList!5917 lt!1887721)) (t!360220 (toList!5917 lt!1887721))) (t!360220 (toList!5917 lt!1887721))) (= lambda!215771 lambda!215770))))

(assert (=> b!4723754 true))

(declare-fun bs!1113840 () Bool)

(declare-fun b!4723750 () Bool)

(assert (= bs!1113840 (and b!4723750 b!4723096)))

(declare-fun lambda!215772 () Int)

(assert (=> bs!1113840 (= lambda!215772 lambda!215684)))

(declare-fun bs!1113841 () Bool)

(assert (= bs!1113841 (and b!4723750 b!4723755)))

(assert (=> bs!1113841 (= (= (toList!5917 lt!1887721) (t!360220 (toList!5917 lt!1887721))) (= lambda!215772 lambda!215770))))

(declare-fun bs!1113842 () Bool)

(assert (= bs!1113842 (and b!4723750 b!4723754)))

(assert (=> bs!1113842 (= (= (toList!5917 lt!1887721) (Cons!52830 (h!59177 (toList!5917 lt!1887721)) (t!360220 (toList!5917 lt!1887721)))) (= lambda!215772 lambda!215771))))

(assert (=> b!4723750 true))

(declare-fun bs!1113843 () Bool)

(declare-fun b!4723752 () Bool)

(assert (= bs!1113843 (and b!4723752 b!4723097)))

(declare-fun lambda!215773 () Int)

(assert (=> bs!1113843 (= lambda!215773 lambda!215685)))

(declare-fun b!4723749 () Bool)

(declare-fun e!2946110 () List!52957)

(assert (=> b!4723749 (= e!2946110 Nil!52833)))

(declare-fun res!1998667 () Bool)

(declare-fun e!2946113 () Bool)

(assert (=> b!4723750 (=> (not res!1998667) (not e!2946113))))

(declare-fun lt!1888748 () List!52957)

(assert (=> b!4723750 (= res!1998667 (forall!11591 lt!1888748 lambda!215772))))

(declare-fun b!4723751 () Bool)

(declare-fun e!2946111 () Unit!130119)

(declare-fun Unit!130420 () Unit!130119)

(assert (=> b!4723751 (= e!2946111 Unit!130420)))

(assert (=> b!4723752 (= e!2946113 (= (content!9396 lt!1888748) (content!9396 (map!11680 (toList!5917 lt!1887721) lambda!215773))))))

(declare-fun b!4723753 () Bool)

(declare-fun e!2946112 () Unit!130119)

(declare-fun Unit!130421 () Unit!130119)

(assert (=> b!4723753 (= e!2946112 Unit!130421)))

(assert (=> b!4723754 (= e!2946110 (Cons!52833 (_1!30519 (h!59177 (toList!5917 lt!1887721))) (getKeysList!951 (t!360220 (toList!5917 lt!1887721)))))))

(declare-fun c!806748 () Bool)

(assert (=> b!4723754 (= c!806748 (containsKey!3373 (t!360220 (toList!5917 lt!1887721)) (_1!30519 (h!59177 (toList!5917 lt!1887721)))))))

(declare-fun lt!1888744 () Unit!130119)

(assert (=> b!4723754 (= lt!1888744 e!2946111)))

(declare-fun c!806747 () Bool)

(assert (=> b!4723754 (= c!806747 (contains!16179 (getKeysList!951 (t!360220 (toList!5917 lt!1887721))) (_1!30519 (h!59177 (toList!5917 lt!1887721)))))))

(declare-fun lt!1888749 () Unit!130119)

(assert (=> b!4723754 (= lt!1888749 e!2946112)))

(declare-fun lt!1888745 () List!52957)

(assert (=> b!4723754 (= lt!1888745 (getKeysList!951 (t!360220 (toList!5917 lt!1887721))))))

(declare-fun lt!1888746 () Unit!130119)

(declare-fun lemmaForallContainsAddHeadPreserves!280 (List!52954 List!52957 tuple2!54450) Unit!130119)

(assert (=> b!4723754 (= lt!1888746 (lemmaForallContainsAddHeadPreserves!280 (t!360220 (toList!5917 lt!1887721)) lt!1888745 (h!59177 (toList!5917 lt!1887721))))))

(assert (=> b!4723754 (forall!11591 lt!1888745 lambda!215771)))

(declare-fun lt!1888743 () Unit!130119)

(assert (=> b!4723754 (= lt!1888743 lt!1888746)))

(assert (=> b!4723755 false))

(declare-fun lt!1888747 () Unit!130119)

(declare-fun forallContained!3641 (List!52957 Int K!14185) Unit!130119)

(assert (=> b!4723755 (= lt!1888747 (forallContained!3641 (getKeysList!951 (t!360220 (toList!5917 lt!1887721))) lambda!215770 (_1!30519 (h!59177 (toList!5917 lt!1887721)))))))

(declare-fun Unit!130422 () Unit!130119)

(assert (=> b!4723755 (= e!2946112 Unit!130422)))

(declare-fun d!1504335 () Bool)

(assert (=> d!1504335 e!2946113))

(declare-fun res!1998669 () Bool)

(assert (=> d!1504335 (=> (not res!1998669) (not e!2946113))))

(assert (=> d!1504335 (= res!1998669 (noDuplicate!860 lt!1888748))))

(assert (=> d!1504335 (= lt!1888748 e!2946110)))

(declare-fun c!806749 () Bool)

(assert (=> d!1504335 (= c!806749 ((_ is Cons!52830) (toList!5917 lt!1887721)))))

(assert (=> d!1504335 (invariantList!1511 (toList!5917 lt!1887721))))

(assert (=> d!1504335 (= (getKeysList!951 (toList!5917 lt!1887721)) lt!1888748)))

(declare-fun b!4723756 () Bool)

(declare-fun res!1998668 () Bool)

(assert (=> b!4723756 (=> (not res!1998668) (not e!2946113))))

(assert (=> b!4723756 (= res!1998668 (= (length!576 lt!1888748) (length!577 (toList!5917 lt!1887721))))))

(declare-fun b!4723757 () Bool)

(assert (=> b!4723757 false))

(declare-fun Unit!130423 () Unit!130119)

(assert (=> b!4723757 (= e!2946111 Unit!130423)))

(assert (= (and d!1504335 c!806749) b!4723754))

(assert (= (and d!1504335 (not c!806749)) b!4723749))

(assert (= (and b!4723754 c!806748) b!4723757))

(assert (= (and b!4723754 (not c!806748)) b!4723751))

(assert (= (and b!4723754 c!806747) b!4723755))

(assert (= (and b!4723754 (not c!806747)) b!4723753))

(assert (= (and d!1504335 res!1998669) b!4723756))

(assert (= (and b!4723756 res!1998668) b!4723750))

(assert (= (and b!4723750 res!1998667) b!4723752))

(declare-fun m!5660719 () Bool)

(assert (=> b!4723756 m!5660719))

(assert (=> b!4723756 m!5659255))

(declare-fun m!5660721 () Bool)

(assert (=> b!4723750 m!5660721))

(declare-fun m!5660723 () Bool)

(assert (=> b!4723754 m!5660723))

(declare-fun m!5660725 () Bool)

(assert (=> b!4723754 m!5660725))

(declare-fun m!5660727 () Bool)

(assert (=> b!4723754 m!5660727))

(declare-fun m!5660729 () Bool)

(assert (=> b!4723754 m!5660729))

(assert (=> b!4723754 m!5660725))

(declare-fun m!5660731 () Bool)

(assert (=> b!4723754 m!5660731))

(assert (=> b!4723755 m!5660725))

(assert (=> b!4723755 m!5660725))

(declare-fun m!5660733 () Bool)

(assert (=> b!4723755 m!5660733))

(declare-fun m!5660735 () Bool)

(assert (=> b!4723752 m!5660735))

(declare-fun m!5660737 () Bool)

(assert (=> b!4723752 m!5660737))

(assert (=> b!4723752 m!5660737))

(declare-fun m!5660739 () Bool)

(assert (=> b!4723752 m!5660739))

(declare-fun m!5660741 () Bool)

(assert (=> d!1504335 m!5660741))

(assert (=> d!1504335 m!5659167))

(assert (=> b!4722915 d!1504335))

(declare-fun d!1504365 () Bool)

(declare-fun c!806750 () Bool)

(assert (=> d!1504365 (= c!806750 ((_ is Nil!52830) (toList!5917 (+!2269 lt!1887723 (h!59177 oldBucket!34)))))))

(declare-fun e!2946114 () (InoxSet tuple2!54450))

(assert (=> d!1504365 (= (content!9395 (toList!5917 (+!2269 lt!1887723 (h!59177 oldBucket!34)))) e!2946114)))

(declare-fun b!4723760 () Bool)

(assert (=> b!4723760 (= e!2946114 ((as const (Array tuple2!54450 Bool)) false))))

(declare-fun b!4723761 () Bool)

(assert (=> b!4723761 (= e!2946114 ((_ map or) (store ((as const (Array tuple2!54450 Bool)) false) (h!59177 (toList!5917 (+!2269 lt!1887723 (h!59177 oldBucket!34)))) true) (content!9395 (t!360220 (toList!5917 (+!2269 lt!1887723 (h!59177 oldBucket!34)))))))))

(assert (= (and d!1504365 c!806750) b!4723760))

(assert (= (and d!1504365 (not c!806750)) b!4723761))

(declare-fun m!5660743 () Bool)

(assert (=> b!4723761 m!5660743))

(declare-fun m!5660745 () Bool)

(assert (=> b!4723761 m!5660745))

(assert (=> d!1503905 d!1504365))

(declare-fun d!1504367 () Bool)

(declare-fun c!806751 () Bool)

(assert (=> d!1504367 (= c!806751 ((_ is Nil!52830) (toList!5917 (addToMapMapFromBucket!1444 oldBucket!34 lt!1887727))))))

(declare-fun e!2946115 () (InoxSet tuple2!54450))

(assert (=> d!1504367 (= (content!9395 (toList!5917 (addToMapMapFromBucket!1444 oldBucket!34 lt!1887727))) e!2946115)))

(declare-fun b!4723762 () Bool)

(assert (=> b!4723762 (= e!2946115 ((as const (Array tuple2!54450 Bool)) false))))

(declare-fun b!4723763 () Bool)

(assert (=> b!4723763 (= e!2946115 ((_ map or) (store ((as const (Array tuple2!54450 Bool)) false) (h!59177 (toList!5917 (addToMapMapFromBucket!1444 oldBucket!34 lt!1887727))) true) (content!9395 (t!360220 (toList!5917 (addToMapMapFromBucket!1444 oldBucket!34 lt!1887727))))))))

(assert (= (and d!1504367 c!806751) b!4723762))

(assert (= (and d!1504367 (not c!806751)) b!4723763))

(declare-fun m!5660747 () Bool)

(assert (=> b!4723763 m!5660747))

(declare-fun m!5660749 () Bool)

(assert (=> b!4723763 m!5660749))

(assert (=> d!1503905 d!1504367))

(declare-fun d!1504369 () Bool)

(declare-fun e!2946117 () Bool)

(assert (=> d!1504369 e!2946117))

(declare-fun res!1998671 () Bool)

(assert (=> d!1504369 (=> res!1998671 e!2946117)))

(declare-fun e!2946119 () Bool)

(assert (=> d!1504369 (= res!1998671 e!2946119)))

(declare-fun res!1998670 () Bool)

(assert (=> d!1504369 (=> (not res!1998670) (not e!2946119))))

(declare-fun lt!1888757 () Bool)

(assert (=> d!1504369 (= res!1998670 (not lt!1888757))))

(declare-fun lt!1888750 () Bool)

(assert (=> d!1504369 (= lt!1888757 lt!1888750)))

(declare-fun lt!1888751 () Unit!130119)

(declare-fun e!2946120 () Unit!130119)

(assert (=> d!1504369 (= lt!1888751 e!2946120)))

(declare-fun c!806752 () Bool)

(assert (=> d!1504369 (= c!806752 lt!1888750)))

(assert (=> d!1504369 (= lt!1888750 (containsKey!3373 (toList!5917 lt!1888124) (_1!30519 (h!59177 oldBucket!34))))))

(assert (=> d!1504369 (= (contains!16175 lt!1888124 (_1!30519 (h!59177 oldBucket!34))) lt!1888757)))

(declare-fun b!4723764 () Bool)

(declare-fun e!2946116 () Bool)

(assert (=> b!4723764 (= e!2946116 (contains!16179 (keys!18974 lt!1888124) (_1!30519 (h!59177 oldBucket!34))))))

(declare-fun b!4723765 () Bool)

(assert (=> b!4723765 (= e!2946117 e!2946116)))

(declare-fun res!1998672 () Bool)

(assert (=> b!4723765 (=> (not res!1998672) (not e!2946116))))

(assert (=> b!4723765 (= res!1998672 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1888124) (_1!30519 (h!59177 oldBucket!34)))))))

(declare-fun b!4723766 () Bool)

(declare-fun e!2946121 () List!52957)

(assert (=> b!4723766 (= e!2946121 (keys!18974 lt!1888124))))

(declare-fun b!4723767 () Bool)

(assert (=> b!4723767 (= e!2946121 (getKeysList!951 (toList!5917 lt!1888124)))))

(declare-fun b!4723768 () Bool)

(declare-fun e!2946118 () Unit!130119)

(assert (=> b!4723768 (= e!2946120 e!2946118)))

(declare-fun c!806754 () Bool)

(declare-fun call!330436 () Bool)

(assert (=> b!4723768 (= c!806754 call!330436)))

(declare-fun b!4723769 () Bool)

(assert (=> b!4723769 false))

(declare-fun lt!1888753 () Unit!130119)

(declare-fun lt!1888756 () Unit!130119)

(assert (=> b!4723769 (= lt!1888753 lt!1888756)))

(assert (=> b!4723769 (containsKey!3373 (toList!5917 lt!1888124) (_1!30519 (h!59177 oldBucket!34)))))

(assert (=> b!4723769 (= lt!1888756 (lemmaInGetKeysListThenContainsKey!950 (toList!5917 lt!1888124) (_1!30519 (h!59177 oldBucket!34))))))

(declare-fun Unit!130424 () Unit!130119)

(assert (=> b!4723769 (= e!2946118 Unit!130424)))

(declare-fun b!4723770 () Bool)

(declare-fun Unit!130425 () Unit!130119)

(assert (=> b!4723770 (= e!2946118 Unit!130425)))

(declare-fun b!4723771 () Bool)

(assert (=> b!4723771 (= e!2946119 (not (contains!16179 (keys!18974 lt!1888124) (_1!30519 (h!59177 oldBucket!34)))))))

(declare-fun bm!330431 () Bool)

(assert (=> bm!330431 (= call!330436 (contains!16179 e!2946121 (_1!30519 (h!59177 oldBucket!34))))))

(declare-fun c!806753 () Bool)

(assert (=> bm!330431 (= c!806753 c!806752)))

(declare-fun b!4723772 () Bool)

(declare-fun lt!1888754 () Unit!130119)

(assert (=> b!4723772 (= e!2946120 lt!1888754)))

(declare-fun lt!1888752 () Unit!130119)

(assert (=> b!4723772 (= lt!1888752 (lemmaContainsKeyImpliesGetValueByKeyDefined!1848 (toList!5917 lt!1888124) (_1!30519 (h!59177 oldBucket!34))))))

(assert (=> b!4723772 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1888124) (_1!30519 (h!59177 oldBucket!34))))))

(declare-fun lt!1888755 () Unit!130119)

(assert (=> b!4723772 (= lt!1888755 lt!1888752)))

(assert (=> b!4723772 (= lt!1888754 (lemmaInListThenGetKeysListContains!946 (toList!5917 lt!1888124) (_1!30519 (h!59177 oldBucket!34))))))

(assert (=> b!4723772 call!330436))

(assert (= (and d!1504369 c!806752) b!4723772))

(assert (= (and d!1504369 (not c!806752)) b!4723768))

(assert (= (and b!4723768 c!806754) b!4723769))

(assert (= (and b!4723768 (not c!806754)) b!4723770))

(assert (= (or b!4723772 b!4723768) bm!330431))

(assert (= (and bm!330431 c!806753) b!4723767))

(assert (= (and bm!330431 (not c!806753)) b!4723766))

(assert (= (and d!1504369 res!1998670) b!4723771))

(assert (= (and d!1504369 (not res!1998671)) b!4723765))

(assert (= (and b!4723765 res!1998672) b!4723764))

(declare-fun m!5660751 () Bool)

(assert (=> b!4723772 m!5660751))

(assert (=> b!4723772 m!5659049))

(assert (=> b!4723772 m!5659049))

(declare-fun m!5660753 () Bool)

(assert (=> b!4723772 m!5660753))

(declare-fun m!5660755 () Bool)

(assert (=> b!4723772 m!5660755))

(declare-fun m!5660757 () Bool)

(assert (=> b!4723769 m!5660757))

(declare-fun m!5660759 () Bool)

(assert (=> b!4723769 m!5660759))

(assert (=> b!4723765 m!5659049))

(assert (=> b!4723765 m!5659049))

(assert (=> b!4723765 m!5660753))

(declare-fun m!5660761 () Bool)

(assert (=> b!4723766 m!5660761))

(declare-fun m!5660763 () Bool)

(assert (=> b!4723767 m!5660763))

(assert (=> b!4723771 m!5660761))

(assert (=> b!4723771 m!5660761))

(declare-fun m!5660765 () Bool)

(assert (=> b!4723771 m!5660765))

(assert (=> d!1504369 m!5660757))

(declare-fun m!5660767 () Bool)

(assert (=> bm!330431 m!5660767))

(assert (=> b!4723764 m!5660761))

(assert (=> b!4723764 m!5660761))

(assert (=> b!4723764 m!5660765))

(assert (=> d!1503903 d!1504369))

(declare-fun d!1504371 () Bool)

(declare-fun c!806755 () Bool)

(assert (=> d!1504371 (= c!806755 (and ((_ is Cons!52830) lt!1888125) (= (_1!30519 (h!59177 lt!1888125)) (_1!30519 (h!59177 oldBucket!34)))))))

(declare-fun e!2946122 () Option!12361)

(assert (=> d!1504371 (= (getValueByKey!1957 lt!1888125 (_1!30519 (h!59177 oldBucket!34))) e!2946122)))

(declare-fun b!4723775 () Bool)

(declare-fun e!2946123 () Option!12361)

(assert (=> b!4723775 (= e!2946123 (getValueByKey!1957 (t!360220 lt!1888125) (_1!30519 (h!59177 oldBucket!34))))))

(declare-fun b!4723774 () Bool)

(assert (=> b!4723774 (= e!2946122 e!2946123)))

(declare-fun c!806756 () Bool)

(assert (=> b!4723774 (= c!806756 (and ((_ is Cons!52830) lt!1888125) (not (= (_1!30519 (h!59177 lt!1888125)) (_1!30519 (h!59177 oldBucket!34))))))))

(declare-fun b!4723776 () Bool)

(assert (=> b!4723776 (= e!2946123 None!12360)))

(declare-fun b!4723773 () Bool)

(assert (=> b!4723773 (= e!2946122 (Some!12360 (_2!30519 (h!59177 lt!1888125))))))

(assert (= (and d!1504371 c!806755) b!4723773))

(assert (= (and d!1504371 (not c!806755)) b!4723774))

(assert (= (and b!4723774 c!806756) b!4723775))

(assert (= (and b!4723774 (not c!806756)) b!4723776))

(declare-fun m!5660769 () Bool)

(assert (=> b!4723775 m!5660769))

(assert (=> d!1503903 d!1504371))

(declare-fun d!1504373 () Bool)

(assert (=> d!1504373 (= (getValueByKey!1957 lt!1888125 (_1!30519 (h!59177 oldBucket!34))) (Some!12360 (_2!30519 (h!59177 oldBucket!34))))))

(declare-fun lt!1888758 () Unit!130119)

(assert (=> d!1504373 (= lt!1888758 (choose!33330 lt!1888125 (_1!30519 (h!59177 oldBucket!34)) (_2!30519 (h!59177 oldBucket!34))))))

(declare-fun e!2946124 () Bool)

(assert (=> d!1504373 e!2946124))

(declare-fun res!1998673 () Bool)

(assert (=> d!1504373 (=> (not res!1998673) (not e!2946124))))

(assert (=> d!1504373 (= res!1998673 (invariantList!1511 lt!1888125))))

(assert (=> d!1504373 (= (lemmaContainsTupThenGetReturnValue!1086 lt!1888125 (_1!30519 (h!59177 oldBucket!34)) (_2!30519 (h!59177 oldBucket!34))) lt!1888758)))

(declare-fun b!4723777 () Bool)

(declare-fun res!1998674 () Bool)

(assert (=> b!4723777 (=> (not res!1998674) (not e!2946124))))

(assert (=> b!4723777 (= res!1998674 (containsKey!3373 lt!1888125 (_1!30519 (h!59177 oldBucket!34))))))

(declare-fun b!4723778 () Bool)

(assert (=> b!4723778 (= e!2946124 (contains!16180 lt!1888125 (tuple2!54451 (_1!30519 (h!59177 oldBucket!34)) (_2!30519 (h!59177 oldBucket!34)))))))

(assert (= (and d!1504373 res!1998673) b!4723777))

(assert (= (and b!4723777 res!1998674) b!4723778))

(assert (=> d!1504373 m!5659043))

(declare-fun m!5660771 () Bool)

(assert (=> d!1504373 m!5660771))

(declare-fun m!5660773 () Bool)

(assert (=> d!1504373 m!5660773))

(declare-fun m!5660775 () Bool)

(assert (=> b!4723777 m!5660775))

(declare-fun m!5660777 () Bool)

(assert (=> b!4723778 m!5660777))

(assert (=> d!1503903 d!1504373))

(declare-fun b!4723779 () Bool)

(declare-fun e!2946128 () List!52954)

(declare-fun e!2946131 () List!52954)

(assert (=> b!4723779 (= e!2946128 e!2946131)))

(declare-fun res!1998677 () Bool)

(assert (=> b!4723779 (= res!1998677 ((_ is Cons!52830) (toList!5917 lt!1887723)))))

(declare-fun e!2946129 () Bool)

(assert (=> b!4723779 (=> (not res!1998677) (not e!2946129))))

(declare-fun c!806757 () Bool)

(assert (=> b!4723779 (= c!806757 e!2946129)))

(declare-fun call!330440 () List!52954)

(declare-fun e!2946127 () List!52954)

(declare-fun c!806761 () Bool)

(declare-fun bm!330432 () Bool)

(declare-fun c!806760 () Bool)

(assert (=> bm!330432 (= call!330440 ($colon$colon!1078 (ite c!806760 (t!360220 (toList!5917 lt!1887723)) (ite c!806757 (toList!5917 lt!1887723) e!2946127)) (ite (or c!806760 c!806757) (tuple2!54451 (_1!30519 (h!59177 oldBucket!34)) (_2!30519 (h!59177 oldBucket!34))) (ite c!806761 (h!59177 (toList!5917 lt!1887723)) (tuple2!54451 (_1!30519 (h!59177 oldBucket!34)) (_2!30519 (h!59177 oldBucket!34)))))))))

(declare-fun b!4723781 () Bool)

(declare-fun call!330439 () List!52954)

(assert (=> b!4723781 (= e!2946131 call!330439)))

(declare-fun b!4723782 () Bool)

(assert (=> b!4723782 false))

(declare-fun lt!1888763 () Unit!130119)

(declare-fun lt!1888769 () Unit!130119)

(assert (=> b!4723782 (= lt!1888763 lt!1888769)))

(assert (=> b!4723782 (containsKey!3373 (t!360220 (toList!5917 lt!1887723)) (_1!30519 (h!59177 (toList!5917 lt!1887723))))))

(assert (=> b!4723782 (= lt!1888769 (lemmaInGetKeysListThenContainsKey!950 (t!360220 (toList!5917 lt!1887723)) (_1!30519 (h!59177 (toList!5917 lt!1887723)))))))

(declare-fun lt!1888762 () Unit!130119)

(declare-fun lt!1888764 () Unit!130119)

(assert (=> b!4723782 (= lt!1888762 lt!1888764)))

(declare-fun call!330437 () List!52957)

(assert (=> b!4723782 (contains!16179 call!330437 (_1!30519 (h!59177 (toList!5917 lt!1887723))))))

(declare-fun lt!1888766 () List!52954)

(assert (=> b!4723782 (= lt!1888764 (lemmaInListThenGetKeysListContains!946 lt!1888766 (_1!30519 (h!59177 (toList!5917 lt!1887723)))))))

(assert (=> b!4723782 (= lt!1888766 (insertNoDuplicatedKeys!594 (t!360220 (toList!5917 lt!1887723)) (_1!30519 (h!59177 oldBucket!34)) (_2!30519 (h!59177 oldBucket!34))))))

(declare-fun e!2946130 () Unit!130119)

(declare-fun Unit!130426 () Unit!130119)

(assert (=> b!4723782 (= e!2946130 Unit!130426)))

(declare-fun b!4723783 () Bool)

(declare-fun Unit!130427 () Unit!130119)

(assert (=> b!4723783 (= e!2946130 Unit!130427)))

(declare-fun b!4723784 () Bool)

(declare-fun res!1998675 () Bool)

(declare-fun e!2946125 () Bool)

(assert (=> b!4723784 (=> (not res!1998675) (not e!2946125))))

(declare-fun lt!1888761 () List!52954)

(assert (=> b!4723784 (= res!1998675 (containsKey!3373 lt!1888761 (_1!30519 (h!59177 oldBucket!34))))))

(declare-fun b!4723785 () Bool)

(declare-fun e!2946126 () List!52954)

(declare-fun lt!1888768 () List!52954)

(assert (=> b!4723785 (= e!2946126 lt!1888768)))

(declare-fun call!330438 () List!52954)

(assert (=> b!4723785 (= lt!1888768 call!330438)))

(declare-fun c!806758 () Bool)

(assert (=> b!4723785 (= c!806758 (containsKey!3373 (insertNoDuplicatedKeys!594 (t!360220 (toList!5917 lt!1887723)) (_1!30519 (h!59177 oldBucket!34)) (_2!30519 (h!59177 oldBucket!34))) (_1!30519 (h!59177 (toList!5917 lt!1887723)))))))

(declare-fun lt!1888767 () Unit!130119)

(assert (=> b!4723785 (= lt!1888767 e!2946130)))

(declare-fun b!4723780 () Bool)

(assert (=> b!4723780 (= e!2946127 (insertNoDuplicatedKeys!594 (t!360220 (toList!5917 lt!1887723)) (_1!30519 (h!59177 oldBucket!34)) (_2!30519 (h!59177 oldBucket!34))))))

(declare-fun d!1504375 () Bool)

(assert (=> d!1504375 e!2946125))

(declare-fun res!1998676 () Bool)

(assert (=> d!1504375 (=> (not res!1998676) (not e!2946125))))

(assert (=> d!1504375 (= res!1998676 (invariantList!1511 lt!1888761))))

(assert (=> d!1504375 (= lt!1888761 e!2946128)))

(assert (=> d!1504375 (= c!806760 (and ((_ is Cons!52830) (toList!5917 lt!1887723)) (= (_1!30519 (h!59177 (toList!5917 lt!1887723))) (_1!30519 (h!59177 oldBucket!34)))))))

(assert (=> d!1504375 (invariantList!1511 (toList!5917 lt!1887723))))

(assert (=> d!1504375 (= (insertNoDuplicatedKeys!594 (toList!5917 lt!1887723) (_1!30519 (h!59177 oldBucket!34)) (_2!30519 (h!59177 oldBucket!34))) lt!1888761)))

(declare-fun bm!330433 () Bool)

(assert (=> bm!330433 (= call!330439 call!330440)))

(declare-fun bm!330434 () Bool)

(assert (=> bm!330434 (= call!330437 (getKeysList!951 (ite c!806760 (toList!5917 lt!1887723) lt!1888766)))))

(declare-fun b!4723786 () Bool)

(assert (=> b!4723786 (= e!2946125 (= (content!9396 (getKeysList!951 lt!1888761)) ((_ map or) (content!9396 (getKeysList!951 (toList!5917 lt!1887723))) (store ((as const (Array K!14185 Bool)) false) (_1!30519 (h!59177 oldBucket!34)) true))))))

(declare-fun b!4723787 () Bool)

(assert (=> b!4723787 (= e!2946128 call!330440)))

(declare-fun lt!1888760 () List!52957)

(assert (=> b!4723787 (= lt!1888760 call!330437)))

(declare-fun lt!1888759 () Unit!130119)

(assert (=> b!4723787 (= lt!1888759 (lemmaSubseqRefl!143 lt!1888760))))

(assert (=> b!4723787 (subseq!659 lt!1888760 lt!1888760)))

(declare-fun lt!1888765 () Unit!130119)

(assert (=> b!4723787 (= lt!1888765 lt!1888759)))

(declare-fun bm!330435 () Bool)

(assert (=> bm!330435 (= call!330438 call!330439)))

(declare-fun c!806759 () Bool)

(assert (=> bm!330435 (= c!806759 c!806761)))

(declare-fun b!4723788 () Bool)

(assert (=> b!4723788 (= c!806761 ((_ is Cons!52830) (toList!5917 lt!1887723)))))

(assert (=> b!4723788 (= e!2946131 e!2946126)))

(declare-fun b!4723789 () Bool)

(assert (=> b!4723789 (= e!2946129 (not (containsKey!3373 (toList!5917 lt!1887723) (_1!30519 (h!59177 oldBucket!34)))))))

(declare-fun b!4723790 () Bool)

(assert (=> b!4723790 (= e!2946126 call!330438)))

(declare-fun b!4723791 () Bool)

(declare-fun res!1998678 () Bool)

(assert (=> b!4723791 (=> (not res!1998678) (not e!2946125))))

(assert (=> b!4723791 (= res!1998678 (contains!16180 lt!1888761 (tuple2!54451 (_1!30519 (h!59177 oldBucket!34)) (_2!30519 (h!59177 oldBucket!34)))))))

(declare-fun b!4723792 () Bool)

(assert (=> b!4723792 (= e!2946127 Nil!52830)))

(assert (= (and d!1504375 c!806760) b!4723787))

(assert (= (and d!1504375 (not c!806760)) b!4723779))

(assert (= (and b!4723779 res!1998677) b!4723789))

(assert (= (and b!4723779 c!806757) b!4723781))

(assert (= (and b!4723779 (not c!806757)) b!4723788))

(assert (= (and b!4723788 c!806761) b!4723785))

(assert (= (and b!4723788 (not c!806761)) b!4723790))

(assert (= (and b!4723785 c!806758) b!4723782))

(assert (= (and b!4723785 (not c!806758)) b!4723783))

(assert (= (or b!4723785 b!4723790) bm!330435))

(assert (= (and bm!330435 c!806759) b!4723780))

(assert (= (and bm!330435 (not c!806759)) b!4723792))

(assert (= (or b!4723781 bm!330435) bm!330433))

(assert (= (or b!4723787 b!4723782) bm!330434))

(assert (= (or b!4723787 bm!330433) bm!330432))

(assert (= (and d!1504375 res!1998676) b!4723784))

(assert (= (and b!4723784 res!1998675) b!4723791))

(assert (= (and b!4723791 res!1998678) b!4723786))

(declare-fun m!5660779 () Bool)

(assert (=> b!4723780 m!5660779))

(declare-fun m!5660781 () Bool)

(assert (=> d!1504375 m!5660781))

(assert (=> d!1504375 m!5659355))

(assert (=> b!4723785 m!5660779))

(assert (=> b!4723785 m!5660779))

(declare-fun m!5660783 () Bool)

(assert (=> b!4723785 m!5660783))

(declare-fun m!5660785 () Bool)

(assert (=> b!4723782 m!5660785))

(assert (=> b!4723782 m!5659361))

(assert (=> b!4723782 m!5659363))

(assert (=> b!4723782 m!5660779))

(declare-fun m!5660787 () Bool)

(assert (=> b!4723782 m!5660787))

(declare-fun m!5660789 () Bool)

(assert (=> bm!330434 m!5660789))

(declare-fun m!5660791 () Bool)

(assert (=> b!4723784 m!5660791))

(declare-fun m!5660793 () Bool)

(assert (=> b!4723787 m!5660793))

(declare-fun m!5660795 () Bool)

(assert (=> b!4723787 m!5660795))

(declare-fun m!5660797 () Bool)

(assert (=> bm!330432 m!5660797))

(declare-fun m!5660799 () Bool)

(assert (=> b!4723786 m!5660799))

(declare-fun m!5660801 () Bool)

(assert (=> b!4723786 m!5660801))

(declare-fun m!5660803 () Bool)

(assert (=> b!4723786 m!5660803))

(assert (=> b!4723786 m!5660801))

(assert (=> b!4723786 m!5659383))

(assert (=> b!4723786 m!5659385))

(assert (=> b!4723786 m!5659383))

(declare-fun m!5660805 () Bool)

(assert (=> b!4723789 m!5660805))

(declare-fun m!5660807 () Bool)

(assert (=> b!4723791 m!5660807))

(assert (=> d!1503903 d!1504375))

(declare-fun d!1504377 () Bool)

(declare-fun res!1998679 () Bool)

(declare-fun e!2946132 () Bool)

(assert (=> d!1504377 (=> res!1998679 e!2946132)))

(assert (=> d!1504377 (= res!1998679 ((_ is Nil!52830) (toList!5917 lt!1887727)))))

(assert (=> d!1504377 (= (forall!11590 (toList!5917 lt!1887727) (ite c!806595 lambda!215662 lambda!215664)) e!2946132)))

(declare-fun b!4723793 () Bool)

(declare-fun e!2946133 () Bool)

(assert (=> b!4723793 (= e!2946132 e!2946133)))

(declare-fun res!1998680 () Bool)

(assert (=> b!4723793 (=> (not res!1998680) (not e!2946133))))

(assert (=> b!4723793 (= res!1998680 (dynLambda!21821 (ite c!806595 lambda!215662 lambda!215664) (h!59177 (toList!5917 lt!1887727))))))

(declare-fun b!4723794 () Bool)

(assert (=> b!4723794 (= e!2946133 (forall!11590 (t!360220 (toList!5917 lt!1887727)) (ite c!806595 lambda!215662 lambda!215664)))))

(assert (= (and d!1504377 (not res!1998679)) b!4723793))

(assert (= (and b!4723793 res!1998680) b!4723794))

(declare-fun b_lambda!178929 () Bool)

(assert (=> (not b_lambda!178929) (not b!4723793)))

(declare-fun m!5660837 () Bool)

(assert (=> b!4723793 m!5660837))

(declare-fun m!5660841 () Bool)

(assert (=> b!4723794 m!5660841))

(assert (=> bm!330341 d!1504377))

(declare-fun d!1504379 () Bool)

(declare-fun res!1998681 () Bool)

(declare-fun e!2946134 () Bool)

(assert (=> d!1504379 (=> res!1998681 e!2946134)))

(assert (=> d!1504379 (= res!1998681 ((_ is Nil!52830) oldBucket!34))))

(assert (=> d!1504379 (= (forall!11590 oldBucket!34 lambda!215674) e!2946134)))

(declare-fun b!4723795 () Bool)

(declare-fun e!2946135 () Bool)

(assert (=> b!4723795 (= e!2946134 e!2946135)))

(declare-fun res!1998682 () Bool)

(assert (=> b!4723795 (=> (not res!1998682) (not e!2946135))))

(assert (=> b!4723795 (= res!1998682 (dynLambda!21821 lambda!215674 (h!59177 oldBucket!34)))))

(declare-fun b!4723796 () Bool)

(assert (=> b!4723796 (= e!2946135 (forall!11590 (t!360220 oldBucket!34) lambda!215674))))

(assert (= (and d!1504379 (not res!1998681)) b!4723795))

(assert (= (and b!4723795 res!1998682) b!4723796))

(declare-fun b_lambda!178931 () Bool)

(assert (=> (not b_lambda!178931) (not b!4723795)))

(declare-fun m!5660847 () Bool)

(assert (=> b!4723795 m!5660847))

(declare-fun m!5660849 () Bool)

(assert (=> b!4723796 m!5660849))

(assert (=> d!1503911 d!1504379))

(assert (=> b!4722913 d!1503957))

(assert (=> b!4722913 d!1503959))

(declare-fun d!1504383 () Bool)

(declare-fun res!1998683 () Bool)

(declare-fun e!2946137 () Bool)

(assert (=> d!1504383 (=> res!1998683 e!2946137)))

(assert (=> d!1504383 (= res!1998683 ((_ is Nil!52830) (toList!5917 lt!1887727)))))

(assert (=> d!1504383 (= (forall!11590 (toList!5917 lt!1887727) lambda!215671) e!2946137)))

(declare-fun b!4723799 () Bool)

(declare-fun e!2946138 () Bool)

(assert (=> b!4723799 (= e!2946137 e!2946138)))

(declare-fun res!1998684 () Bool)

(assert (=> b!4723799 (=> (not res!1998684) (not e!2946138))))

(assert (=> b!4723799 (= res!1998684 (dynLambda!21821 lambda!215671 (h!59177 (toList!5917 lt!1887727))))))

(declare-fun b!4723800 () Bool)

(assert (=> b!4723800 (= e!2946138 (forall!11590 (t!360220 (toList!5917 lt!1887727)) lambda!215671))))

(assert (= (and d!1504383 (not res!1998683)) b!4723799))

(assert (= (and b!4723799 res!1998684) b!4723800))

(declare-fun b_lambda!178933 () Bool)

(assert (=> (not b_lambda!178933) (not b!4723799)))

(declare-fun m!5660851 () Bool)

(assert (=> b!4723799 m!5660851))

(declare-fun m!5660853 () Bool)

(assert (=> b!4723800 m!5660853))

(assert (=> b!4722976 d!1504383))

(declare-fun d!1504385 () Bool)

(declare-fun e!2946140 () Bool)

(assert (=> d!1504385 e!2946140))

(declare-fun res!1998686 () Bool)

(assert (=> d!1504385 (=> res!1998686 e!2946140)))

(declare-fun e!2946142 () Bool)

(assert (=> d!1504385 (= res!1998686 e!2946142)))

(declare-fun res!1998685 () Bool)

(assert (=> d!1504385 (=> (not res!1998685) (not e!2946142))))

(declare-fun lt!1888778 () Bool)

(assert (=> d!1504385 (= res!1998685 (not lt!1888778))))

(declare-fun lt!1888771 () Bool)

(assert (=> d!1504385 (= lt!1888778 lt!1888771)))

(declare-fun lt!1888772 () Unit!130119)

(declare-fun e!2946143 () Unit!130119)

(assert (=> d!1504385 (= lt!1888772 e!2946143)))

(declare-fun c!806763 () Bool)

(assert (=> d!1504385 (= c!806763 lt!1888771)))

(assert (=> d!1504385 (= lt!1888771 (containsKey!3373 (toList!5917 lt!1888130) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(assert (=> d!1504385 (= (contains!16175 lt!1888130 (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) lt!1888778)))

(declare-fun b!4723801 () Bool)

(declare-fun e!2946139 () Bool)

(assert (=> b!4723801 (= e!2946139 (contains!16179 (keys!18974 lt!1888130) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(declare-fun b!4723802 () Bool)

(assert (=> b!4723802 (= e!2946140 e!2946139)))

(declare-fun res!1998687 () Bool)

(assert (=> b!4723802 (=> (not res!1998687) (not e!2946139))))

(assert (=> b!4723802 (= res!1998687 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1888130) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720))))))))

(declare-fun b!4723803 () Bool)

(declare-fun e!2946144 () List!52957)

(assert (=> b!4723803 (= e!2946144 (keys!18974 lt!1888130))))

(declare-fun b!4723804 () Bool)

(assert (=> b!4723804 (= e!2946144 (getKeysList!951 (toList!5917 lt!1888130)))))

(declare-fun b!4723805 () Bool)

(declare-fun e!2946141 () Unit!130119)

(assert (=> b!4723805 (= e!2946143 e!2946141)))

(declare-fun c!806765 () Bool)

(declare-fun call!330441 () Bool)

(assert (=> b!4723805 (= c!806765 call!330441)))

(declare-fun b!4723806 () Bool)

(assert (=> b!4723806 false))

(declare-fun lt!1888774 () Unit!130119)

(declare-fun lt!1888777 () Unit!130119)

(assert (=> b!4723806 (= lt!1888774 lt!1888777)))

(assert (=> b!4723806 (containsKey!3373 (toList!5917 lt!1888130) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720))))))

(assert (=> b!4723806 (= lt!1888777 (lemmaInGetKeysListThenContainsKey!950 (toList!5917 lt!1888130) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(declare-fun Unit!130428 () Unit!130119)

(assert (=> b!4723806 (= e!2946141 Unit!130428)))

(declare-fun b!4723807 () Bool)

(declare-fun Unit!130429 () Unit!130119)

(assert (=> b!4723807 (= e!2946141 Unit!130429)))

(declare-fun b!4723808 () Bool)

(assert (=> b!4723808 (= e!2946142 (not (contains!16179 (keys!18974 lt!1888130) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720))))))))

(declare-fun bm!330436 () Bool)

(assert (=> bm!330436 (= call!330441 (contains!16179 e!2946144 (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(declare-fun c!806764 () Bool)

(assert (=> bm!330436 (= c!806764 c!806763)))

(declare-fun b!4723809 () Bool)

(declare-fun lt!1888775 () Unit!130119)

(assert (=> b!4723809 (= e!2946143 lt!1888775)))

(declare-fun lt!1888773 () Unit!130119)

(assert (=> b!4723809 (= lt!1888773 (lemmaContainsKeyImpliesGetValueByKeyDefined!1848 (toList!5917 lt!1888130) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(assert (=> b!4723809 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1888130) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(declare-fun lt!1888776 () Unit!130119)

(assert (=> b!4723809 (= lt!1888776 lt!1888773)))

(assert (=> b!4723809 (= lt!1888775 (lemmaInListThenGetKeysListContains!946 (toList!5917 lt!1888130) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(assert (=> b!4723809 call!330441))

(assert (= (and d!1504385 c!806763) b!4723809))

(assert (= (and d!1504385 (not c!806763)) b!4723805))

(assert (= (and b!4723805 c!806765) b!4723806))

(assert (= (and b!4723805 (not c!806765)) b!4723807))

(assert (= (or b!4723809 b!4723805) bm!330436))

(assert (= (and bm!330436 c!806764) b!4723804))

(assert (= (and bm!330436 (not c!806764)) b!4723803))

(assert (= (and d!1504385 res!1998685) b!4723808))

(assert (= (and d!1504385 (not res!1998686)) b!4723802))

(assert (= (and b!4723802 res!1998687) b!4723801))

(declare-fun m!5660863 () Bool)

(assert (=> b!4723809 m!5660863))

(declare-fun m!5660865 () Bool)

(assert (=> b!4723809 m!5660865))

(assert (=> b!4723809 m!5660865))

(declare-fun m!5660867 () Bool)

(assert (=> b!4723809 m!5660867))

(declare-fun m!5660869 () Bool)

(assert (=> b!4723809 m!5660869))

(declare-fun m!5660871 () Bool)

(assert (=> b!4723806 m!5660871))

(declare-fun m!5660873 () Bool)

(assert (=> b!4723806 m!5660873))

(assert (=> b!4723802 m!5660865))

(assert (=> b!4723802 m!5660865))

(assert (=> b!4723802 m!5660867))

(declare-fun m!5660875 () Bool)

(assert (=> b!4723803 m!5660875))

(declare-fun m!5660877 () Bool)

(assert (=> b!4723804 m!5660877))

(assert (=> b!4723808 m!5660875))

(assert (=> b!4723808 m!5660875))

(declare-fun m!5660879 () Bool)

(assert (=> b!4723808 m!5660879))

(assert (=> d!1504385 m!5660871))

(declare-fun m!5660881 () Bool)

(assert (=> bm!330436 m!5660881))

(assert (=> b!4723801 m!5660875))

(assert (=> b!4723801 m!5660875))

(assert (=> b!4723801 m!5660879))

(assert (=> b!4722976 d!1504385))

(declare-fun d!1504389 () Bool)

(declare-fun res!1998688 () Bool)

(declare-fun e!2946145 () Bool)

(assert (=> d!1504389 (=> res!1998688 e!2946145)))

(assert (=> d!1504389 (= res!1998688 ((_ is Nil!52830) (t!360220 (Cons!52830 lt!1887722 lt!1887720))))))

(assert (=> d!1504389 (= (forall!11590 (t!360220 (Cons!52830 lt!1887722 lt!1887720)) lambda!215672) e!2946145)))

(declare-fun b!4723810 () Bool)

(declare-fun e!2946146 () Bool)

(assert (=> b!4723810 (= e!2946145 e!2946146)))

(declare-fun res!1998689 () Bool)

(assert (=> b!4723810 (=> (not res!1998689) (not e!2946146))))

(assert (=> b!4723810 (= res!1998689 (dynLambda!21821 lambda!215672 (h!59177 (t!360220 (Cons!52830 lt!1887722 lt!1887720)))))))

(declare-fun b!4723811 () Bool)

(assert (=> b!4723811 (= e!2946146 (forall!11590 (t!360220 (t!360220 (Cons!52830 lt!1887722 lt!1887720))) lambda!215672))))

(assert (= (and d!1504389 (not res!1998688)) b!4723810))

(assert (= (and b!4723810 res!1998689) b!4723811))

(declare-fun b_lambda!178935 () Bool)

(assert (=> (not b_lambda!178935) (not b!4723810)))

(declare-fun m!5660883 () Bool)

(assert (=> b!4723810 m!5660883))

(declare-fun m!5660885 () Bool)

(assert (=> b!4723811 m!5660885))

(assert (=> b!4722976 d!1504389))

(declare-fun d!1504391 () Bool)

(declare-fun e!2946147 () Bool)

(assert (=> d!1504391 e!2946147))

(declare-fun res!1998691 () Bool)

(assert (=> d!1504391 (=> (not res!1998691) (not e!2946147))))

(declare-fun lt!1888781 () ListMap!5281)

(assert (=> d!1504391 (= res!1998691 (contains!16175 lt!1888781 (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(declare-fun lt!1888782 () List!52954)

(assert (=> d!1504391 (= lt!1888781 (ListMap!5282 lt!1888782))))

(declare-fun lt!1888779 () Unit!130119)

(declare-fun lt!1888780 () Unit!130119)

(assert (=> d!1504391 (= lt!1888779 lt!1888780)))

(assert (=> d!1504391 (= (getValueByKey!1957 lt!1888782 (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) (Some!12360 (_2!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(assert (=> d!1504391 (= lt!1888780 (lemmaContainsTupThenGetReturnValue!1086 lt!1888782 (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (_2!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(assert (=> d!1504391 (= lt!1888782 (insertNoDuplicatedKeys!594 (toList!5917 lt!1887727) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (_2!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(assert (=> d!1504391 (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888781)))

(declare-fun b!4723812 () Bool)

(declare-fun res!1998690 () Bool)

(assert (=> b!4723812 (=> (not res!1998690) (not e!2946147))))

(assert (=> b!4723812 (= res!1998690 (= (getValueByKey!1957 (toList!5917 lt!1888781) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) (Some!12360 (_2!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720))))))))

(declare-fun b!4723813 () Bool)

(assert (=> b!4723813 (= e!2946147 (contains!16180 (toList!5917 lt!1888781) (h!59177 (Cons!52830 lt!1887722 lt!1887720))))))

(assert (= (and d!1504391 res!1998691) b!4723812))

(assert (= (and b!4723812 res!1998690) b!4723813))

(declare-fun m!5660887 () Bool)

(assert (=> d!1504391 m!5660887))

(declare-fun m!5660889 () Bool)

(assert (=> d!1504391 m!5660889))

(declare-fun m!5660891 () Bool)

(assert (=> d!1504391 m!5660891))

(declare-fun m!5660893 () Bool)

(assert (=> d!1504391 m!5660893))

(declare-fun m!5660895 () Bool)

(assert (=> b!4723812 m!5660895))

(declare-fun m!5660897 () Bool)

(assert (=> b!4723813 m!5660897))

(assert (=> b!4722976 d!1504391))

(declare-fun d!1504393 () Bool)

(declare-fun e!2946149 () Bool)

(assert (=> d!1504393 e!2946149))

(declare-fun res!1998693 () Bool)

(assert (=> d!1504393 (=> res!1998693 e!2946149)))

(declare-fun e!2946151 () Bool)

(assert (=> d!1504393 (= res!1998693 e!2946151)))

(declare-fun res!1998692 () Bool)

(assert (=> d!1504393 (=> (not res!1998692) (not e!2946151))))

(declare-fun lt!1888790 () Bool)

(assert (=> d!1504393 (= res!1998692 (not lt!1888790))))

(declare-fun lt!1888783 () Bool)

(assert (=> d!1504393 (= lt!1888790 lt!1888783)))

(declare-fun lt!1888784 () Unit!130119)

(declare-fun e!2946152 () Unit!130119)

(assert (=> d!1504393 (= lt!1888784 e!2946152)))

(declare-fun c!806766 () Bool)

(assert (=> d!1504393 (= c!806766 lt!1888783)))

(assert (=> d!1504393 (= lt!1888783 (containsKey!3373 (toList!5917 lt!1888135) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(assert (=> d!1504393 (= (contains!16175 lt!1888135 (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) lt!1888790)))

(declare-fun b!4723814 () Bool)

(declare-fun e!2946148 () Bool)

(assert (=> b!4723814 (= e!2946148 (contains!16179 (keys!18974 lt!1888135) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(declare-fun b!4723815 () Bool)

(assert (=> b!4723815 (= e!2946149 e!2946148)))

(declare-fun res!1998694 () Bool)

(assert (=> b!4723815 (=> (not res!1998694) (not e!2946148))))

(assert (=> b!4723815 (= res!1998694 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1888135) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720))))))))

(declare-fun b!4723816 () Bool)

(declare-fun e!2946153 () List!52957)

(assert (=> b!4723816 (= e!2946153 (keys!18974 lt!1888135))))

(declare-fun b!4723817 () Bool)

(assert (=> b!4723817 (= e!2946153 (getKeysList!951 (toList!5917 lt!1888135)))))

(declare-fun b!4723818 () Bool)

(declare-fun e!2946150 () Unit!130119)

(assert (=> b!4723818 (= e!2946152 e!2946150)))

(declare-fun c!806768 () Bool)

(declare-fun call!330442 () Bool)

(assert (=> b!4723818 (= c!806768 call!330442)))

(declare-fun b!4723819 () Bool)

(assert (=> b!4723819 false))

(declare-fun lt!1888786 () Unit!130119)

(declare-fun lt!1888789 () Unit!130119)

(assert (=> b!4723819 (= lt!1888786 lt!1888789)))

(assert (=> b!4723819 (containsKey!3373 (toList!5917 lt!1888135) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720))))))

(assert (=> b!4723819 (= lt!1888789 (lemmaInGetKeysListThenContainsKey!950 (toList!5917 lt!1888135) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(declare-fun Unit!130431 () Unit!130119)

(assert (=> b!4723819 (= e!2946150 Unit!130431)))

(declare-fun b!4723820 () Bool)

(declare-fun Unit!130432 () Unit!130119)

(assert (=> b!4723820 (= e!2946150 Unit!130432)))

(declare-fun b!4723821 () Bool)

(assert (=> b!4723821 (= e!2946151 (not (contains!16179 (keys!18974 lt!1888135) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720))))))))

(declare-fun bm!330437 () Bool)

(assert (=> bm!330437 (= call!330442 (contains!16179 e!2946153 (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(declare-fun c!806767 () Bool)

(assert (=> bm!330437 (= c!806767 c!806766)))

(declare-fun b!4723822 () Bool)

(declare-fun lt!1888787 () Unit!130119)

(assert (=> b!4723822 (= e!2946152 lt!1888787)))

(declare-fun lt!1888785 () Unit!130119)

(assert (=> b!4723822 (= lt!1888785 (lemmaContainsKeyImpliesGetValueByKeyDefined!1848 (toList!5917 lt!1888135) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(assert (=> b!4723822 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1888135) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(declare-fun lt!1888788 () Unit!130119)

(assert (=> b!4723822 (= lt!1888788 lt!1888785)))

(assert (=> b!4723822 (= lt!1888787 (lemmaInListThenGetKeysListContains!946 (toList!5917 lt!1888135) (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(assert (=> b!4723822 call!330442))

(assert (= (and d!1504393 c!806766) b!4723822))

(assert (= (and d!1504393 (not c!806766)) b!4723818))

(assert (= (and b!4723818 c!806768) b!4723819))

(assert (= (and b!4723818 (not c!806768)) b!4723820))

(assert (= (or b!4723822 b!4723818) bm!330437))

(assert (= (and bm!330437 c!806767) b!4723817))

(assert (= (and bm!330437 (not c!806767)) b!4723816))

(assert (= (and d!1504393 res!1998692) b!4723821))

(assert (= (and d!1504393 (not res!1998693)) b!4723815))

(assert (= (and b!4723815 res!1998694) b!4723814))

(declare-fun m!5660899 () Bool)

(assert (=> b!4723822 m!5660899))

(declare-fun m!5660901 () Bool)

(assert (=> b!4723822 m!5660901))

(assert (=> b!4723822 m!5660901))

(declare-fun m!5660903 () Bool)

(assert (=> b!4723822 m!5660903))

(declare-fun m!5660905 () Bool)

(assert (=> b!4723822 m!5660905))

(declare-fun m!5660907 () Bool)

(assert (=> b!4723819 m!5660907))

(declare-fun m!5660909 () Bool)

(assert (=> b!4723819 m!5660909))

(assert (=> b!4723815 m!5660901))

(assert (=> b!4723815 m!5660901))

(assert (=> b!4723815 m!5660903))

(declare-fun m!5660911 () Bool)

(assert (=> b!4723816 m!5660911))

(declare-fun m!5660913 () Bool)

(assert (=> b!4723817 m!5660913))

(assert (=> b!4723821 m!5660911))

(assert (=> b!4723821 m!5660911))

(declare-fun m!5660915 () Bool)

(assert (=> b!4723821 m!5660915))

(assert (=> d!1504393 m!5660907))

(declare-fun m!5660917 () Bool)

(assert (=> bm!330437 m!5660917))

(assert (=> b!4723814 m!5660911))

(assert (=> b!4723814 m!5660911))

(assert (=> b!4723814 m!5660915))

(assert (=> b!4722976 d!1504393))

(assert (=> b!4722976 d!1504037))

(declare-fun d!1504395 () Bool)

(declare-fun res!1998695 () Bool)

(declare-fun e!2946154 () Bool)

(assert (=> d!1504395 (=> res!1998695 e!2946154)))

(assert (=> d!1504395 (= res!1998695 ((_ is Nil!52830) (toList!5917 lt!1888130)))))

(assert (=> d!1504395 (= (forall!11590 (toList!5917 lt!1888130) lambda!215672) e!2946154)))

(declare-fun b!4723823 () Bool)

(declare-fun e!2946155 () Bool)

(assert (=> b!4723823 (= e!2946154 e!2946155)))

(declare-fun res!1998696 () Bool)

(assert (=> b!4723823 (=> (not res!1998696) (not e!2946155))))

(assert (=> b!4723823 (= res!1998696 (dynLambda!21821 lambda!215672 (h!59177 (toList!5917 lt!1888130))))))

(declare-fun b!4723824 () Bool)

(assert (=> b!4723824 (= e!2946155 (forall!11590 (t!360220 (toList!5917 lt!1888130)) lambda!215672))))

(assert (= (and d!1504395 (not res!1998695)) b!4723823))

(assert (= (and b!4723823 res!1998696) b!4723824))

(declare-fun b_lambda!178937 () Bool)

(assert (=> (not b_lambda!178937) (not b!4723823)))

(declare-fun m!5660919 () Bool)

(assert (=> b!4723823 m!5660919))

(declare-fun m!5660921 () Bool)

(assert (=> b!4723824 m!5660921))

(assert (=> b!4722976 d!1504395))

(declare-fun bs!1113890 () Bool)

(declare-fun d!1504397 () Bool)

(assert (= bs!1113890 (and d!1504397 b!4723638)))

(declare-fun lambda!215776 () Int)

(assert (=> bs!1113890 (= (= lt!1888135 (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215776 lambda!215750))))

(declare-fun bs!1113891 () Bool)

(assert (= bs!1113891 (and d!1504397 b!4723636)))

(assert (=> bs!1113891 (= (= lt!1888135 (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215776 lambda!215752))))

(declare-fun bs!1113892 () Bool)

(assert (= bs!1113892 (and d!1504397 d!1503873)))

(assert (=> bs!1113892 (not (= lambda!215776 lambda!215656))))

(declare-fun bs!1113893 () Bool)

(assert (= bs!1113893 (and d!1504397 d!1504127)))

(assert (=> bs!1113893 (= (= lt!1888135 lt!1888077) (= lambda!215776 lambda!215715))))

(declare-fun bs!1113894 () Bool)

(assert (= bs!1113894 (and d!1504397 b!4723308)))

(assert (=> bs!1113894 (= (= lt!1888135 lt!1888322) (= lambda!215776 lambda!215700))))

(assert (=> bs!1113894 (= (= lt!1888135 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215776 lambda!215698))))

(declare-fun bs!1113895 () Bool)

(assert (= bs!1113895 (and d!1504397 d!1503889)))

(assert (=> bs!1113895 (= (= lt!1888135 lt!1888078) (= lambda!215776 lambda!215665))))

(declare-fun bs!1113896 () Bool)

(assert (= bs!1113896 (and d!1504397 b!4723399)))

(assert (=> bs!1113896 (= (= lt!1888135 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215776 lambda!215720))))

(declare-fun bs!1113897 () Bool)

(assert (= bs!1113897 (and d!1504397 b!4722949)))

(assert (=> bs!1113897 (= (= lt!1888135 lt!1887727) (= lambda!215776 lambda!215658))))

(declare-fun bs!1113898 () Bool)

(assert (= bs!1113898 (and d!1504397 b!4722845)))

(assert (=> bs!1113898 (= (= lt!1888135 lt!1887947) (= lambda!215776 lambda!215640))))

(declare-fun bs!1113899 () Bool)

(assert (= bs!1113899 (and d!1504397 d!1503887)))

(assert (=> bs!1113899 (= (= lt!1888135 lt!1888057) (= lambda!215776 lambda!215661))))

(declare-fun bs!1113900 () Bool)

(assert (= bs!1113900 (and d!1504397 b!4723501)))

(assert (=> bs!1113900 (= (= lt!1888135 lt!1888504) (= lambda!215776 lambda!215740))))

(declare-fun bs!1113901 () Bool)

(assert (= bs!1113901 (and d!1504397 d!1504275)))

(assert (=> bs!1113901 (= (= lt!1888135 lt!1888056) (= lambda!215776 lambda!215747))))

(declare-fun bs!1113902 () Bool)

(assert (= bs!1113902 (and d!1504397 b!4722969)))

(assert (=> bs!1113902 (= (= lt!1888135 lt!1888110) (= lambda!215776 lambda!215668))))

(declare-fun bs!1113903 () Bool)

(assert (= bs!1113903 (and d!1504397 b!4723054)))

(assert (=> bs!1113903 (= (= lt!1888135 lt!1888168) (= lambda!215776 lambda!215677))))

(declare-fun bs!1113904 () Bool)

(assert (= bs!1113904 (and d!1504397 b!4723273)))

(assert (=> bs!1113904 (= (= lt!1888135 lt!1888294) (= lambda!215776 lambda!215691))))

(declare-fun bs!1113905 () Bool)

(assert (= bs!1113905 (and d!1504397 d!1504139)))

(assert (=> bs!1113905 (= (= lt!1888135 lt!1888442) (= lambda!215776 lambda!215724))))

(declare-fun bs!1113906 () Bool)

(assert (= bs!1113906 (and d!1504397 b!4722954)))

(assert (=> bs!1113906 (= (= lt!1888135 lt!1887727) (= lambda!215776 lambda!215662))))

(declare-fun bs!1113907 () Bool)

(assert (= bs!1113907 (and d!1504397 b!4722952)))

(assert (=> bs!1113907 (= (= lt!1888135 lt!1887727) (= lambda!215776 lambda!215663))))

(declare-fun bs!1113908 () Bool)

(assert (= bs!1113908 (and d!1504397 b!4723056)))

(assert (=> bs!1113908 (= (= lt!1888135 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215776 lambda!215675))))

(declare-fun bs!1113909 () Bool)

(assert (= bs!1113909 (and d!1504397 b!4723443)))

(assert (=> bs!1113909 (= (= lt!1888135 lt!1888469) (= lambda!215776 lambda!215733))))

(declare-fun bs!1113910 () Bool)

(assert (= bs!1113910 (and d!1504397 b!4722978)))

(assert (=> bs!1113910 (= (= lt!1888135 lt!1887727) (= lambda!215776 lambda!215670))))

(declare-fun bs!1113911 () Bool)

(assert (= bs!1113911 (and d!1504397 d!1503799)))

(assert (=> bs!1113911 (= (= lt!1888135 lt!1887948) (= lambda!215776 lambda!215641))))

(declare-fun bs!1113912 () Bool)

(assert (= bs!1113912 (and d!1504397 b!4723275)))

(assert (=> bs!1113912 (= (= lt!1888135 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215776 lambda!215689))))

(declare-fun bs!1113913 () Bool)

(assert (= bs!1113913 (and d!1504397 b!4722947)))

(assert (=> bs!1113913 (= (= lt!1888135 lt!1888056) (= lambda!215776 lambda!215660))))

(declare-fun bs!1113914 () Bool)

(assert (= bs!1113914 (and d!1504397 d!1503911)))

(assert (=> bs!1113914 (not (= lambda!215776 lambda!215674))))

(assert (=> bs!1113898 (= (= lt!1888135 lt!1887727) (= lambda!215776 lambda!215639))))

(declare-fun bs!1113915 () Bool)

(assert (= bs!1113915 (and d!1504397 b!4723310)))

(assert (=> bs!1113915 (= (= lt!1888135 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215776 lambda!215697))))

(declare-fun bs!1113916 () Bool)

(assert (= bs!1113916 (and d!1504397 b!4722976)))

(assert (=> bs!1113916 (= (= lt!1888135 lt!1887727) (= lambda!215776 lambda!215671))))

(assert (=> bs!1113913 (= (= lt!1888135 lt!1887727) (= lambda!215776 lambda!215659))))

(assert (=> bs!1113907 (= (= lt!1888135 lt!1888077) (= lambda!215776 lambda!215664))))

(assert (=> bs!1113900 (= (= lt!1888135 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215776 lambda!215738))))

(assert (=> bs!1113916 (= lambda!215776 lambda!215672)))

(declare-fun bs!1113917 () Bool)

(assert (= bs!1113917 (and d!1504397 d!1504287)))

(assert (=> bs!1113917 (= (= lt!1888135 lt!1888646) (= lambda!215776 lambda!215756))))

(declare-fun bs!1113918 () Bool)

(assert (= bs!1113918 (and d!1504397 b!4723401)))

(assert (=> bs!1113918 (= (= lt!1888135 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215776 lambda!215718))))

(assert (=> bs!1113902 (= (= lt!1888135 lt!1887727) (= lambda!215776 lambda!215667))))

(assert (=> bs!1113909 (= (= lt!1888135 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215776 lambda!215732))))

(declare-fun bs!1113919 () Bool)

(assert (= bs!1113919 (and d!1504397 d!1503907)))

(assert (=> bs!1113919 (= (= lt!1888135 lt!1888136) (= lambda!215776 lambda!215673))))

(declare-fun bs!1113920 () Bool)

(assert (= bs!1113920 (and d!1504397 d!1504043)))

(assert (=> bs!1113920 (= (= lt!1888135 lt!1888295) (= lambda!215776 lambda!215695))))

(assert (=> bs!1113904 (= (= lt!1888135 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215776 lambda!215690))))

(declare-fun bs!1113921 () Bool)

(assert (= bs!1113921 (and d!1504397 d!1503991)))

(assert (=> bs!1113921 (= (= lt!1888135 lt!1887727) (= lambda!215776 lambda!215688))))

(declare-fun bs!1113922 () Bool)

(assert (= bs!1113922 (and d!1504397 d!1504161)))

(assert (=> bs!1113922 (= (= lt!1888135 lt!1888470) (= lambda!215776 lambda!215734))))

(declare-fun bs!1113923 () Bool)

(assert (= bs!1113923 (and d!1504397 d!1504211)))

(assert (=> bs!1113923 (= (= lt!1888135 lt!1888505) (= lambda!215776 lambda!215742))))

(assert (=> bs!1113903 (= (= lt!1888135 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215776 lambda!215676))))

(declare-fun bs!1113924 () Bool)

(assert (= bs!1113924 (and d!1504397 d!1504245)))

(assert (=> bs!1113924 (= (= lt!1888135 lt!1887947) (= lambda!215776 lambda!215744))))

(declare-fun bs!1113925 () Bool)

(assert (= bs!1113925 (and d!1504397 b!4722971)))

(assert (=> bs!1113925 (= (= lt!1888135 lt!1887727) (= lambda!215776 lambda!215666))))

(assert (=> bs!1113891 (= (= lt!1888135 lt!1888645) (= lambda!215776 lambda!215754))))

(declare-fun bs!1113926 () Bool)

(assert (= bs!1113926 (and d!1504397 d!1504085)))

(assert (=> bs!1113926 (= (= lt!1888135 lt!1888323) (= lambda!215776 lambda!215703))))

(declare-fun bs!1113927 () Bool)

(assert (= bs!1113927 (and d!1504397 d!1503963)))

(assert (=> bs!1113927 (= (= lt!1888135 lt!1888169) (= lambda!215776 lambda!215678))))

(declare-fun bs!1113928 () Bool)

(assert (= bs!1113928 (and d!1504397 b!4723445)))

(assert (=> bs!1113928 (= (= lt!1888135 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215776 lambda!215731))))

(declare-fun bs!1113929 () Bool)

(assert (= bs!1113929 (and d!1504397 b!4723503)))

(assert (=> bs!1113929 (= (= lt!1888135 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215776 lambda!215736))))

(declare-fun bs!1113930 () Bool)

(assert (= bs!1113930 (and d!1504397 b!4722847)))

(assert (=> bs!1113930 (= (= lt!1888135 lt!1887727) (= lambda!215776 lambda!215638))))

(assert (=> bs!1113896 (= (= lt!1888135 lt!1888441) (= lambda!215776 lambda!215722))))

(declare-fun bs!1113931 () Bool)

(assert (= bs!1113931 (and d!1504397 d!1503899)))

(assert (=> bs!1113931 (= (= lt!1888135 lt!1888111) (= lambda!215776 lambda!215669))))

(assert (=> d!1504397 true))

(assert (=> d!1504397 (forall!11590 (toList!5917 lt!1887727) lambda!215776)))

(declare-fun lt!1888791 () Unit!130119)

(assert (=> d!1504397 (= lt!1888791 (choose!33338 lt!1887727 lt!1888135 (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (_2!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(assert (=> d!1504397 (forall!11590 (toList!5917 (+!2269 lt!1887727 (tuple2!54451 (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (_2!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))) lambda!215776)))

(assert (=> d!1504397 (= (addForallContainsKeyThenBeforeAdding!796 lt!1887727 lt!1888135 (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (_2!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) lt!1888791)))

(declare-fun bs!1113932 () Bool)

(assert (= bs!1113932 d!1504397))

(declare-fun m!5660923 () Bool)

(assert (=> bs!1113932 m!5660923))

(declare-fun m!5660925 () Bool)

(assert (=> bs!1113932 m!5660925))

(declare-fun m!5660927 () Bool)

(assert (=> bs!1113932 m!5660927))

(declare-fun m!5660929 () Bool)

(assert (=> bs!1113932 m!5660929))

(assert (=> b!4722976 d!1504397))

(declare-fun d!1504399 () Bool)

(assert (=> d!1504399 (dynLambda!21821 lambda!215672 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))

(declare-fun lt!1888792 () Unit!130119)

(assert (=> d!1504399 (= lt!1888792 (choose!33336 (toList!5917 lt!1888130) lambda!215672 (h!59177 (Cons!52830 lt!1887722 lt!1887720))))))

(declare-fun e!2946156 () Bool)

(assert (=> d!1504399 e!2946156))

(declare-fun res!1998697 () Bool)

(assert (=> d!1504399 (=> (not res!1998697) (not e!2946156))))

(assert (=> d!1504399 (= res!1998697 (forall!11590 (toList!5917 lt!1888130) lambda!215672))))

(assert (=> d!1504399 (= (forallContained!3639 (toList!5917 lt!1888130) lambda!215672 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888792)))

(declare-fun b!4723825 () Bool)

(assert (=> b!4723825 (= e!2946156 (contains!16180 (toList!5917 lt!1888130) (h!59177 (Cons!52830 lt!1887722 lt!1887720))))))

(assert (= (and d!1504399 res!1998697) b!4723825))

(declare-fun b_lambda!178939 () Bool)

(assert (=> (not b_lambda!178939) (not d!1504399)))

(declare-fun m!5660931 () Bool)

(assert (=> d!1504399 m!5660931))

(declare-fun m!5660933 () Bool)

(assert (=> d!1504399 m!5660933))

(assert (=> d!1504399 m!5659075))

(declare-fun m!5660935 () Bool)

(assert (=> b!4723825 m!5660935))

(assert (=> b!4722976 d!1504399))

(declare-fun bs!1113933 () Bool)

(declare-fun b!4723828 () Bool)

(assert (= bs!1113933 (and b!4723828 b!4723638)))

(declare-fun lambda!215777 () Int)

(assert (=> bs!1113933 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215777 lambda!215750))))

(declare-fun bs!1113934 () Bool)

(assert (= bs!1113934 (and b!4723828 b!4723636)))

(assert (=> bs!1113934 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215777 lambda!215752))))

(declare-fun bs!1113935 () Bool)

(assert (= bs!1113935 (and b!4723828 d!1503873)))

(assert (=> bs!1113935 (not (= lambda!215777 lambda!215656))))

(declare-fun bs!1113936 () Bool)

(assert (= bs!1113936 (and b!4723828 d!1504127)))

(assert (=> bs!1113936 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888077) (= lambda!215777 lambda!215715))))

(declare-fun bs!1113937 () Bool)

(assert (= bs!1113937 (and b!4723828 b!4723308)))

(assert (=> bs!1113937 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888322) (= lambda!215777 lambda!215700))))

(assert (=> bs!1113937 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215777 lambda!215698))))

(declare-fun bs!1113938 () Bool)

(assert (= bs!1113938 (and b!4723828 d!1503889)))

(assert (=> bs!1113938 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888078) (= lambda!215777 lambda!215665))))

(declare-fun bs!1113939 () Bool)

(assert (= bs!1113939 (and b!4723828 b!4723399)))

(assert (=> bs!1113939 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215777 lambda!215720))))

(declare-fun bs!1113940 () Bool)

(assert (= bs!1113940 (and b!4723828 b!4722949)))

(assert (=> bs!1113940 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215777 lambda!215658))))

(declare-fun bs!1113941 () Bool)

(assert (= bs!1113941 (and b!4723828 b!4722845)))

(assert (=> bs!1113941 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887947) (= lambda!215777 lambda!215640))))

(declare-fun bs!1113942 () Bool)

(assert (= bs!1113942 (and b!4723828 d!1503887)))

(assert (=> bs!1113942 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888057) (= lambda!215777 lambda!215661))))

(declare-fun bs!1113943 () Bool)

(assert (= bs!1113943 (and b!4723828 b!4723501)))

(assert (=> bs!1113943 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888504) (= lambda!215777 lambda!215740))))

(declare-fun bs!1113944 () Bool)

(assert (= bs!1113944 (and b!4723828 d!1504275)))

(assert (=> bs!1113944 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888056) (= lambda!215777 lambda!215747))))

(declare-fun bs!1113945 () Bool)

(assert (= bs!1113945 (and b!4723828 b!4722969)))

(assert (=> bs!1113945 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888110) (= lambda!215777 lambda!215668))))

(declare-fun bs!1113946 () Bool)

(assert (= bs!1113946 (and b!4723828 b!4723054)))

(assert (=> bs!1113946 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888168) (= lambda!215777 lambda!215677))))

(declare-fun bs!1113947 () Bool)

(assert (= bs!1113947 (and b!4723828 b!4723273)))

(assert (=> bs!1113947 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888294) (= lambda!215777 lambda!215691))))

(declare-fun bs!1113948 () Bool)

(assert (= bs!1113948 (and b!4723828 d!1504139)))

(assert (=> bs!1113948 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888442) (= lambda!215777 lambda!215724))))

(declare-fun bs!1113949 () Bool)

(assert (= bs!1113949 (and b!4723828 b!4722954)))

(assert (=> bs!1113949 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215777 lambda!215662))))

(declare-fun bs!1113950 () Bool)

(assert (= bs!1113950 (and b!4723828 b!4722952)))

(assert (=> bs!1113950 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215777 lambda!215663))))

(declare-fun bs!1113951 () Bool)

(assert (= bs!1113951 (and b!4723828 b!4723056)))

(assert (=> bs!1113951 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215777 lambda!215675))))

(declare-fun bs!1113952 () Bool)

(assert (= bs!1113952 (and b!4723828 b!4723443)))

(assert (=> bs!1113952 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888469) (= lambda!215777 lambda!215733))))

(declare-fun bs!1113953 () Bool)

(assert (= bs!1113953 (and b!4723828 b!4722978)))

(assert (=> bs!1113953 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215777 lambda!215670))))

(declare-fun bs!1113954 () Bool)

(assert (= bs!1113954 (and b!4723828 d!1503799)))

(assert (=> bs!1113954 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887948) (= lambda!215777 lambda!215641))))

(declare-fun bs!1113955 () Bool)

(assert (= bs!1113955 (and b!4723828 b!4723275)))

(assert (=> bs!1113955 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215777 lambda!215689))))

(declare-fun bs!1113956 () Bool)

(assert (= bs!1113956 (and b!4723828 b!4722947)))

(assert (=> bs!1113956 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888056) (= lambda!215777 lambda!215660))))

(declare-fun bs!1113957 () Bool)

(assert (= bs!1113957 (and b!4723828 d!1503911)))

(assert (=> bs!1113957 (not (= lambda!215777 lambda!215674))))

(assert (=> bs!1113941 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215777 lambda!215639))))

(declare-fun bs!1113958 () Bool)

(assert (= bs!1113958 (and b!4723828 b!4723310)))

(assert (=> bs!1113958 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215777 lambda!215697))))

(declare-fun bs!1113959 () Bool)

(assert (= bs!1113959 (and b!4723828 b!4722976)))

(assert (=> bs!1113959 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215777 lambda!215671))))

(assert (=> bs!1113956 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215777 lambda!215659))))

(assert (=> bs!1113950 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888077) (= lambda!215777 lambda!215664))))

(assert (=> bs!1113943 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215777 lambda!215738))))

(assert (=> bs!1113959 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888135) (= lambda!215777 lambda!215672))))

(declare-fun bs!1113960 () Bool)

(assert (= bs!1113960 (and b!4723828 d!1504287)))

(assert (=> bs!1113960 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888646) (= lambda!215777 lambda!215756))))

(declare-fun bs!1113961 () Bool)

(assert (= bs!1113961 (and b!4723828 b!4723401)))

(assert (=> bs!1113961 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215777 lambda!215718))))

(assert (=> bs!1113945 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215777 lambda!215667))))

(assert (=> bs!1113952 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215777 lambda!215732))))

(declare-fun bs!1113962 () Bool)

(assert (= bs!1113962 (and b!4723828 d!1503907)))

(assert (=> bs!1113962 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888136) (= lambda!215777 lambda!215673))))

(declare-fun bs!1113963 () Bool)

(assert (= bs!1113963 (and b!4723828 d!1504043)))

(assert (=> bs!1113963 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888295) (= lambda!215777 lambda!215695))))

(declare-fun bs!1113964 () Bool)

(assert (= bs!1113964 (and b!4723828 d!1504397)))

(assert (=> bs!1113964 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888135) (= lambda!215777 lambda!215776))))

(assert (=> bs!1113947 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215777 lambda!215690))))

(declare-fun bs!1113965 () Bool)

(assert (= bs!1113965 (and b!4723828 d!1503991)))

(assert (=> bs!1113965 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215777 lambda!215688))))

(declare-fun bs!1113966 () Bool)

(assert (= bs!1113966 (and b!4723828 d!1504161)))

(assert (=> bs!1113966 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888470) (= lambda!215777 lambda!215734))))

(declare-fun bs!1113967 () Bool)

(assert (= bs!1113967 (and b!4723828 d!1504211)))

(assert (=> bs!1113967 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888505) (= lambda!215777 lambda!215742))))

(assert (=> bs!1113946 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215777 lambda!215676))))

(declare-fun bs!1113968 () Bool)

(assert (= bs!1113968 (and b!4723828 d!1504245)))

(assert (=> bs!1113968 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887947) (= lambda!215777 lambda!215744))))

(declare-fun bs!1113969 () Bool)

(assert (= bs!1113969 (and b!4723828 b!4722971)))

(assert (=> bs!1113969 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215777 lambda!215666))))

(assert (=> bs!1113934 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888645) (= lambda!215777 lambda!215754))))

(declare-fun bs!1113970 () Bool)

(assert (= bs!1113970 (and b!4723828 d!1504085)))

(assert (=> bs!1113970 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888323) (= lambda!215777 lambda!215703))))

(declare-fun bs!1113971 () Bool)

(assert (= bs!1113971 (and b!4723828 d!1503963)))

(assert (=> bs!1113971 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888169) (= lambda!215777 lambda!215678))))

(declare-fun bs!1113972 () Bool)

(assert (= bs!1113972 (and b!4723828 b!4723445)))

(assert (=> bs!1113972 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215777 lambda!215731))))

(declare-fun bs!1113973 () Bool)

(assert (= bs!1113973 (and b!4723828 b!4723503)))

(assert (=> bs!1113973 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215777 lambda!215736))))

(declare-fun bs!1113974 () Bool)

(assert (= bs!1113974 (and b!4723828 b!4722847)))

(assert (=> bs!1113974 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215777 lambda!215638))))

(assert (=> bs!1113939 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888441) (= lambda!215777 lambda!215722))))

(declare-fun bs!1113975 () Bool)

(assert (= bs!1113975 (and b!4723828 d!1503899)))

(assert (=> bs!1113975 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888111) (= lambda!215777 lambda!215669))))

(assert (=> b!4723828 true))

(declare-fun bs!1113976 () Bool)

(declare-fun b!4723826 () Bool)

(assert (= bs!1113976 (and b!4723826 b!4723638)))

(declare-fun lambda!215780 () Int)

(assert (=> bs!1113976 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215780 lambda!215750))))

(declare-fun bs!1113977 () Bool)

(assert (= bs!1113977 (and b!4723826 b!4723636)))

(assert (=> bs!1113977 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215780 lambda!215752))))

(declare-fun bs!1113978 () Bool)

(assert (= bs!1113978 (and b!4723826 d!1503873)))

(assert (=> bs!1113978 (not (= lambda!215780 lambda!215656))))

(declare-fun bs!1113979 () Bool)

(assert (= bs!1113979 (and b!4723826 b!4723308)))

(assert (=> bs!1113979 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888322) (= lambda!215780 lambda!215700))))

(assert (=> bs!1113979 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215780 lambda!215698))))

(declare-fun bs!1113980 () Bool)

(assert (= bs!1113980 (and b!4723826 d!1503889)))

(assert (=> bs!1113980 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888078) (= lambda!215780 lambda!215665))))

(declare-fun bs!1113981 () Bool)

(assert (= bs!1113981 (and b!4723826 b!4723399)))

(assert (=> bs!1113981 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215780 lambda!215720))))

(declare-fun bs!1113982 () Bool)

(assert (= bs!1113982 (and b!4723826 b!4722949)))

(assert (=> bs!1113982 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215780 lambda!215658))))

(declare-fun bs!1113983 () Bool)

(assert (= bs!1113983 (and b!4723826 b!4722845)))

(assert (=> bs!1113983 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887947) (= lambda!215780 lambda!215640))))

(declare-fun bs!1113984 () Bool)

(assert (= bs!1113984 (and b!4723826 d!1503887)))

(assert (=> bs!1113984 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888057) (= lambda!215780 lambda!215661))))

(declare-fun bs!1113985 () Bool)

(assert (= bs!1113985 (and b!4723826 b!4723501)))

(assert (=> bs!1113985 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888504) (= lambda!215780 lambda!215740))))

(declare-fun bs!1113986 () Bool)

(assert (= bs!1113986 (and b!4723826 d!1504275)))

(assert (=> bs!1113986 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888056) (= lambda!215780 lambda!215747))))

(declare-fun bs!1113987 () Bool)

(assert (= bs!1113987 (and b!4723826 b!4722969)))

(assert (=> bs!1113987 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888110) (= lambda!215780 lambda!215668))))

(declare-fun bs!1113988 () Bool)

(assert (= bs!1113988 (and b!4723826 b!4723054)))

(assert (=> bs!1113988 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888168) (= lambda!215780 lambda!215677))))

(declare-fun bs!1113989 () Bool)

(assert (= bs!1113989 (and b!4723826 b!4723273)))

(assert (=> bs!1113989 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888294) (= lambda!215780 lambda!215691))))

(declare-fun bs!1113990 () Bool)

(assert (= bs!1113990 (and b!4723826 d!1504139)))

(assert (=> bs!1113990 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888442) (= lambda!215780 lambda!215724))))

(declare-fun bs!1113991 () Bool)

(assert (= bs!1113991 (and b!4723826 b!4722954)))

(assert (=> bs!1113991 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215780 lambda!215662))))

(declare-fun bs!1113992 () Bool)

(assert (= bs!1113992 (and b!4723826 b!4722952)))

(assert (=> bs!1113992 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215780 lambda!215663))))

(declare-fun bs!1113993 () Bool)

(assert (= bs!1113993 (and b!4723826 b!4723056)))

(assert (=> bs!1113993 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215780 lambda!215675))))

(declare-fun bs!1113994 () Bool)

(assert (= bs!1113994 (and b!4723826 b!4723443)))

(assert (=> bs!1113994 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888469) (= lambda!215780 lambda!215733))))

(declare-fun bs!1113995 () Bool)

(assert (= bs!1113995 (and b!4723826 b!4722978)))

(assert (=> bs!1113995 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215780 lambda!215670))))

(declare-fun bs!1113996 () Bool)

(assert (= bs!1113996 (and b!4723826 d!1503799)))

(assert (=> bs!1113996 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887948) (= lambda!215780 lambda!215641))))

(declare-fun bs!1113997 () Bool)

(assert (= bs!1113997 (and b!4723826 b!4723275)))

(assert (=> bs!1113997 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215780 lambda!215689))))

(declare-fun bs!1113998 () Bool)

(assert (= bs!1113998 (and b!4723826 b!4722947)))

(assert (=> bs!1113998 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888056) (= lambda!215780 lambda!215660))))

(declare-fun bs!1113999 () Bool)

(assert (= bs!1113999 (and b!4723826 d!1503911)))

(assert (=> bs!1113999 (not (= lambda!215780 lambda!215674))))

(assert (=> bs!1113983 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215780 lambda!215639))))

(declare-fun bs!1114000 () Bool)

(assert (= bs!1114000 (and b!4723826 b!4723310)))

(assert (=> bs!1114000 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215780 lambda!215697))))

(declare-fun bs!1114001 () Bool)

(assert (= bs!1114001 (and b!4723826 b!4722976)))

(assert (=> bs!1114001 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215780 lambda!215671))))

(assert (=> bs!1113998 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215780 lambda!215659))))

(assert (=> bs!1113992 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888077) (= lambda!215780 lambda!215664))))

(assert (=> bs!1113985 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215780 lambda!215738))))

(assert (=> bs!1114001 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888135) (= lambda!215780 lambda!215672))))

(declare-fun bs!1114002 () Bool)

(assert (= bs!1114002 (and b!4723826 d!1504287)))

(assert (=> bs!1114002 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888646) (= lambda!215780 lambda!215756))))

(declare-fun bs!1114003 () Bool)

(assert (= bs!1114003 (and b!4723826 b!4723401)))

(assert (=> bs!1114003 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215780 lambda!215718))))

(assert (=> bs!1113987 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215780 lambda!215667))))

(assert (=> bs!1113994 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215780 lambda!215732))))

(declare-fun bs!1114004 () Bool)

(assert (= bs!1114004 (and b!4723826 d!1503907)))

(assert (=> bs!1114004 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888136) (= lambda!215780 lambda!215673))))

(declare-fun bs!1114005 () Bool)

(assert (= bs!1114005 (and b!4723826 d!1504043)))

(assert (=> bs!1114005 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888295) (= lambda!215780 lambda!215695))))

(declare-fun bs!1114006 () Bool)

(assert (= bs!1114006 (and b!4723826 d!1504397)))

(assert (=> bs!1114006 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888135) (= lambda!215780 lambda!215776))))

(assert (=> bs!1113989 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215780 lambda!215690))))

(declare-fun bs!1114007 () Bool)

(assert (= bs!1114007 (and b!4723826 d!1503991)))

(assert (=> bs!1114007 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215780 lambda!215688))))

(declare-fun bs!1114008 () Bool)

(assert (= bs!1114008 (and b!4723826 d!1504161)))

(assert (=> bs!1114008 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888470) (= lambda!215780 lambda!215734))))

(declare-fun bs!1114009 () Bool)

(assert (= bs!1114009 (and b!4723826 d!1504211)))

(assert (=> bs!1114009 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888505) (= lambda!215780 lambda!215742))))

(assert (=> bs!1113988 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215780 lambda!215676))))

(declare-fun bs!1114010 () Bool)

(assert (= bs!1114010 (and b!4723826 d!1504245)))

(assert (=> bs!1114010 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887947) (= lambda!215780 lambda!215744))))

(declare-fun bs!1114011 () Bool)

(assert (= bs!1114011 (and b!4723826 b!4722971)))

(assert (=> bs!1114011 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215780 lambda!215666))))

(assert (=> bs!1113977 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888645) (= lambda!215780 lambda!215754))))

(declare-fun bs!1114012 () Bool)

(assert (= bs!1114012 (and b!4723826 d!1504085)))

(assert (=> bs!1114012 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888323) (= lambda!215780 lambda!215703))))

(declare-fun bs!1114013 () Bool)

(assert (= bs!1114013 (and b!4723826 d!1503963)))

(assert (=> bs!1114013 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888169) (= lambda!215780 lambda!215678))))

(declare-fun bs!1114014 () Bool)

(assert (= bs!1114014 (and b!4723826 b!4723445)))

(assert (=> bs!1114014 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215780 lambda!215731))))

(declare-fun bs!1114015 () Bool)

(assert (= bs!1114015 (and b!4723826 b!4723503)))

(assert (=> bs!1114015 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215780 lambda!215736))))

(declare-fun bs!1114016 () Bool)

(assert (= bs!1114016 (and b!4723826 b!4722847)))

(assert (=> bs!1114016 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1887727) (= lambda!215780 lambda!215638))))

(declare-fun bs!1114017 () Bool)

(assert (= bs!1114017 (and b!4723826 b!4723828)))

(assert (=> bs!1114017 (= lambda!215780 lambda!215777)))

(declare-fun bs!1114018 () Bool)

(assert (= bs!1114018 (and b!4723826 d!1504127)))

(assert (=> bs!1114018 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888077) (= lambda!215780 lambda!215715))))

(assert (=> bs!1113981 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888441) (= lambda!215780 lambda!215722))))

(declare-fun bs!1114019 () Bool)

(assert (= bs!1114019 (and b!4723826 d!1503899)))

(assert (=> bs!1114019 (= (= (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888111) (= lambda!215780 lambda!215669))))

(assert (=> b!4723826 true))

(declare-fun lambda!215787 () Int)

(declare-fun lt!1888802 () ListMap!5281)

(assert (=> bs!1113976 (= (= lt!1888802 (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215787 lambda!215750))))

(assert (=> bs!1113977 (= (= lt!1888802 (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215787 lambda!215752))))

(assert (=> bs!1113978 (not (= lambda!215787 lambda!215656))))

(assert (=> bs!1113979 (= (= lt!1888802 lt!1888322) (= lambda!215787 lambda!215700))))

(assert (=> bs!1113979 (= (= lt!1888802 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215787 lambda!215698))))

(assert (=> bs!1113980 (= (= lt!1888802 lt!1888078) (= lambda!215787 lambda!215665))))

(assert (=> bs!1113981 (= (= lt!1888802 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215787 lambda!215720))))

(assert (=> bs!1113982 (= (= lt!1888802 lt!1887727) (= lambda!215787 lambda!215658))))

(assert (=> bs!1113983 (= (= lt!1888802 lt!1887947) (= lambda!215787 lambda!215640))))

(assert (=> bs!1113984 (= (= lt!1888802 lt!1888057) (= lambda!215787 lambda!215661))))

(assert (=> bs!1113985 (= (= lt!1888802 lt!1888504) (= lambda!215787 lambda!215740))))

(assert (=> bs!1113986 (= (= lt!1888802 lt!1888056) (= lambda!215787 lambda!215747))))

(assert (=> bs!1113987 (= (= lt!1888802 lt!1888110) (= lambda!215787 lambda!215668))))

(assert (=> bs!1113988 (= (= lt!1888802 lt!1888168) (= lambda!215787 lambda!215677))))

(assert (=> bs!1113989 (= (= lt!1888802 lt!1888294) (= lambda!215787 lambda!215691))))

(assert (=> bs!1113990 (= (= lt!1888802 lt!1888442) (= lambda!215787 lambda!215724))))

(assert (=> bs!1113991 (= (= lt!1888802 lt!1887727) (= lambda!215787 lambda!215662))))

(assert (=> bs!1113992 (= (= lt!1888802 lt!1887727) (= lambda!215787 lambda!215663))))

(assert (=> bs!1113993 (= (= lt!1888802 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215787 lambda!215675))))

(assert (=> bs!1113994 (= (= lt!1888802 lt!1888469) (= lambda!215787 lambda!215733))))

(assert (=> bs!1113995 (= (= lt!1888802 lt!1887727) (= lambda!215787 lambda!215670))))

(assert (=> bs!1113996 (= (= lt!1888802 lt!1887948) (= lambda!215787 lambda!215641))))

(assert (=> bs!1113997 (= (= lt!1888802 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215787 lambda!215689))))

(assert (=> bs!1113998 (= (= lt!1888802 lt!1888056) (= lambda!215787 lambda!215660))))

(assert (=> bs!1113999 (not (= lambda!215787 lambda!215674))))

(assert (=> bs!1113983 (= (= lt!1888802 lt!1887727) (= lambda!215787 lambda!215639))))

(assert (=> bs!1114000 (= (= lt!1888802 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215787 lambda!215697))))

(assert (=> bs!1114001 (= (= lt!1888802 lt!1887727) (= lambda!215787 lambda!215671))))

(assert (=> bs!1113998 (= (= lt!1888802 lt!1887727) (= lambda!215787 lambda!215659))))

(assert (=> bs!1113992 (= (= lt!1888802 lt!1888077) (= lambda!215787 lambda!215664))))

(assert (=> bs!1113985 (= (= lt!1888802 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215787 lambda!215738))))

(assert (=> bs!1114001 (= (= lt!1888802 lt!1888135) (= lambda!215787 lambda!215672))))

(assert (=> bs!1114002 (= (= lt!1888802 lt!1888646) (= lambda!215787 lambda!215756))))

(assert (=> bs!1114003 (= (= lt!1888802 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215787 lambda!215718))))

(assert (=> bs!1113987 (= (= lt!1888802 lt!1887727) (= lambda!215787 lambda!215667))))

(assert (=> bs!1113994 (= (= lt!1888802 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215787 lambda!215732))))

(assert (=> bs!1114004 (= (= lt!1888802 lt!1888136) (= lambda!215787 lambda!215673))))

(assert (=> bs!1114005 (= (= lt!1888802 lt!1888295) (= lambda!215787 lambda!215695))))

(assert (=> bs!1114006 (= (= lt!1888802 lt!1888135) (= lambda!215787 lambda!215776))))

(assert (=> bs!1113989 (= (= lt!1888802 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215787 lambda!215690))))

(assert (=> bs!1114007 (= (= lt!1888802 lt!1887727) (= lambda!215787 lambda!215688))))

(assert (=> bs!1114008 (= (= lt!1888802 lt!1888470) (= lambda!215787 lambda!215734))))

(assert (=> bs!1114009 (= (= lt!1888802 lt!1888505) (= lambda!215787 lambda!215742))))

(assert (=> bs!1113988 (= (= lt!1888802 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215787 lambda!215676))))

(assert (=> bs!1114010 (= (= lt!1888802 lt!1887947) (= lambda!215787 lambda!215744))))

(assert (=> bs!1114011 (= (= lt!1888802 lt!1887727) (= lambda!215787 lambda!215666))))

(assert (=> bs!1113977 (= (= lt!1888802 lt!1888645) (= lambda!215787 lambda!215754))))

(assert (=> b!4723826 (= (= lt!1888802 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) (= lambda!215787 lambda!215780))))

(assert (=> bs!1114012 (= (= lt!1888802 lt!1888323) (= lambda!215787 lambda!215703))))

(assert (=> bs!1114013 (= (= lt!1888802 lt!1888169) (= lambda!215787 lambda!215678))))

(assert (=> bs!1114014 (= (= lt!1888802 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215787 lambda!215731))))

(assert (=> bs!1114015 (= (= lt!1888802 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215787 lambda!215736))))

(assert (=> bs!1114016 (= (= lt!1888802 lt!1887727) (= lambda!215787 lambda!215638))))

(assert (=> bs!1114017 (= (= lt!1888802 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) (= lambda!215787 lambda!215777))))

(assert (=> bs!1114018 (= (= lt!1888802 lt!1888077) (= lambda!215787 lambda!215715))))

(assert (=> bs!1113981 (= (= lt!1888802 lt!1888441) (= lambda!215787 lambda!215722))))

(assert (=> bs!1114019 (= (= lt!1888802 lt!1888111) (= lambda!215787 lambda!215669))))

(assert (=> b!4723826 true))

(declare-fun bs!1114027 () Bool)

(declare-fun d!1504401 () Bool)

(assert (= bs!1114027 (and d!1504401 b!4723638)))

(declare-fun lt!1888803 () ListMap!5281)

(declare-fun lambda!215792 () Int)

(assert (=> bs!1114027 (= (= lt!1888803 (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215792 lambda!215750))))

(declare-fun bs!1114028 () Bool)

(assert (= bs!1114028 (and d!1504401 b!4723636)))

(assert (=> bs!1114028 (= (= lt!1888803 (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215792 lambda!215752))))

(declare-fun bs!1114029 () Bool)

(assert (= bs!1114029 (and d!1504401 d!1503873)))

(assert (=> bs!1114029 (not (= lambda!215792 lambda!215656))))

(declare-fun bs!1114030 () Bool)

(assert (= bs!1114030 (and d!1504401 b!4723308)))

(assert (=> bs!1114030 (= (= lt!1888803 lt!1888322) (= lambda!215792 lambda!215700))))

(assert (=> bs!1114030 (= (= lt!1888803 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215792 lambda!215698))))

(declare-fun bs!1114031 () Bool)

(assert (= bs!1114031 (and d!1504401 d!1503889)))

(assert (=> bs!1114031 (= (= lt!1888803 lt!1888078) (= lambda!215792 lambda!215665))))

(declare-fun bs!1114032 () Bool)

(assert (= bs!1114032 (and d!1504401 b!4723399)))

(assert (=> bs!1114032 (= (= lt!1888803 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215792 lambda!215720))))

(declare-fun bs!1114033 () Bool)

(assert (= bs!1114033 (and d!1504401 b!4722949)))

(assert (=> bs!1114033 (= (= lt!1888803 lt!1887727) (= lambda!215792 lambda!215658))))

(declare-fun bs!1114034 () Bool)

(assert (= bs!1114034 (and d!1504401 b!4722845)))

(assert (=> bs!1114034 (= (= lt!1888803 lt!1887947) (= lambda!215792 lambda!215640))))

(declare-fun bs!1114035 () Bool)

(assert (= bs!1114035 (and d!1504401 d!1503887)))

(assert (=> bs!1114035 (= (= lt!1888803 lt!1888057) (= lambda!215792 lambda!215661))))

(declare-fun bs!1114036 () Bool)

(assert (= bs!1114036 (and d!1504401 b!4723501)))

(assert (=> bs!1114036 (= (= lt!1888803 lt!1888504) (= lambda!215792 lambda!215740))))

(declare-fun bs!1114037 () Bool)

(assert (= bs!1114037 (and d!1504401 d!1504275)))

(assert (=> bs!1114037 (= (= lt!1888803 lt!1888056) (= lambda!215792 lambda!215747))))

(declare-fun bs!1114038 () Bool)

(assert (= bs!1114038 (and d!1504401 b!4722969)))

(assert (=> bs!1114038 (= (= lt!1888803 lt!1888110) (= lambda!215792 lambda!215668))))

(declare-fun bs!1114039 () Bool)

(assert (= bs!1114039 (and d!1504401 b!4723054)))

(assert (=> bs!1114039 (= (= lt!1888803 lt!1888168) (= lambda!215792 lambda!215677))))

(declare-fun bs!1114040 () Bool)

(assert (= bs!1114040 (and d!1504401 b!4723273)))

(assert (=> bs!1114040 (= (= lt!1888803 lt!1888294) (= lambda!215792 lambda!215691))))

(declare-fun bs!1114041 () Bool)

(assert (= bs!1114041 (and d!1504401 d!1504139)))

(assert (=> bs!1114041 (= (= lt!1888803 lt!1888442) (= lambda!215792 lambda!215724))))

(declare-fun bs!1114042 () Bool)

(assert (= bs!1114042 (and d!1504401 b!4722954)))

(assert (=> bs!1114042 (= (= lt!1888803 lt!1887727) (= lambda!215792 lambda!215662))))

(declare-fun bs!1114043 () Bool)

(assert (= bs!1114043 (and d!1504401 b!4722952)))

(assert (=> bs!1114043 (= (= lt!1888803 lt!1887727) (= lambda!215792 lambda!215663))))

(declare-fun bs!1114044 () Bool)

(assert (= bs!1114044 (and d!1504401 b!4723056)))

(assert (=> bs!1114044 (= (= lt!1888803 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215792 lambda!215675))))

(declare-fun bs!1114045 () Bool)

(assert (= bs!1114045 (and d!1504401 b!4723443)))

(assert (=> bs!1114045 (= (= lt!1888803 lt!1888469) (= lambda!215792 lambda!215733))))

(declare-fun bs!1114046 () Bool)

(assert (= bs!1114046 (and d!1504401 b!4722978)))

(assert (=> bs!1114046 (= (= lt!1888803 lt!1887727) (= lambda!215792 lambda!215670))))

(declare-fun bs!1114047 () Bool)

(assert (= bs!1114047 (and d!1504401 d!1503799)))

(assert (=> bs!1114047 (= (= lt!1888803 lt!1887948) (= lambda!215792 lambda!215641))))

(declare-fun bs!1114048 () Bool)

(assert (= bs!1114048 (and d!1504401 b!4723275)))

(assert (=> bs!1114048 (= (= lt!1888803 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215792 lambda!215689))))

(declare-fun bs!1114049 () Bool)

(assert (= bs!1114049 (and d!1504401 b!4722947)))

(assert (=> bs!1114049 (= (= lt!1888803 lt!1888056) (= lambda!215792 lambda!215660))))

(declare-fun bs!1114050 () Bool)

(assert (= bs!1114050 (and d!1504401 d!1503911)))

(assert (=> bs!1114050 (not (= lambda!215792 lambda!215674))))

(assert (=> bs!1114034 (= (= lt!1888803 lt!1887727) (= lambda!215792 lambda!215639))))

(declare-fun bs!1114051 () Bool)

(assert (= bs!1114051 (and d!1504401 b!4723310)))

(assert (=> bs!1114051 (= (= lt!1888803 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215792 lambda!215697))))

(declare-fun bs!1114052 () Bool)

(assert (= bs!1114052 (and d!1504401 b!4722976)))

(assert (=> bs!1114052 (= (= lt!1888803 lt!1887727) (= lambda!215792 lambda!215671))))

(assert (=> bs!1114049 (= (= lt!1888803 lt!1887727) (= lambda!215792 lambda!215659))))

(assert (=> bs!1114043 (= (= lt!1888803 lt!1888077) (= lambda!215792 lambda!215664))))

(assert (=> bs!1114036 (= (= lt!1888803 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215792 lambda!215738))))

(assert (=> bs!1114052 (= (= lt!1888803 lt!1888135) (= lambda!215792 lambda!215672))))

(declare-fun bs!1114057 () Bool)

(assert (= bs!1114057 (and d!1504401 d!1504287)))

(assert (=> bs!1114057 (= (= lt!1888803 lt!1888646) (= lambda!215792 lambda!215756))))

(declare-fun bs!1114059 () Bool)

(assert (= bs!1114059 (and d!1504401 b!4723401)))

(assert (=> bs!1114059 (= (= lt!1888803 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215792 lambda!215718))))

(assert (=> bs!1114038 (= (= lt!1888803 lt!1887727) (= lambda!215792 lambda!215667))))

(assert (=> bs!1114045 (= (= lt!1888803 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215792 lambda!215732))))

(declare-fun bs!1114061 () Bool)

(assert (= bs!1114061 (and d!1504401 d!1503907)))

(assert (=> bs!1114061 (= (= lt!1888803 lt!1888136) (= lambda!215792 lambda!215673))))

(declare-fun bs!1114063 () Bool)

(assert (= bs!1114063 (and d!1504401 d!1504043)))

(assert (=> bs!1114063 (= (= lt!1888803 lt!1888295) (= lambda!215792 lambda!215695))))

(declare-fun bs!1114065 () Bool)

(assert (= bs!1114065 (and d!1504401 d!1504397)))

(assert (=> bs!1114065 (= (= lt!1888803 lt!1888135) (= lambda!215792 lambda!215776))))

(assert (=> bs!1114040 (= (= lt!1888803 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215792 lambda!215690))))

(declare-fun bs!1114067 () Bool)

(assert (= bs!1114067 (and d!1504401 d!1503991)))

(assert (=> bs!1114067 (= (= lt!1888803 lt!1887727) (= lambda!215792 lambda!215688))))

(declare-fun bs!1114069 () Bool)

(assert (= bs!1114069 (and d!1504401 d!1504161)))

(assert (=> bs!1114069 (= (= lt!1888803 lt!1888470) (= lambda!215792 lambda!215734))))

(declare-fun bs!1114071 () Bool)

(assert (= bs!1114071 (and d!1504401 d!1504211)))

(assert (=> bs!1114071 (= (= lt!1888803 lt!1888505) (= lambda!215792 lambda!215742))))

(assert (=> bs!1114039 (= (= lt!1888803 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215792 lambda!215676))))

(declare-fun bs!1114074 () Bool)

(assert (= bs!1114074 (and d!1504401 d!1504245)))

(assert (=> bs!1114074 (= (= lt!1888803 lt!1887947) (= lambda!215792 lambda!215744))))

(declare-fun bs!1114076 () Bool)

(assert (= bs!1114076 (and d!1504401 b!4722971)))

(assert (=> bs!1114076 (= (= lt!1888803 lt!1887727) (= lambda!215792 lambda!215666))))

(assert (=> bs!1114028 (= (= lt!1888803 lt!1888645) (= lambda!215792 lambda!215754))))

(declare-fun bs!1114079 () Bool)

(assert (= bs!1114079 (and d!1504401 b!4723826)))

(assert (=> bs!1114079 (= (= lt!1888803 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) (= lambda!215792 lambda!215780))))

(declare-fun bs!1114081 () Bool)

(assert (= bs!1114081 (and d!1504401 d!1504085)))

(assert (=> bs!1114081 (= (= lt!1888803 lt!1888323) (= lambda!215792 lambda!215703))))

(declare-fun bs!1114083 () Bool)

(assert (= bs!1114083 (and d!1504401 d!1503963)))

(assert (=> bs!1114083 (= (= lt!1888803 lt!1888169) (= lambda!215792 lambda!215678))))

(declare-fun bs!1114084 () Bool)

(assert (= bs!1114084 (and d!1504401 b!4723445)))

(assert (=> bs!1114084 (= (= lt!1888803 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215792 lambda!215731))))

(declare-fun bs!1114085 () Bool)

(assert (= bs!1114085 (and d!1504401 b!4723503)))

(assert (=> bs!1114085 (= (= lt!1888803 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215792 lambda!215736))))

(declare-fun bs!1114087 () Bool)

(assert (= bs!1114087 (and d!1504401 b!4722847)))

(assert (=> bs!1114087 (= (= lt!1888803 lt!1887727) (= lambda!215792 lambda!215638))))

(assert (=> bs!1114079 (= (= lt!1888803 lt!1888802) (= lambda!215792 lambda!215787))))

(declare-fun bs!1114090 () Bool)

(assert (= bs!1114090 (and d!1504401 b!4723828)))

(assert (=> bs!1114090 (= (= lt!1888803 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) (= lambda!215792 lambda!215777))))

(declare-fun bs!1114092 () Bool)

(assert (= bs!1114092 (and d!1504401 d!1504127)))

(assert (=> bs!1114092 (= (= lt!1888803 lt!1888077) (= lambda!215792 lambda!215715))))

(assert (=> bs!1114032 (= (= lt!1888803 lt!1888441) (= lambda!215792 lambda!215722))))

(declare-fun bs!1114094 () Bool)

(assert (= bs!1114094 (and d!1504401 d!1503899)))

(assert (=> bs!1114094 (= (= lt!1888803 lt!1888111) (= lambda!215792 lambda!215669))))

(assert (=> d!1504401 true))

(declare-fun call!330444 () Bool)

(declare-fun c!806769 () Bool)

(declare-fun bm!330438 () Bool)

(assert (=> bm!330438 (= call!330444 (forall!11590 (ite c!806769 (toList!5917 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) (t!360220 (Cons!52830 lt!1887722 lt!1887720))) (ite c!806769 lambda!215777 lambda!215787)))))

(declare-fun e!2946157 () ListMap!5281)

(assert (=> b!4723826 (= e!2946157 lt!1888802)))

(declare-fun lt!1888797 () ListMap!5281)

(assert (=> b!4723826 (= lt!1888797 (+!2269 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (h!59177 (t!360220 (Cons!52830 lt!1887722 lt!1887720)))))))

(assert (=> b!4723826 (= lt!1888802 (addToMapMapFromBucket!1444 (t!360220 (t!360220 (Cons!52830 lt!1887722 lt!1887720))) (+!2269 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (h!59177 (t!360220 (Cons!52830 lt!1887722 lt!1887720))))))))

(declare-fun lt!1888812 () Unit!130119)

(declare-fun call!330445 () Unit!130119)

(assert (=> b!4723826 (= lt!1888812 call!330445)))

(assert (=> b!4723826 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) lambda!215780)))

(declare-fun lt!1888800 () Unit!130119)

(assert (=> b!4723826 (= lt!1888800 lt!1888812)))

(assert (=> b!4723826 (forall!11590 (toList!5917 lt!1888797) lambda!215787)))

(declare-fun lt!1888798 () Unit!130119)

(declare-fun Unit!130445 () Unit!130119)

(assert (=> b!4723826 (= lt!1888798 Unit!130445)))

(assert (=> b!4723826 (forall!11590 (t!360220 (t!360220 (Cons!52830 lt!1887722 lt!1887720))) lambda!215787)))

(declare-fun lt!1888796 () Unit!130119)

(declare-fun Unit!130446 () Unit!130119)

(assert (=> b!4723826 (= lt!1888796 Unit!130446)))

(declare-fun lt!1888807 () Unit!130119)

(declare-fun Unit!130447 () Unit!130119)

(assert (=> b!4723826 (= lt!1888807 Unit!130447)))

(declare-fun lt!1888810 () Unit!130119)

(assert (=> b!4723826 (= lt!1888810 (forallContained!3639 (toList!5917 lt!1888797) lambda!215787 (h!59177 (t!360220 (Cons!52830 lt!1887722 lt!1887720)))))))

(assert (=> b!4723826 (contains!16175 lt!1888797 (_1!30519 (h!59177 (t!360220 (Cons!52830 lt!1887722 lt!1887720)))))))

(declare-fun lt!1888813 () Unit!130119)

(declare-fun Unit!130448 () Unit!130119)

(assert (=> b!4723826 (= lt!1888813 Unit!130448)))

(assert (=> b!4723826 (contains!16175 lt!1888802 (_1!30519 (h!59177 (t!360220 (Cons!52830 lt!1887722 lt!1887720)))))))

(declare-fun lt!1888806 () Unit!130119)

(declare-fun Unit!130449 () Unit!130119)

(assert (=> b!4723826 (= lt!1888806 Unit!130449)))

(assert (=> b!4723826 call!330444))

(declare-fun lt!1888794 () Unit!130119)

(declare-fun Unit!130450 () Unit!130119)

(assert (=> b!4723826 (= lt!1888794 Unit!130450)))

(assert (=> b!4723826 (forall!11590 (toList!5917 lt!1888797) lambda!215787)))

(declare-fun lt!1888793 () Unit!130119)

(declare-fun Unit!130451 () Unit!130119)

(assert (=> b!4723826 (= lt!1888793 Unit!130451)))

(declare-fun lt!1888804 () Unit!130119)

(declare-fun Unit!130452 () Unit!130119)

(assert (=> b!4723826 (= lt!1888804 Unit!130452)))

(declare-fun lt!1888795 () Unit!130119)

(assert (=> b!4723826 (= lt!1888795 (addForallContainsKeyThenBeforeAdding!796 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) lt!1888802 (_1!30519 (h!59177 (t!360220 (Cons!52830 lt!1887722 lt!1887720)))) (_2!30519 (h!59177 (t!360220 (Cons!52830 lt!1887722 lt!1887720))))))))

(assert (=> b!4723826 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) lambda!215787)))

(declare-fun lt!1888808 () Unit!130119)

(assert (=> b!4723826 (= lt!1888808 lt!1888795)))

(declare-fun call!330443 () Bool)

(assert (=> b!4723826 call!330443))

(declare-fun lt!1888799 () Unit!130119)

(declare-fun Unit!130453 () Unit!130119)

(assert (=> b!4723826 (= lt!1888799 Unit!130453)))

(declare-fun res!1998698 () Bool)

(assert (=> b!4723826 (= res!1998698 (forall!11590 (t!360220 (Cons!52830 lt!1887722 lt!1887720)) lambda!215787))))

(declare-fun e!2946159 () Bool)

(assert (=> b!4723826 (=> (not res!1998698) (not e!2946159))))

(assert (=> b!4723826 e!2946159))

(declare-fun lt!1888805 () Unit!130119)

(declare-fun Unit!130454 () Unit!130119)

(assert (=> b!4723826 (= lt!1888805 Unit!130454)))

(declare-fun e!2946158 () Bool)

(assert (=> d!1504401 e!2946158))

(declare-fun res!1998700 () Bool)

(assert (=> d!1504401 (=> (not res!1998700) (not e!2946158))))

(assert (=> d!1504401 (= res!1998700 (forall!11590 (t!360220 (Cons!52830 lt!1887722 lt!1887720)) lambda!215792))))

(assert (=> d!1504401 (= lt!1888803 e!2946157)))

(assert (=> d!1504401 (= c!806769 ((_ is Nil!52830) (t!360220 (Cons!52830 lt!1887722 lt!1887720))))))

(assert (=> d!1504401 (noDuplicateKeys!2014 (t!360220 (Cons!52830 lt!1887722 lt!1887720)))))

(assert (=> d!1504401 (= (addToMapMapFromBucket!1444 (t!360220 (Cons!52830 lt!1887722 lt!1887720)) (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) lt!1888803)))

(declare-fun b!4723827 () Bool)

(assert (=> b!4723827 (= e!2946159 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) lambda!215787))))

(assert (=> b!4723828 (= e!2946157 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720))))))

(declare-fun lt!1888801 () Unit!130119)

(assert (=> b!4723828 (= lt!1888801 call!330445)))

(assert (=> b!4723828 call!330444))

(declare-fun lt!1888811 () Unit!130119)

(assert (=> b!4723828 (= lt!1888811 lt!1888801)))

(assert (=> b!4723828 call!330443))

(declare-fun lt!1888809 () Unit!130119)

(declare-fun Unit!130455 () Unit!130119)

(assert (=> b!4723828 (= lt!1888809 Unit!130455)))

(declare-fun b!4723829 () Bool)

(assert (=> b!4723829 (= e!2946158 (invariantList!1511 (toList!5917 lt!1888803)))))

(declare-fun b!4723830 () Bool)

(declare-fun res!1998699 () Bool)

(assert (=> b!4723830 (=> (not res!1998699) (not e!2946158))))

(assert (=> b!4723830 (= res!1998699 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) lambda!215792))))

(declare-fun bm!330439 () Bool)

(assert (=> bm!330439 (= call!330443 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) (ite c!806769 lambda!215777 lambda!215787)))))

(declare-fun bm!330440 () Bool)

(assert (=> bm!330440 (= call!330445 (lemmaContainsAllItsOwnKeys!797 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(assert (= (and d!1504401 c!806769) b!4723828))

(assert (= (and d!1504401 (not c!806769)) b!4723826))

(assert (= (and b!4723826 res!1998698) b!4723827))

(assert (= (or b!4723828 b!4723826) bm!330440))

(assert (= (or b!4723828 b!4723826) bm!330439))

(assert (= (or b!4723828 b!4723826) bm!330438))

(assert (= (and d!1504401 res!1998700) b!4723830))

(assert (= (and b!4723830 res!1998699) b!4723829))

(declare-fun m!5660965 () Bool)

(assert (=> bm!330439 m!5660965))

(assert (=> bm!330440 m!5659079))

(declare-fun m!5660967 () Bool)

(assert (=> bm!330440 m!5660967))

(declare-fun m!5660969 () Bool)

(assert (=> b!4723829 m!5660969))

(declare-fun m!5660971 () Bool)

(assert (=> d!1504401 m!5660971))

(assert (=> d!1504401 m!5660375))

(declare-fun m!5660973 () Bool)

(assert (=> b!4723830 m!5660973))

(declare-fun m!5660975 () Bool)

(assert (=> bm!330438 m!5660975))

(declare-fun m!5660977 () Bool)

(assert (=> b!4723826 m!5660977))

(declare-fun m!5660979 () Bool)

(assert (=> b!4723826 m!5660979))

(declare-fun m!5660981 () Bool)

(assert (=> b!4723826 m!5660981))

(declare-fun m!5660983 () Bool)

(assert (=> b!4723826 m!5660983))

(assert (=> b!4723826 m!5659079))

(declare-fun m!5660985 () Bool)

(assert (=> b!4723826 m!5660985))

(declare-fun m!5660987 () Bool)

(assert (=> b!4723826 m!5660987))

(declare-fun m!5660989 () Bool)

(assert (=> b!4723826 m!5660989))

(declare-fun m!5660991 () Bool)

(assert (=> b!4723826 m!5660991))

(declare-fun m!5660993 () Bool)

(assert (=> b!4723826 m!5660993))

(assert (=> b!4723826 m!5660983))

(assert (=> b!4723826 m!5659079))

(assert (=> b!4723826 m!5660987))

(declare-fun m!5660995 () Bool)

(assert (=> b!4723826 m!5660995))

(declare-fun m!5660997 () Bool)

(assert (=> b!4723826 m!5660997))

(assert (=> b!4723827 m!5660979))

(assert (=> b!4722976 d!1504401))

(declare-fun d!1504407 () Bool)

(declare-fun res!1998715 () Bool)

(declare-fun e!2946177 () Bool)

(assert (=> d!1504407 (=> res!1998715 e!2946177)))

(assert (=> d!1504407 (= res!1998715 ((_ is Nil!52830) (Cons!52830 lt!1887722 lt!1887720)))))

(assert (=> d!1504407 (= (forall!11590 (Cons!52830 lt!1887722 lt!1887720) lambda!215672) e!2946177)))

(declare-fun b!4723867 () Bool)

(declare-fun e!2946178 () Bool)

(assert (=> b!4723867 (= e!2946177 e!2946178)))

(declare-fun res!1998716 () Bool)

(assert (=> b!4723867 (=> (not res!1998716) (not e!2946178))))

(assert (=> b!4723867 (= res!1998716 (dynLambda!21821 lambda!215672 (h!59177 (Cons!52830 lt!1887722 lt!1887720))))))

(declare-fun b!4723868 () Bool)

(assert (=> b!4723868 (= e!2946178 (forall!11590 (t!360220 (Cons!52830 lt!1887722 lt!1887720)) lambda!215672))))

(assert (= (and d!1504407 (not res!1998715)) b!4723867))

(assert (= (and b!4723867 res!1998716) b!4723868))

(declare-fun b_lambda!178943 () Bool)

(assert (=> (not b_lambda!178943) (not b!4723867)))

(assert (=> b!4723867 m!5660931))

(assert (=> b!4723868 m!5659073))

(assert (=> b!4722976 d!1504407))

(declare-fun d!1504409 () Bool)

(assert (=> d!1504409 (= (invariantList!1511 (toList!5917 lt!1888078)) (noDuplicatedKeys!374 (toList!5917 lt!1888078)))))

(declare-fun bs!1114123 () Bool)

(assert (= bs!1114123 d!1504409))

(declare-fun m!5660999 () Bool)

(assert (=> bs!1114123 m!5660999))

(assert (=> b!4722955 d!1504409))

(declare-fun d!1504411 () Bool)

(declare-fun e!2946179 () Bool)

(assert (=> d!1504411 e!2946179))

(declare-fun res!1998718 () Bool)

(assert (=> d!1504411 (=> (not res!1998718) (not e!2946179))))

(declare-fun lt!1888858 () ListMap!5281)

(assert (=> d!1504411 (= res!1998718 (contains!16175 lt!1888858 (_1!30519 (h!59177 oldBucket!34))))))

(declare-fun lt!1888859 () List!52954)

(assert (=> d!1504411 (= lt!1888858 (ListMap!5282 lt!1888859))))

(declare-fun lt!1888856 () Unit!130119)

(declare-fun lt!1888857 () Unit!130119)

(assert (=> d!1504411 (= lt!1888856 lt!1888857)))

(assert (=> d!1504411 (= (getValueByKey!1957 lt!1888859 (_1!30519 (h!59177 oldBucket!34))) (Some!12360 (_2!30519 (h!59177 oldBucket!34))))))

(assert (=> d!1504411 (= lt!1888857 (lemmaContainsTupThenGetReturnValue!1086 lt!1888859 (_1!30519 (h!59177 oldBucket!34)) (_2!30519 (h!59177 oldBucket!34))))))

(assert (=> d!1504411 (= lt!1888859 (insertNoDuplicatedKeys!594 (toList!5917 lt!1887727) (_1!30519 (h!59177 oldBucket!34)) (_2!30519 (h!59177 oldBucket!34))))))

(assert (=> d!1504411 (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888858)))

(declare-fun b!4723869 () Bool)

(declare-fun res!1998717 () Bool)

(assert (=> b!4723869 (=> (not res!1998717) (not e!2946179))))

(assert (=> b!4723869 (= res!1998717 (= (getValueByKey!1957 (toList!5917 lt!1888858) (_1!30519 (h!59177 oldBucket!34))) (Some!12360 (_2!30519 (h!59177 oldBucket!34)))))))

(declare-fun b!4723870 () Bool)

(assert (=> b!4723870 (= e!2946179 (contains!16180 (toList!5917 lt!1888858) (h!59177 oldBucket!34)))))

(assert (= (and d!1504411 res!1998718) b!4723869))

(assert (= (and b!4723869 res!1998717) b!4723870))

(declare-fun m!5661001 () Bool)

(assert (=> d!1504411 m!5661001))

(declare-fun m!5661003 () Bool)

(assert (=> d!1504411 m!5661003))

(declare-fun m!5661005 () Bool)

(assert (=> d!1504411 m!5661005))

(declare-fun m!5661007 () Bool)

(assert (=> d!1504411 m!5661007))

(declare-fun m!5661009 () Bool)

(assert (=> b!4723869 m!5661009))

(declare-fun m!5661011 () Bool)

(assert (=> b!4723870 m!5661011))

(assert (=> b!4722969 d!1504411))

(declare-fun d!1504413 () Bool)

(declare-fun e!2946181 () Bool)

(assert (=> d!1504413 e!2946181))

(declare-fun res!1998720 () Bool)

(assert (=> d!1504413 (=> res!1998720 e!2946181)))

(declare-fun e!2946183 () Bool)

(assert (=> d!1504413 (= res!1998720 e!2946183)))

(declare-fun res!1998719 () Bool)

(assert (=> d!1504413 (=> (not res!1998719) (not e!2946183))))

(declare-fun lt!1888867 () Bool)

(assert (=> d!1504413 (= res!1998719 (not lt!1888867))))

(declare-fun lt!1888860 () Bool)

(assert (=> d!1504413 (= lt!1888867 lt!1888860)))

(declare-fun lt!1888861 () Unit!130119)

(declare-fun e!2946184 () Unit!130119)

(assert (=> d!1504413 (= lt!1888861 e!2946184)))

(declare-fun c!806780 () Bool)

(assert (=> d!1504413 (= c!806780 lt!1888860)))

(assert (=> d!1504413 (= lt!1888860 (containsKey!3373 (toList!5917 lt!1888105) (_1!30519 (h!59177 oldBucket!34))))))

(assert (=> d!1504413 (= (contains!16175 lt!1888105 (_1!30519 (h!59177 oldBucket!34))) lt!1888867)))

(declare-fun b!4723871 () Bool)

(declare-fun e!2946180 () Bool)

(assert (=> b!4723871 (= e!2946180 (contains!16179 (keys!18974 lt!1888105) (_1!30519 (h!59177 oldBucket!34))))))

(declare-fun b!4723872 () Bool)

(assert (=> b!4723872 (= e!2946181 e!2946180)))

(declare-fun res!1998721 () Bool)

(assert (=> b!4723872 (=> (not res!1998721) (not e!2946180))))

(assert (=> b!4723872 (= res!1998721 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1888105) (_1!30519 (h!59177 oldBucket!34)))))))

(declare-fun b!4723873 () Bool)

(declare-fun e!2946185 () List!52957)

(assert (=> b!4723873 (= e!2946185 (keys!18974 lt!1888105))))

(declare-fun b!4723874 () Bool)

(assert (=> b!4723874 (= e!2946185 (getKeysList!951 (toList!5917 lt!1888105)))))

(declare-fun b!4723875 () Bool)

(declare-fun e!2946182 () Unit!130119)

(assert (=> b!4723875 (= e!2946184 e!2946182)))

(declare-fun c!806782 () Bool)

(declare-fun call!330449 () Bool)

(assert (=> b!4723875 (= c!806782 call!330449)))

(declare-fun b!4723876 () Bool)

(assert (=> b!4723876 false))

(declare-fun lt!1888863 () Unit!130119)

(declare-fun lt!1888866 () Unit!130119)

(assert (=> b!4723876 (= lt!1888863 lt!1888866)))

(assert (=> b!4723876 (containsKey!3373 (toList!5917 lt!1888105) (_1!30519 (h!59177 oldBucket!34)))))

(assert (=> b!4723876 (= lt!1888866 (lemmaInGetKeysListThenContainsKey!950 (toList!5917 lt!1888105) (_1!30519 (h!59177 oldBucket!34))))))

(declare-fun Unit!130456 () Unit!130119)

(assert (=> b!4723876 (= e!2946182 Unit!130456)))

(declare-fun b!4723877 () Bool)

(declare-fun Unit!130457 () Unit!130119)

(assert (=> b!4723877 (= e!2946182 Unit!130457)))

(declare-fun b!4723878 () Bool)

(assert (=> b!4723878 (= e!2946183 (not (contains!16179 (keys!18974 lt!1888105) (_1!30519 (h!59177 oldBucket!34)))))))

(declare-fun bm!330444 () Bool)

(assert (=> bm!330444 (= call!330449 (contains!16179 e!2946185 (_1!30519 (h!59177 oldBucket!34))))))

(declare-fun c!806781 () Bool)

(assert (=> bm!330444 (= c!806781 c!806780)))

(declare-fun b!4723879 () Bool)

(declare-fun lt!1888864 () Unit!130119)

(assert (=> b!4723879 (= e!2946184 lt!1888864)))

(declare-fun lt!1888862 () Unit!130119)

(assert (=> b!4723879 (= lt!1888862 (lemmaContainsKeyImpliesGetValueByKeyDefined!1848 (toList!5917 lt!1888105) (_1!30519 (h!59177 oldBucket!34))))))

(assert (=> b!4723879 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1888105) (_1!30519 (h!59177 oldBucket!34))))))

(declare-fun lt!1888865 () Unit!130119)

(assert (=> b!4723879 (= lt!1888865 lt!1888862)))

(assert (=> b!4723879 (= lt!1888864 (lemmaInListThenGetKeysListContains!946 (toList!5917 lt!1888105) (_1!30519 (h!59177 oldBucket!34))))))

(assert (=> b!4723879 call!330449))

(assert (= (and d!1504413 c!806780) b!4723879))

(assert (= (and d!1504413 (not c!806780)) b!4723875))

(assert (= (and b!4723875 c!806782) b!4723876))

(assert (= (and b!4723875 (not c!806782)) b!4723877))

(assert (= (or b!4723879 b!4723875) bm!330444))

(assert (= (and bm!330444 c!806781) b!4723874))

(assert (= (and bm!330444 (not c!806781)) b!4723873))

(assert (= (and d!1504413 res!1998719) b!4723878))

(assert (= (and d!1504413 (not res!1998720)) b!4723872))

(assert (= (and b!4723872 res!1998721) b!4723871))

(declare-fun m!5661013 () Bool)

(assert (=> b!4723879 m!5661013))

(declare-fun m!5661015 () Bool)

(assert (=> b!4723879 m!5661015))

(assert (=> b!4723879 m!5661015))

(declare-fun m!5661017 () Bool)

(assert (=> b!4723879 m!5661017))

(declare-fun m!5661019 () Bool)

(assert (=> b!4723879 m!5661019))

(declare-fun m!5661021 () Bool)

(assert (=> b!4723876 m!5661021))

(declare-fun m!5661023 () Bool)

(assert (=> b!4723876 m!5661023))

(assert (=> b!4723872 m!5661015))

(assert (=> b!4723872 m!5661015))

(assert (=> b!4723872 m!5661017))

(declare-fun m!5661025 () Bool)

(assert (=> b!4723873 m!5661025))

(declare-fun m!5661027 () Bool)

(assert (=> b!4723874 m!5661027))

(assert (=> b!4723878 m!5661025))

(assert (=> b!4723878 m!5661025))

(declare-fun m!5661029 () Bool)

(assert (=> b!4723878 m!5661029))

(assert (=> d!1504413 m!5661021))

(declare-fun m!5661031 () Bool)

(assert (=> bm!330444 m!5661031))

(assert (=> b!4723871 m!5661025))

(assert (=> b!4723871 m!5661025))

(assert (=> b!4723871 m!5661029))

(assert (=> b!4722969 d!1504413))

(declare-fun d!1504415 () Bool)

(declare-fun res!1998722 () Bool)

(declare-fun e!2946186 () Bool)

(assert (=> d!1504415 (=> res!1998722 e!2946186)))

(assert (=> d!1504415 (= res!1998722 ((_ is Nil!52830) oldBucket!34))))

(assert (=> d!1504415 (= (forall!11590 oldBucket!34 lambda!215668) e!2946186)))

(declare-fun b!4723880 () Bool)

(declare-fun e!2946187 () Bool)

(assert (=> b!4723880 (= e!2946186 e!2946187)))

(declare-fun res!1998723 () Bool)

(assert (=> b!4723880 (=> (not res!1998723) (not e!2946187))))

(assert (=> b!4723880 (= res!1998723 (dynLambda!21821 lambda!215668 (h!59177 oldBucket!34)))))

(declare-fun b!4723881 () Bool)

(assert (=> b!4723881 (= e!2946187 (forall!11590 (t!360220 oldBucket!34) lambda!215668))))

(assert (= (and d!1504415 (not res!1998722)) b!4723880))

(assert (= (and b!4723880 res!1998723) b!4723881))

(declare-fun b_lambda!178945 () Bool)

(assert (=> (not b_lambda!178945) (not b!4723880)))

(declare-fun m!5661033 () Bool)

(assert (=> b!4723880 m!5661033))

(assert (=> b!4723881 m!5659019))

(assert (=> b!4722969 d!1504415))

(declare-fun bs!1114152 () Bool)

(declare-fun d!1504417 () Bool)

(assert (= bs!1114152 (and d!1504417 b!4723638)))

(declare-fun lambda!215795 () Int)

(assert (=> bs!1114152 (= (= lt!1888110 (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215795 lambda!215750))))

(declare-fun bs!1114153 () Bool)

(assert (= bs!1114153 (and d!1504417 d!1503873)))

(assert (=> bs!1114153 (not (= lambda!215795 lambda!215656))))

(declare-fun bs!1114154 () Bool)

(assert (= bs!1114154 (and d!1504417 b!4723308)))

(assert (=> bs!1114154 (= (= lt!1888110 lt!1888322) (= lambda!215795 lambda!215700))))

(assert (=> bs!1114154 (= (= lt!1888110 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215795 lambda!215698))))

(declare-fun bs!1114155 () Bool)

(assert (= bs!1114155 (and d!1504417 d!1503889)))

(assert (=> bs!1114155 (= (= lt!1888110 lt!1888078) (= lambda!215795 lambda!215665))))

(declare-fun bs!1114156 () Bool)

(assert (= bs!1114156 (and d!1504417 b!4723399)))

(assert (=> bs!1114156 (= (= lt!1888110 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215795 lambda!215720))))

(declare-fun bs!1114157 () Bool)

(assert (= bs!1114157 (and d!1504417 b!4722949)))

(assert (=> bs!1114157 (= (= lt!1888110 lt!1887727) (= lambda!215795 lambda!215658))))

(declare-fun bs!1114158 () Bool)

(assert (= bs!1114158 (and d!1504417 b!4722845)))

(assert (=> bs!1114158 (= (= lt!1888110 lt!1887947) (= lambda!215795 lambda!215640))))

(declare-fun bs!1114159 () Bool)

(assert (= bs!1114159 (and d!1504417 d!1503887)))

(assert (=> bs!1114159 (= (= lt!1888110 lt!1888057) (= lambda!215795 lambda!215661))))

(declare-fun bs!1114160 () Bool)

(assert (= bs!1114160 (and d!1504417 b!4723501)))

(assert (=> bs!1114160 (= (= lt!1888110 lt!1888504) (= lambda!215795 lambda!215740))))

(declare-fun bs!1114161 () Bool)

(assert (= bs!1114161 (and d!1504417 d!1504275)))

(assert (=> bs!1114161 (= (= lt!1888110 lt!1888056) (= lambda!215795 lambda!215747))))

(declare-fun bs!1114162 () Bool)

(assert (= bs!1114162 (and d!1504417 b!4722969)))

(assert (=> bs!1114162 (= lambda!215795 lambda!215668)))

(declare-fun bs!1114163 () Bool)

(assert (= bs!1114163 (and d!1504417 b!4723054)))

(assert (=> bs!1114163 (= (= lt!1888110 lt!1888168) (= lambda!215795 lambda!215677))))

(declare-fun bs!1114164 () Bool)

(assert (= bs!1114164 (and d!1504417 b!4723273)))

(assert (=> bs!1114164 (= (= lt!1888110 lt!1888294) (= lambda!215795 lambda!215691))))

(declare-fun bs!1114165 () Bool)

(assert (= bs!1114165 (and d!1504417 d!1504139)))

(assert (=> bs!1114165 (= (= lt!1888110 lt!1888442) (= lambda!215795 lambda!215724))))

(declare-fun bs!1114166 () Bool)

(assert (= bs!1114166 (and d!1504417 b!4722954)))

(assert (=> bs!1114166 (= (= lt!1888110 lt!1887727) (= lambda!215795 lambda!215662))))

(declare-fun bs!1114167 () Bool)

(assert (= bs!1114167 (and d!1504417 b!4722952)))

(assert (=> bs!1114167 (= (= lt!1888110 lt!1887727) (= lambda!215795 lambda!215663))))

(declare-fun bs!1114168 () Bool)

(assert (= bs!1114168 (and d!1504417 b!4723056)))

(assert (=> bs!1114168 (= (= lt!1888110 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215795 lambda!215675))))

(declare-fun bs!1114169 () Bool)

(assert (= bs!1114169 (and d!1504417 b!4723443)))

(assert (=> bs!1114169 (= (= lt!1888110 lt!1888469) (= lambda!215795 lambda!215733))))

(declare-fun bs!1114170 () Bool)

(assert (= bs!1114170 (and d!1504417 d!1504401)))

(assert (=> bs!1114170 (= (= lt!1888110 lt!1888803) (= lambda!215795 lambda!215792))))

(declare-fun bs!1114171 () Bool)

(assert (= bs!1114171 (and d!1504417 b!4723636)))

(assert (=> bs!1114171 (= (= lt!1888110 (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215795 lambda!215752))))

(declare-fun bs!1114172 () Bool)

(assert (= bs!1114172 (and d!1504417 b!4722978)))

(assert (=> bs!1114172 (= (= lt!1888110 lt!1887727) (= lambda!215795 lambda!215670))))

(declare-fun bs!1114173 () Bool)

(assert (= bs!1114173 (and d!1504417 d!1503799)))

(assert (=> bs!1114173 (= (= lt!1888110 lt!1887948) (= lambda!215795 lambda!215641))))

(declare-fun bs!1114174 () Bool)

(assert (= bs!1114174 (and d!1504417 b!4723275)))

(assert (=> bs!1114174 (= (= lt!1888110 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215795 lambda!215689))))

(declare-fun bs!1114175 () Bool)

(assert (= bs!1114175 (and d!1504417 b!4722947)))

(assert (=> bs!1114175 (= (= lt!1888110 lt!1888056) (= lambda!215795 lambda!215660))))

(declare-fun bs!1114176 () Bool)

(assert (= bs!1114176 (and d!1504417 d!1503911)))

(assert (=> bs!1114176 (not (= lambda!215795 lambda!215674))))

(assert (=> bs!1114158 (= (= lt!1888110 lt!1887727) (= lambda!215795 lambda!215639))))

(declare-fun bs!1114177 () Bool)

(assert (= bs!1114177 (and d!1504417 b!4723310)))

(assert (=> bs!1114177 (= (= lt!1888110 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215795 lambda!215697))))

(declare-fun bs!1114178 () Bool)

(assert (= bs!1114178 (and d!1504417 b!4722976)))

(assert (=> bs!1114178 (= (= lt!1888110 lt!1887727) (= lambda!215795 lambda!215671))))

(assert (=> bs!1114175 (= (= lt!1888110 lt!1887727) (= lambda!215795 lambda!215659))))

(assert (=> bs!1114167 (= (= lt!1888110 lt!1888077) (= lambda!215795 lambda!215664))))

(assert (=> bs!1114160 (= (= lt!1888110 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215795 lambda!215738))))

(assert (=> bs!1114178 (= (= lt!1888110 lt!1888135) (= lambda!215795 lambda!215672))))

(declare-fun bs!1114179 () Bool)

(assert (= bs!1114179 (and d!1504417 d!1504287)))

(assert (=> bs!1114179 (= (= lt!1888110 lt!1888646) (= lambda!215795 lambda!215756))))

(declare-fun bs!1114180 () Bool)

(assert (= bs!1114180 (and d!1504417 b!4723401)))

(assert (=> bs!1114180 (= (= lt!1888110 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215795 lambda!215718))))

(assert (=> bs!1114162 (= (= lt!1888110 lt!1887727) (= lambda!215795 lambda!215667))))

(assert (=> bs!1114169 (= (= lt!1888110 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215795 lambda!215732))))

(declare-fun bs!1114181 () Bool)

(assert (= bs!1114181 (and d!1504417 d!1503907)))

(assert (=> bs!1114181 (= (= lt!1888110 lt!1888136) (= lambda!215795 lambda!215673))))

(declare-fun bs!1114182 () Bool)

(assert (= bs!1114182 (and d!1504417 d!1504043)))

(assert (=> bs!1114182 (= (= lt!1888110 lt!1888295) (= lambda!215795 lambda!215695))))

(declare-fun bs!1114183 () Bool)

(assert (= bs!1114183 (and d!1504417 d!1504397)))

(assert (=> bs!1114183 (= (= lt!1888110 lt!1888135) (= lambda!215795 lambda!215776))))

(assert (=> bs!1114164 (= (= lt!1888110 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215795 lambda!215690))))

(declare-fun bs!1114184 () Bool)

(assert (= bs!1114184 (and d!1504417 d!1503991)))

(assert (=> bs!1114184 (= (= lt!1888110 lt!1887727) (= lambda!215795 lambda!215688))))

(declare-fun bs!1114185 () Bool)

(assert (= bs!1114185 (and d!1504417 d!1504161)))

(assert (=> bs!1114185 (= (= lt!1888110 lt!1888470) (= lambda!215795 lambda!215734))))

(declare-fun bs!1114186 () Bool)

(assert (= bs!1114186 (and d!1504417 d!1504211)))

(assert (=> bs!1114186 (= (= lt!1888110 lt!1888505) (= lambda!215795 lambda!215742))))

(assert (=> bs!1114163 (= (= lt!1888110 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215795 lambda!215676))))

(declare-fun bs!1114187 () Bool)

(assert (= bs!1114187 (and d!1504417 d!1504245)))

(assert (=> bs!1114187 (= (= lt!1888110 lt!1887947) (= lambda!215795 lambda!215744))))

(declare-fun bs!1114188 () Bool)

(assert (= bs!1114188 (and d!1504417 b!4722971)))

(assert (=> bs!1114188 (= (= lt!1888110 lt!1887727) (= lambda!215795 lambda!215666))))

(assert (=> bs!1114171 (= (= lt!1888110 lt!1888645) (= lambda!215795 lambda!215754))))

(declare-fun bs!1114189 () Bool)

(assert (= bs!1114189 (and d!1504417 b!4723826)))

(assert (=> bs!1114189 (= (= lt!1888110 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) (= lambda!215795 lambda!215780))))

(declare-fun bs!1114190 () Bool)

(assert (= bs!1114190 (and d!1504417 d!1504085)))

(assert (=> bs!1114190 (= (= lt!1888110 lt!1888323) (= lambda!215795 lambda!215703))))

(declare-fun bs!1114191 () Bool)

(assert (= bs!1114191 (and d!1504417 d!1503963)))

(assert (=> bs!1114191 (= (= lt!1888110 lt!1888169) (= lambda!215795 lambda!215678))))

(declare-fun bs!1114192 () Bool)

(assert (= bs!1114192 (and d!1504417 b!4723445)))

(assert (=> bs!1114192 (= (= lt!1888110 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215795 lambda!215731))))

(declare-fun bs!1114193 () Bool)

(assert (= bs!1114193 (and d!1504417 b!4723503)))

(assert (=> bs!1114193 (= (= lt!1888110 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215795 lambda!215736))))

(declare-fun bs!1114194 () Bool)

(assert (= bs!1114194 (and d!1504417 b!4722847)))

(assert (=> bs!1114194 (= (= lt!1888110 lt!1887727) (= lambda!215795 lambda!215638))))

(assert (=> bs!1114189 (= (= lt!1888110 lt!1888802) (= lambda!215795 lambda!215787))))

(declare-fun bs!1114195 () Bool)

(assert (= bs!1114195 (and d!1504417 b!4723828)))

(assert (=> bs!1114195 (= (= lt!1888110 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) (= lambda!215795 lambda!215777))))

(declare-fun bs!1114196 () Bool)

(assert (= bs!1114196 (and d!1504417 d!1504127)))

(assert (=> bs!1114196 (= (= lt!1888110 lt!1888077) (= lambda!215795 lambda!215715))))

(assert (=> bs!1114156 (= (= lt!1888110 lt!1888441) (= lambda!215795 lambda!215722))))

(declare-fun bs!1114197 () Bool)

(assert (= bs!1114197 (and d!1504417 d!1503899)))

(assert (=> bs!1114197 (= (= lt!1888110 lt!1888111) (= lambda!215795 lambda!215669))))

(assert (=> d!1504417 true))

(assert (=> d!1504417 (forall!11590 (toList!5917 lt!1887727) lambda!215795)))

(declare-fun lt!1888868 () Unit!130119)

(assert (=> d!1504417 (= lt!1888868 (choose!33338 lt!1887727 lt!1888110 (_1!30519 (h!59177 oldBucket!34)) (_2!30519 (h!59177 oldBucket!34))))))

(assert (=> d!1504417 (forall!11590 (toList!5917 (+!2269 lt!1887727 (tuple2!54451 (_1!30519 (h!59177 oldBucket!34)) (_2!30519 (h!59177 oldBucket!34))))) lambda!215795)))

(assert (=> d!1504417 (= (addForallContainsKeyThenBeforeAdding!796 lt!1887727 lt!1888110 (_1!30519 (h!59177 oldBucket!34)) (_2!30519 (h!59177 oldBucket!34))) lt!1888868)))

(declare-fun bs!1114198 () Bool)

(assert (= bs!1114198 d!1504417))

(declare-fun m!5661035 () Bool)

(assert (=> bs!1114198 m!5661035))

(declare-fun m!5661037 () Bool)

(assert (=> bs!1114198 m!5661037))

(declare-fun m!5661039 () Bool)

(assert (=> bs!1114198 m!5661039))

(declare-fun m!5661041 () Bool)

(assert (=> bs!1114198 m!5661041))

(assert (=> b!4722969 d!1504417))

(assert (=> b!4722969 d!1504081))

(declare-fun d!1504419 () Bool)

(assert (=> d!1504419 (dynLambda!21821 lambda!215668 (h!59177 oldBucket!34))))

(declare-fun lt!1888869 () Unit!130119)

(assert (=> d!1504419 (= lt!1888869 (choose!33336 (toList!5917 lt!1888105) lambda!215668 (h!59177 oldBucket!34)))))

(declare-fun e!2946188 () Bool)

(assert (=> d!1504419 e!2946188))

(declare-fun res!1998724 () Bool)

(assert (=> d!1504419 (=> (not res!1998724) (not e!2946188))))

(assert (=> d!1504419 (= res!1998724 (forall!11590 (toList!5917 lt!1888105) lambda!215668))))

(assert (=> d!1504419 (= (forallContained!3639 (toList!5917 lt!1888105) lambda!215668 (h!59177 oldBucket!34)) lt!1888869)))

(declare-fun b!4723882 () Bool)

(assert (=> b!4723882 (= e!2946188 (contains!16180 (toList!5917 lt!1888105) (h!59177 oldBucket!34)))))

(assert (= (and d!1504419 res!1998724) b!4723882))

(declare-fun b_lambda!178947 () Bool)

(assert (=> (not b_lambda!178947) (not d!1504419)))

(assert (=> d!1504419 m!5661033))

(declare-fun m!5661043 () Bool)

(assert (=> d!1504419 m!5661043))

(assert (=> d!1504419 m!5659021))

(declare-fun m!5661045 () Bool)

(assert (=> b!4723882 m!5661045))

(assert (=> b!4722969 d!1504419))

(declare-fun d!1504421 () Bool)

(declare-fun res!1998725 () Bool)

(declare-fun e!2946189 () Bool)

(assert (=> d!1504421 (=> res!1998725 e!2946189)))

(assert (=> d!1504421 (= res!1998725 ((_ is Nil!52830) (toList!5917 lt!1887727)))))

(assert (=> d!1504421 (= (forall!11590 (toList!5917 lt!1887727) lambda!215667) e!2946189)))

(declare-fun b!4723883 () Bool)

(declare-fun e!2946190 () Bool)

(assert (=> b!4723883 (= e!2946189 e!2946190)))

(declare-fun res!1998726 () Bool)

(assert (=> b!4723883 (=> (not res!1998726) (not e!2946190))))

(assert (=> b!4723883 (= res!1998726 (dynLambda!21821 lambda!215667 (h!59177 (toList!5917 lt!1887727))))))

(declare-fun b!4723884 () Bool)

(assert (=> b!4723884 (= e!2946190 (forall!11590 (t!360220 (toList!5917 lt!1887727)) lambda!215667))))

(assert (= (and d!1504421 (not res!1998725)) b!4723883))

(assert (= (and b!4723883 res!1998726) b!4723884))

(declare-fun b_lambda!178949 () Bool)

(assert (=> (not b_lambda!178949) (not b!4723883)))

(declare-fun m!5661047 () Bool)

(assert (=> b!4723883 m!5661047))

(declare-fun m!5661049 () Bool)

(assert (=> b!4723884 m!5661049))

(assert (=> b!4722969 d!1504421))

(declare-fun d!1504423 () Bool)

(declare-fun res!1998727 () Bool)

(declare-fun e!2946191 () Bool)

(assert (=> d!1504423 (=> res!1998727 e!2946191)))

(assert (=> d!1504423 (= res!1998727 ((_ is Nil!52830) (t!360220 oldBucket!34)))))

(assert (=> d!1504423 (= (forall!11590 (t!360220 oldBucket!34) lambda!215668) e!2946191)))

(declare-fun b!4723885 () Bool)

(declare-fun e!2946192 () Bool)

(assert (=> b!4723885 (= e!2946191 e!2946192)))

(declare-fun res!1998728 () Bool)

(assert (=> b!4723885 (=> (not res!1998728) (not e!2946192))))

(assert (=> b!4723885 (= res!1998728 (dynLambda!21821 lambda!215668 (h!59177 (t!360220 oldBucket!34))))))

(declare-fun b!4723886 () Bool)

(assert (=> b!4723886 (= e!2946192 (forall!11590 (t!360220 (t!360220 oldBucket!34)) lambda!215668))))

(assert (= (and d!1504423 (not res!1998727)) b!4723885))

(assert (= (and b!4723885 res!1998728) b!4723886))

(declare-fun b_lambda!178951 () Bool)

(assert (=> (not b_lambda!178951) (not b!4723885)))

(declare-fun m!5661051 () Bool)

(assert (=> b!4723885 m!5661051))

(declare-fun m!5661053 () Bool)

(assert (=> b!4723886 m!5661053))

(assert (=> b!4722969 d!1504423))

(declare-fun bs!1114217 () Bool)

(declare-fun b!4723889 () Bool)

(assert (= bs!1114217 (and b!4723889 b!4723638)))

(declare-fun lambda!215798 () Int)

(assert (=> bs!1114217 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215798 lambda!215750))))

(declare-fun bs!1114219 () Bool)

(assert (= bs!1114219 (and b!4723889 d!1503873)))

(assert (=> bs!1114219 (not (= lambda!215798 lambda!215656))))

(declare-fun bs!1114221 () Bool)

(assert (= bs!1114221 (and b!4723889 d!1504417)))

(assert (=> bs!1114221 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888110) (= lambda!215798 lambda!215795))))

(declare-fun bs!1114223 () Bool)

(assert (= bs!1114223 (and b!4723889 b!4723308)))

(assert (=> bs!1114223 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888322) (= lambda!215798 lambda!215700))))

(assert (=> bs!1114223 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215798 lambda!215698))))

(declare-fun bs!1114226 () Bool)

(assert (= bs!1114226 (and b!4723889 d!1503889)))

(assert (=> bs!1114226 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888078) (= lambda!215798 lambda!215665))))

(declare-fun bs!1114228 () Bool)

(assert (= bs!1114228 (and b!4723889 b!4723399)))

(assert (=> bs!1114228 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215798 lambda!215720))))

(declare-fun bs!1114230 () Bool)

(assert (= bs!1114230 (and b!4723889 b!4722949)))

(assert (=> bs!1114230 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215798 lambda!215658))))

(declare-fun bs!1114231 () Bool)

(assert (= bs!1114231 (and b!4723889 b!4722845)))

(assert (=> bs!1114231 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887947) (= lambda!215798 lambda!215640))))

(declare-fun bs!1114233 () Bool)

(assert (= bs!1114233 (and b!4723889 d!1503887)))

(assert (=> bs!1114233 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888057) (= lambda!215798 lambda!215661))))

(declare-fun bs!1114235 () Bool)

(assert (= bs!1114235 (and b!4723889 b!4723501)))

(assert (=> bs!1114235 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888504) (= lambda!215798 lambda!215740))))

(declare-fun bs!1114237 () Bool)

(assert (= bs!1114237 (and b!4723889 d!1504275)))

(assert (=> bs!1114237 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888056) (= lambda!215798 lambda!215747))))

(declare-fun bs!1114239 () Bool)

(assert (= bs!1114239 (and b!4723889 b!4722969)))

(assert (=> bs!1114239 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888110) (= lambda!215798 lambda!215668))))

(declare-fun bs!1114240 () Bool)

(assert (= bs!1114240 (and b!4723889 b!4723054)))

(assert (=> bs!1114240 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888168) (= lambda!215798 lambda!215677))))

(declare-fun bs!1114241 () Bool)

(assert (= bs!1114241 (and b!4723889 b!4723273)))

(assert (=> bs!1114241 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888294) (= lambda!215798 lambda!215691))))

(declare-fun bs!1114243 () Bool)

(assert (= bs!1114243 (and b!4723889 d!1504139)))

(assert (=> bs!1114243 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888442) (= lambda!215798 lambda!215724))))

(declare-fun bs!1114245 () Bool)

(assert (= bs!1114245 (and b!4723889 b!4722954)))

(assert (=> bs!1114245 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215798 lambda!215662))))

(declare-fun bs!1114247 () Bool)

(assert (= bs!1114247 (and b!4723889 b!4722952)))

(assert (=> bs!1114247 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215798 lambda!215663))))

(declare-fun bs!1114248 () Bool)

(assert (= bs!1114248 (and b!4723889 b!4723056)))

(assert (=> bs!1114248 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215798 lambda!215675))))

(declare-fun bs!1114251 () Bool)

(assert (= bs!1114251 (and b!4723889 b!4723443)))

(assert (=> bs!1114251 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888469) (= lambda!215798 lambda!215733))))

(declare-fun bs!1114253 () Bool)

(assert (= bs!1114253 (and b!4723889 d!1504401)))

(assert (=> bs!1114253 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888803) (= lambda!215798 lambda!215792))))

(declare-fun bs!1114255 () Bool)

(assert (= bs!1114255 (and b!4723889 b!4723636)))

(assert (=> bs!1114255 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215798 lambda!215752))))

(declare-fun bs!1114257 () Bool)

(assert (= bs!1114257 (and b!4723889 b!4722978)))

(assert (=> bs!1114257 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215798 lambda!215670))))

(declare-fun bs!1114259 () Bool)

(assert (= bs!1114259 (and b!4723889 d!1503799)))

(assert (=> bs!1114259 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887948) (= lambda!215798 lambda!215641))))

(declare-fun bs!1114261 () Bool)

(assert (= bs!1114261 (and b!4723889 b!4723275)))

(assert (=> bs!1114261 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215798 lambda!215689))))

(declare-fun bs!1114262 () Bool)

(assert (= bs!1114262 (and b!4723889 b!4722947)))

(assert (=> bs!1114262 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888056) (= lambda!215798 lambda!215660))))

(declare-fun bs!1114263 () Bool)

(assert (= bs!1114263 (and b!4723889 d!1503911)))

(assert (=> bs!1114263 (not (= lambda!215798 lambda!215674))))

(assert (=> bs!1114231 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215798 lambda!215639))))

(declare-fun bs!1114265 () Bool)

(assert (= bs!1114265 (and b!4723889 b!4723310)))

(assert (=> bs!1114265 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215798 lambda!215697))))

(declare-fun bs!1114267 () Bool)

(assert (= bs!1114267 (and b!4723889 b!4722976)))

(assert (=> bs!1114267 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215798 lambda!215671))))

(assert (=> bs!1114262 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215798 lambda!215659))))

(assert (=> bs!1114247 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888077) (= lambda!215798 lambda!215664))))

(assert (=> bs!1114235 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215798 lambda!215738))))

(assert (=> bs!1114267 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888135) (= lambda!215798 lambda!215672))))

(declare-fun bs!1114268 () Bool)

(assert (= bs!1114268 (and b!4723889 d!1504287)))

(assert (=> bs!1114268 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888646) (= lambda!215798 lambda!215756))))

(declare-fun bs!1114269 () Bool)

(assert (= bs!1114269 (and b!4723889 b!4723401)))

(assert (=> bs!1114269 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215798 lambda!215718))))

(assert (=> bs!1114239 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215798 lambda!215667))))

(assert (=> bs!1114251 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215798 lambda!215732))))

(declare-fun bs!1114270 () Bool)

(assert (= bs!1114270 (and b!4723889 d!1503907)))

(assert (=> bs!1114270 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888136) (= lambda!215798 lambda!215673))))

(declare-fun bs!1114271 () Bool)

(assert (= bs!1114271 (and b!4723889 d!1504043)))

(assert (=> bs!1114271 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888295) (= lambda!215798 lambda!215695))))

(declare-fun bs!1114272 () Bool)

(assert (= bs!1114272 (and b!4723889 d!1504397)))

(assert (=> bs!1114272 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888135) (= lambda!215798 lambda!215776))))

(assert (=> bs!1114241 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215798 lambda!215690))))

(declare-fun bs!1114273 () Bool)

(assert (= bs!1114273 (and b!4723889 d!1503991)))

(assert (=> bs!1114273 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215798 lambda!215688))))

(declare-fun bs!1114274 () Bool)

(assert (= bs!1114274 (and b!4723889 d!1504161)))

(assert (=> bs!1114274 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888470) (= lambda!215798 lambda!215734))))

(declare-fun bs!1114275 () Bool)

(assert (= bs!1114275 (and b!4723889 d!1504211)))

(assert (=> bs!1114275 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888505) (= lambda!215798 lambda!215742))))

(assert (=> bs!1114240 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215798 lambda!215676))))

(declare-fun bs!1114276 () Bool)

(assert (= bs!1114276 (and b!4723889 d!1504245)))

(assert (=> bs!1114276 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887947) (= lambda!215798 lambda!215744))))

(declare-fun bs!1114277 () Bool)

(assert (= bs!1114277 (and b!4723889 b!4722971)))

(assert (=> bs!1114277 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215798 lambda!215666))))

(assert (=> bs!1114255 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888645) (= lambda!215798 lambda!215754))))

(declare-fun bs!1114278 () Bool)

(assert (= bs!1114278 (and b!4723889 b!4723826)))

(assert (=> bs!1114278 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) (= lambda!215798 lambda!215780))))

(declare-fun bs!1114279 () Bool)

(assert (= bs!1114279 (and b!4723889 d!1504085)))

(assert (=> bs!1114279 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888323) (= lambda!215798 lambda!215703))))

(declare-fun bs!1114280 () Bool)

(assert (= bs!1114280 (and b!4723889 d!1503963)))

(assert (=> bs!1114280 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888169) (= lambda!215798 lambda!215678))))

(declare-fun bs!1114281 () Bool)

(assert (= bs!1114281 (and b!4723889 b!4723445)))

(assert (=> bs!1114281 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215798 lambda!215731))))

(declare-fun bs!1114282 () Bool)

(assert (= bs!1114282 (and b!4723889 b!4723503)))

(assert (=> bs!1114282 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215798 lambda!215736))))

(declare-fun bs!1114283 () Bool)

(assert (= bs!1114283 (and b!4723889 b!4722847)))

(assert (=> bs!1114283 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215798 lambda!215638))))

(assert (=> bs!1114278 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888802) (= lambda!215798 lambda!215787))))

(declare-fun bs!1114284 () Bool)

(assert (= bs!1114284 (and b!4723889 b!4723828)))

(assert (=> bs!1114284 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) (= lambda!215798 lambda!215777))))

(declare-fun bs!1114285 () Bool)

(assert (= bs!1114285 (and b!4723889 d!1504127)))

(assert (=> bs!1114285 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888077) (= lambda!215798 lambda!215715))))

(assert (=> bs!1114228 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888441) (= lambda!215798 lambda!215722))))

(declare-fun bs!1114286 () Bool)

(assert (= bs!1114286 (and b!4723889 d!1503899)))

(assert (=> bs!1114286 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888111) (= lambda!215798 lambda!215669))))

(assert (=> b!4723889 true))

(declare-fun bs!1114287 () Bool)

(declare-fun b!4723887 () Bool)

(assert (= bs!1114287 (and b!4723887 b!4723638)))

(declare-fun lambda!215799 () Int)

(assert (=> bs!1114287 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215799 lambda!215750))))

(declare-fun bs!1114288 () Bool)

(assert (= bs!1114288 (and b!4723887 d!1503873)))

(assert (=> bs!1114288 (not (= lambda!215799 lambda!215656))))

(declare-fun bs!1114289 () Bool)

(assert (= bs!1114289 (and b!4723887 d!1504417)))

(assert (=> bs!1114289 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888110) (= lambda!215799 lambda!215795))))

(declare-fun bs!1114290 () Bool)

(assert (= bs!1114290 (and b!4723887 b!4723308)))

(assert (=> bs!1114290 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888322) (= lambda!215799 lambda!215700))))

(assert (=> bs!1114290 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215799 lambda!215698))))

(declare-fun bs!1114291 () Bool)

(assert (= bs!1114291 (and b!4723887 d!1503889)))

(assert (=> bs!1114291 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888078) (= lambda!215799 lambda!215665))))

(declare-fun bs!1114292 () Bool)

(assert (= bs!1114292 (and b!4723887 b!4723399)))

(assert (=> bs!1114292 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215799 lambda!215720))))

(declare-fun bs!1114293 () Bool)

(assert (= bs!1114293 (and b!4723887 b!4722949)))

(assert (=> bs!1114293 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215799 lambda!215658))))

(declare-fun bs!1114294 () Bool)

(assert (= bs!1114294 (and b!4723887 b!4722845)))

(assert (=> bs!1114294 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887947) (= lambda!215799 lambda!215640))))

(declare-fun bs!1114296 () Bool)

(assert (= bs!1114296 (and b!4723887 d!1503887)))

(assert (=> bs!1114296 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888057) (= lambda!215799 lambda!215661))))

(declare-fun bs!1114298 () Bool)

(assert (= bs!1114298 (and b!4723887 b!4723501)))

(assert (=> bs!1114298 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888504) (= lambda!215799 lambda!215740))))

(declare-fun bs!1114300 () Bool)

(assert (= bs!1114300 (and b!4723887 d!1504275)))

(assert (=> bs!1114300 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888056) (= lambda!215799 lambda!215747))))

(declare-fun bs!1114302 () Bool)

(assert (= bs!1114302 (and b!4723887 b!4722969)))

(assert (=> bs!1114302 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888110) (= lambda!215799 lambda!215668))))

(declare-fun bs!1114304 () Bool)

(assert (= bs!1114304 (and b!4723887 b!4723054)))

(assert (=> bs!1114304 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888168) (= lambda!215799 lambda!215677))))

(declare-fun bs!1114306 () Bool)

(assert (= bs!1114306 (and b!4723887 b!4723273)))

(assert (=> bs!1114306 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888294) (= lambda!215799 lambda!215691))))

(declare-fun bs!1114308 () Bool)

(assert (= bs!1114308 (and b!4723887 d!1504139)))

(assert (=> bs!1114308 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888442) (= lambda!215799 lambda!215724))))

(declare-fun bs!1114309 () Bool)

(assert (= bs!1114309 (and b!4723887 b!4722954)))

(assert (=> bs!1114309 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215799 lambda!215662))))

(declare-fun bs!1114311 () Bool)

(assert (= bs!1114311 (and b!4723887 b!4722952)))

(assert (=> bs!1114311 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215799 lambda!215663))))

(declare-fun bs!1114313 () Bool)

(assert (= bs!1114313 (and b!4723887 b!4723056)))

(assert (=> bs!1114313 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215799 lambda!215675))))

(declare-fun bs!1114314 () Bool)

(assert (= bs!1114314 (and b!4723887 b!4723443)))

(assert (=> bs!1114314 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888469) (= lambda!215799 lambda!215733))))

(declare-fun bs!1114315 () Bool)

(assert (= bs!1114315 (and b!4723887 d!1504401)))

(assert (=> bs!1114315 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888803) (= lambda!215799 lambda!215792))))

(declare-fun bs!1114316 () Bool)

(assert (= bs!1114316 (and b!4723887 b!4723636)))

(assert (=> bs!1114316 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215799 lambda!215752))))

(declare-fun bs!1114317 () Bool)

(assert (= bs!1114317 (and b!4723887 b!4722978)))

(assert (=> bs!1114317 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215799 lambda!215670))))

(declare-fun bs!1114318 () Bool)

(assert (= bs!1114318 (and b!4723887 d!1503799)))

(assert (=> bs!1114318 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887948) (= lambda!215799 lambda!215641))))

(declare-fun bs!1114319 () Bool)

(assert (= bs!1114319 (and b!4723887 b!4723275)))

(assert (=> bs!1114319 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215799 lambda!215689))))

(declare-fun bs!1114320 () Bool)

(assert (= bs!1114320 (and b!4723887 b!4722947)))

(assert (=> bs!1114320 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888056) (= lambda!215799 lambda!215660))))

(declare-fun bs!1114321 () Bool)

(assert (= bs!1114321 (and b!4723887 d!1503911)))

(assert (=> bs!1114321 (not (= lambda!215799 lambda!215674))))

(assert (=> bs!1114294 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215799 lambda!215639))))

(declare-fun bs!1114322 () Bool)

(assert (= bs!1114322 (and b!4723887 b!4723310)))

(assert (=> bs!1114322 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215799 lambda!215697))))

(declare-fun bs!1114323 () Bool)

(assert (= bs!1114323 (and b!4723887 b!4722976)))

(assert (=> bs!1114323 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215799 lambda!215671))))

(assert (=> bs!1114320 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215799 lambda!215659))))

(assert (=> bs!1114311 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888077) (= lambda!215799 lambda!215664))))

(assert (=> bs!1114298 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215799 lambda!215738))))

(assert (=> bs!1114323 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888135) (= lambda!215799 lambda!215672))))

(declare-fun bs!1114324 () Bool)

(assert (= bs!1114324 (and b!4723887 d!1504287)))

(assert (=> bs!1114324 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888646) (= lambda!215799 lambda!215756))))

(declare-fun bs!1114325 () Bool)

(assert (= bs!1114325 (and b!4723887 b!4723401)))

(assert (=> bs!1114325 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215799 lambda!215718))))

(assert (=> bs!1114302 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215799 lambda!215667))))

(assert (=> bs!1114314 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215799 lambda!215732))))

(declare-fun bs!1114326 () Bool)

(assert (= bs!1114326 (and b!4723887 d!1503907)))

(assert (=> bs!1114326 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888136) (= lambda!215799 lambda!215673))))

(declare-fun bs!1114327 () Bool)

(assert (= bs!1114327 (and b!4723887 d!1504043)))

(assert (=> bs!1114327 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888295) (= lambda!215799 lambda!215695))))

(declare-fun bs!1114328 () Bool)

(assert (= bs!1114328 (and b!4723887 d!1504397)))

(assert (=> bs!1114328 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888135) (= lambda!215799 lambda!215776))))

(assert (=> bs!1114306 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215799 lambda!215690))))

(declare-fun bs!1114330 () Bool)

(assert (= bs!1114330 (and b!4723887 d!1503991)))

(assert (=> bs!1114330 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215799 lambda!215688))))

(declare-fun bs!1114332 () Bool)

(assert (= bs!1114332 (and b!4723887 b!4723889)))

(assert (=> bs!1114332 (= lambda!215799 lambda!215798)))

(declare-fun bs!1114333 () Bool)

(assert (= bs!1114333 (and b!4723887 d!1504161)))

(assert (=> bs!1114333 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888470) (= lambda!215799 lambda!215734))))

(declare-fun bs!1114335 () Bool)

(assert (= bs!1114335 (and b!4723887 d!1504211)))

(assert (=> bs!1114335 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888505) (= lambda!215799 lambda!215742))))

(assert (=> bs!1114304 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215799 lambda!215676))))

(declare-fun bs!1114339 () Bool)

(assert (= bs!1114339 (and b!4723887 d!1504245)))

(assert (=> bs!1114339 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887947) (= lambda!215799 lambda!215744))))

(declare-fun bs!1114341 () Bool)

(assert (= bs!1114341 (and b!4723887 b!4722971)))

(assert (=> bs!1114341 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215799 lambda!215666))))

(assert (=> bs!1114316 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888645) (= lambda!215799 lambda!215754))))

(declare-fun bs!1114343 () Bool)

(assert (= bs!1114343 (and b!4723887 b!4723826)))

(assert (=> bs!1114343 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) (= lambda!215799 lambda!215780))))

(declare-fun bs!1114345 () Bool)

(assert (= bs!1114345 (and b!4723887 d!1504085)))

(assert (=> bs!1114345 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888323) (= lambda!215799 lambda!215703))))

(declare-fun bs!1114347 () Bool)

(assert (= bs!1114347 (and b!4723887 d!1503963)))

(assert (=> bs!1114347 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888169) (= lambda!215799 lambda!215678))))

(declare-fun bs!1114349 () Bool)

(assert (= bs!1114349 (and b!4723887 b!4723445)))

(assert (=> bs!1114349 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215799 lambda!215731))))

(declare-fun bs!1114351 () Bool)

(assert (= bs!1114351 (and b!4723887 b!4723503)))

(assert (=> bs!1114351 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215799 lambda!215736))))

(declare-fun bs!1114353 () Bool)

(assert (= bs!1114353 (and b!4723887 b!4722847)))

(assert (=> bs!1114353 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1887727) (= lambda!215799 lambda!215638))))

(assert (=> bs!1114343 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888802) (= lambda!215799 lambda!215787))))

(declare-fun bs!1114356 () Bool)

(assert (= bs!1114356 (and b!4723887 b!4723828)))

(assert (=> bs!1114356 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) (= lambda!215799 lambda!215777))))

(declare-fun bs!1114358 () Bool)

(assert (= bs!1114358 (and b!4723887 d!1504127)))

(assert (=> bs!1114358 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888077) (= lambda!215799 lambda!215715))))

(assert (=> bs!1114292 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888441) (= lambda!215799 lambda!215722))))

(declare-fun bs!1114360 () Bool)

(assert (= bs!1114360 (and b!4723887 d!1503899)))

(assert (=> bs!1114360 (= (= (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888111) (= lambda!215799 lambda!215669))))

(assert (=> b!4723887 true))

(declare-fun lt!1888879 () ListMap!5281)

(declare-fun lambda!215802 () Int)

(assert (=> bs!1114287 (= (= lt!1888879 (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215802 lambda!215750))))

(assert (=> bs!1114288 (not (= lambda!215802 lambda!215656))))

(assert (=> bs!1114290 (= (= lt!1888879 lt!1888322) (= lambda!215802 lambda!215700))))

(assert (=> bs!1114290 (= (= lt!1888879 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215802 lambda!215698))))

(assert (=> bs!1114291 (= (= lt!1888879 lt!1888078) (= lambda!215802 lambda!215665))))

(assert (=> bs!1114292 (= (= lt!1888879 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215802 lambda!215720))))

(assert (=> bs!1114293 (= (= lt!1888879 lt!1887727) (= lambda!215802 lambda!215658))))

(assert (=> bs!1114294 (= (= lt!1888879 lt!1887947) (= lambda!215802 lambda!215640))))

(assert (=> bs!1114296 (= (= lt!1888879 lt!1888057) (= lambda!215802 lambda!215661))))

(assert (=> bs!1114298 (= (= lt!1888879 lt!1888504) (= lambda!215802 lambda!215740))))

(assert (=> bs!1114300 (= (= lt!1888879 lt!1888056) (= lambda!215802 lambda!215747))))

(assert (=> bs!1114302 (= (= lt!1888879 lt!1888110) (= lambda!215802 lambda!215668))))

(assert (=> bs!1114304 (= (= lt!1888879 lt!1888168) (= lambda!215802 lambda!215677))))

(assert (=> bs!1114306 (= (= lt!1888879 lt!1888294) (= lambda!215802 lambda!215691))))

(assert (=> bs!1114308 (= (= lt!1888879 lt!1888442) (= lambda!215802 lambda!215724))))

(assert (=> bs!1114309 (= (= lt!1888879 lt!1887727) (= lambda!215802 lambda!215662))))

(assert (=> bs!1114311 (= (= lt!1888879 lt!1887727) (= lambda!215802 lambda!215663))))

(assert (=> bs!1114313 (= (= lt!1888879 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215802 lambda!215675))))

(assert (=> bs!1114314 (= (= lt!1888879 lt!1888469) (= lambda!215802 lambda!215733))))

(assert (=> bs!1114315 (= (= lt!1888879 lt!1888803) (= lambda!215802 lambda!215792))))

(assert (=> bs!1114316 (= (= lt!1888879 (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215802 lambda!215752))))

(assert (=> bs!1114317 (= (= lt!1888879 lt!1887727) (= lambda!215802 lambda!215670))))

(assert (=> bs!1114318 (= (= lt!1888879 lt!1887948) (= lambda!215802 lambda!215641))))

(assert (=> bs!1114319 (= (= lt!1888879 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215802 lambda!215689))))

(assert (=> bs!1114320 (= (= lt!1888879 lt!1888056) (= lambda!215802 lambda!215660))))

(assert (=> bs!1114321 (not (= lambda!215802 lambda!215674))))

(assert (=> bs!1114294 (= (= lt!1888879 lt!1887727) (= lambda!215802 lambda!215639))))

(assert (=> bs!1114322 (= (= lt!1888879 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215802 lambda!215697))))

(assert (=> bs!1114323 (= (= lt!1888879 lt!1887727) (= lambda!215802 lambda!215671))))

(assert (=> bs!1114320 (= (= lt!1888879 lt!1887727) (= lambda!215802 lambda!215659))))

(assert (=> bs!1114311 (= (= lt!1888879 lt!1888077) (= lambda!215802 lambda!215664))))

(assert (=> bs!1114298 (= (= lt!1888879 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215802 lambda!215738))))

(assert (=> bs!1114323 (= (= lt!1888879 lt!1888135) (= lambda!215802 lambda!215672))))

(assert (=> bs!1114324 (= (= lt!1888879 lt!1888646) (= lambda!215802 lambda!215756))))

(assert (=> bs!1114325 (= (= lt!1888879 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215802 lambda!215718))))

(assert (=> bs!1114302 (= (= lt!1888879 lt!1887727) (= lambda!215802 lambda!215667))))

(assert (=> bs!1114314 (= (= lt!1888879 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215802 lambda!215732))))

(assert (=> bs!1114326 (= (= lt!1888879 lt!1888136) (= lambda!215802 lambda!215673))))

(assert (=> bs!1114327 (= (= lt!1888879 lt!1888295) (= lambda!215802 lambda!215695))))

(assert (=> bs!1114328 (= (= lt!1888879 lt!1888135) (= lambda!215802 lambda!215776))))

(assert (=> bs!1114306 (= (= lt!1888879 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215802 lambda!215690))))

(assert (=> bs!1114330 (= (= lt!1888879 lt!1887727) (= lambda!215802 lambda!215688))))

(assert (=> bs!1114332 (= (= lt!1888879 (+!2269 lt!1887727 (h!59177 oldBucket!34))) (= lambda!215802 lambda!215798))))

(assert (=> bs!1114333 (= (= lt!1888879 lt!1888470) (= lambda!215802 lambda!215734))))

(assert (=> bs!1114335 (= (= lt!1888879 lt!1888505) (= lambda!215802 lambda!215742))))

(assert (=> bs!1114304 (= (= lt!1888879 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215802 lambda!215676))))

(assert (=> bs!1114339 (= (= lt!1888879 lt!1887947) (= lambda!215802 lambda!215744))))

(assert (=> bs!1114341 (= (= lt!1888879 lt!1887727) (= lambda!215802 lambda!215666))))

(assert (=> bs!1114316 (= (= lt!1888879 lt!1888645) (= lambda!215802 lambda!215754))))

(assert (=> bs!1114343 (= (= lt!1888879 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) (= lambda!215802 lambda!215780))))

(assert (=> bs!1114345 (= (= lt!1888879 lt!1888323) (= lambda!215802 lambda!215703))))

(assert (=> bs!1114347 (= (= lt!1888879 lt!1888169) (= lambda!215802 lambda!215678))))

(assert (=> bs!1114349 (= (= lt!1888879 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215802 lambda!215731))))

(assert (=> bs!1114351 (= (= lt!1888879 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215802 lambda!215736))))

(assert (=> bs!1114353 (= (= lt!1888879 lt!1887727) (= lambda!215802 lambda!215638))))

(assert (=> bs!1114343 (= (= lt!1888879 lt!1888802) (= lambda!215802 lambda!215787))))

(assert (=> bs!1114356 (= (= lt!1888879 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) (= lambda!215802 lambda!215777))))

(assert (=> bs!1114358 (= (= lt!1888879 lt!1888077) (= lambda!215802 lambda!215715))))

(assert (=> bs!1114292 (= (= lt!1888879 lt!1888441) (= lambda!215802 lambda!215722))))

(assert (=> bs!1114360 (= (= lt!1888879 lt!1888111) (= lambda!215802 lambda!215669))))

(assert (=> bs!1114289 (= (= lt!1888879 lt!1888110) (= lambda!215802 lambda!215795))))

(assert (=> b!4723887 (= (= lt!1888879 (+!2269 lt!1887727 (h!59177 oldBucket!34))) (= lambda!215802 lambda!215799))))

(assert (=> b!4723887 true))

(declare-fun bs!1114387 () Bool)

(declare-fun d!1504425 () Bool)

(assert (= bs!1114387 (and d!1504425 b!4723638)))

(declare-fun lambda!215803 () Int)

(declare-fun lt!1888880 () ListMap!5281)

(assert (=> bs!1114387 (= (= lt!1888880 (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215803 lambda!215750))))

(declare-fun bs!1114388 () Bool)

(assert (= bs!1114388 (and d!1504425 d!1503873)))

(assert (=> bs!1114388 (not (= lambda!215803 lambda!215656))))

(declare-fun bs!1114389 () Bool)

(assert (= bs!1114389 (and d!1504425 b!4723308)))

(assert (=> bs!1114389 (= (= lt!1888880 lt!1888322) (= lambda!215803 lambda!215700))))

(assert (=> bs!1114389 (= (= lt!1888880 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215803 lambda!215698))))

(declare-fun bs!1114390 () Bool)

(assert (= bs!1114390 (and d!1504425 d!1503889)))

(assert (=> bs!1114390 (= (= lt!1888880 lt!1888078) (= lambda!215803 lambda!215665))))

(declare-fun bs!1114391 () Bool)

(assert (= bs!1114391 (and d!1504425 b!4723399)))

(assert (=> bs!1114391 (= (= lt!1888880 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215803 lambda!215720))))

(declare-fun bs!1114393 () Bool)

(assert (= bs!1114393 (and d!1504425 b!4722949)))

(assert (=> bs!1114393 (= (= lt!1888880 lt!1887727) (= lambda!215803 lambda!215658))))

(declare-fun bs!1114394 () Bool)

(assert (= bs!1114394 (and d!1504425 b!4722845)))

(assert (=> bs!1114394 (= (= lt!1888880 lt!1887947) (= lambda!215803 lambda!215640))))

(declare-fun bs!1114396 () Bool)

(assert (= bs!1114396 (and d!1504425 d!1503887)))

(assert (=> bs!1114396 (= (= lt!1888880 lt!1888057) (= lambda!215803 lambda!215661))))

(declare-fun bs!1114398 () Bool)

(assert (= bs!1114398 (and d!1504425 b!4723501)))

(assert (=> bs!1114398 (= (= lt!1888880 lt!1888504) (= lambda!215803 lambda!215740))))

(declare-fun bs!1114400 () Bool)

(assert (= bs!1114400 (and d!1504425 d!1504275)))

(assert (=> bs!1114400 (= (= lt!1888880 lt!1888056) (= lambda!215803 lambda!215747))))

(declare-fun bs!1114402 () Bool)

(assert (= bs!1114402 (and d!1504425 b!4722969)))

(assert (=> bs!1114402 (= (= lt!1888880 lt!1888110) (= lambda!215803 lambda!215668))))

(declare-fun bs!1114404 () Bool)

(assert (= bs!1114404 (and d!1504425 b!4723054)))

(assert (=> bs!1114404 (= (= lt!1888880 lt!1888168) (= lambda!215803 lambda!215677))))

(declare-fun bs!1114406 () Bool)

(assert (= bs!1114406 (and d!1504425 b!4723273)))

(assert (=> bs!1114406 (= (= lt!1888880 lt!1888294) (= lambda!215803 lambda!215691))))

(declare-fun bs!1114407 () Bool)

(assert (= bs!1114407 (and d!1504425 d!1504139)))

(assert (=> bs!1114407 (= (= lt!1888880 lt!1888442) (= lambda!215803 lambda!215724))))

(declare-fun bs!1114409 () Bool)

(assert (= bs!1114409 (and d!1504425 b!4723887)))

(assert (=> bs!1114409 (= (= lt!1888880 lt!1888879) (= lambda!215803 lambda!215802))))

(declare-fun bs!1114411 () Bool)

(assert (= bs!1114411 (and d!1504425 b!4722954)))

(assert (=> bs!1114411 (= (= lt!1888880 lt!1887727) (= lambda!215803 lambda!215662))))

(declare-fun bs!1114413 () Bool)

(assert (= bs!1114413 (and d!1504425 b!4722952)))

(assert (=> bs!1114413 (= (= lt!1888880 lt!1887727) (= lambda!215803 lambda!215663))))

(declare-fun bs!1114415 () Bool)

(assert (= bs!1114415 (and d!1504425 b!4723056)))

(assert (=> bs!1114415 (= (= lt!1888880 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215803 lambda!215675))))

(declare-fun bs!1114417 () Bool)

(assert (= bs!1114417 (and d!1504425 b!4723443)))

(assert (=> bs!1114417 (= (= lt!1888880 lt!1888469) (= lambda!215803 lambda!215733))))

(declare-fun bs!1114419 () Bool)

(assert (= bs!1114419 (and d!1504425 d!1504401)))

(assert (=> bs!1114419 (= (= lt!1888880 lt!1888803) (= lambda!215803 lambda!215792))))

(declare-fun bs!1114421 () Bool)

(assert (= bs!1114421 (and d!1504425 b!4723636)))

(assert (=> bs!1114421 (= (= lt!1888880 (+!2269 lt!1887727 (h!59177 newBucket!218))) (= lambda!215803 lambda!215752))))

(declare-fun bs!1114423 () Bool)

(assert (= bs!1114423 (and d!1504425 b!4722978)))

(assert (=> bs!1114423 (= (= lt!1888880 lt!1887727) (= lambda!215803 lambda!215670))))

(declare-fun bs!1114425 () Bool)

(assert (= bs!1114425 (and d!1504425 d!1503799)))

(assert (=> bs!1114425 (= (= lt!1888880 lt!1887948) (= lambda!215803 lambda!215641))))

(declare-fun bs!1114427 () Bool)

(assert (= bs!1114427 (and d!1504425 b!4723275)))

(assert (=> bs!1114427 (= (= lt!1888880 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215803 lambda!215689))))

(declare-fun bs!1114429 () Bool)

(assert (= bs!1114429 (and d!1504425 b!4722947)))

(assert (=> bs!1114429 (= (= lt!1888880 lt!1888056) (= lambda!215803 lambda!215660))))

(declare-fun bs!1114430 () Bool)

(assert (= bs!1114430 (and d!1504425 d!1503911)))

(assert (=> bs!1114430 (not (= lambda!215803 lambda!215674))))

(assert (=> bs!1114394 (= (= lt!1888880 lt!1887727) (= lambda!215803 lambda!215639))))

(declare-fun bs!1114432 () Bool)

(assert (= bs!1114432 (and d!1504425 b!4723310)))

(assert (=> bs!1114432 (= (= lt!1888880 (extractMap!2040 (t!360221 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))) (= lambda!215803 lambda!215697))))

(declare-fun bs!1114434 () Bool)

(assert (= bs!1114434 (and d!1504425 b!4722976)))

(assert (=> bs!1114434 (= (= lt!1888880 lt!1887727) (= lambda!215803 lambda!215671))))

(assert (=> bs!1114429 (= (= lt!1888880 lt!1887727) (= lambda!215803 lambda!215659))))

(assert (=> bs!1114413 (= (= lt!1888880 lt!1888077) (= lambda!215803 lambda!215664))))

(assert (=> bs!1114398 (= (= lt!1888880 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215803 lambda!215738))))

(assert (=> bs!1114434 (= (= lt!1888880 lt!1888135) (= lambda!215803 lambda!215672))))

(declare-fun bs!1114439 () Bool)

(assert (= bs!1114439 (and d!1504425 d!1504287)))

(assert (=> bs!1114439 (= (= lt!1888880 lt!1888646) (= lambda!215803 lambda!215756))))

(declare-fun bs!1114441 () Bool)

(assert (= bs!1114441 (and d!1504425 b!4723401)))

(assert (=> bs!1114441 (= (= lt!1888880 (+!2269 lt!1887727 (h!59177 lt!1887720))) (= lambda!215803 lambda!215718))))

(assert (=> bs!1114402 (= (= lt!1888880 lt!1887727) (= lambda!215803 lambda!215667))))

(assert (=> bs!1114417 (= (= lt!1888880 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215803 lambda!215732))))

(declare-fun bs!1114444 () Bool)

(assert (= bs!1114444 (and d!1504425 d!1503907)))

(assert (=> bs!1114444 (= (= lt!1888880 lt!1888136) (= lambda!215803 lambda!215673))))

(declare-fun bs!1114446 () Bool)

(assert (= bs!1114446 (and d!1504425 d!1504043)))

(assert (=> bs!1114446 (= (= lt!1888880 lt!1888295) (= lambda!215803 lambda!215695))))

(declare-fun bs!1114448 () Bool)

(assert (= bs!1114448 (and d!1504425 d!1504397)))

(assert (=> bs!1114448 (= (= lt!1888880 lt!1888135) (= lambda!215803 lambda!215776))))

(assert (=> bs!1114406 (= (= lt!1888880 (extractMap!2040 (t!360221 (t!360221 (toList!5918 lm!2023))))) (= lambda!215803 lambda!215690))))

(declare-fun bs!1114450 () Bool)

(assert (= bs!1114450 (and d!1504425 d!1503991)))

(assert (=> bs!1114450 (= (= lt!1888880 lt!1887727) (= lambda!215803 lambda!215688))))

(declare-fun bs!1114452 () Bool)

(assert (= bs!1114452 (and d!1504425 b!4723889)))

(assert (=> bs!1114452 (= (= lt!1888880 (+!2269 lt!1887727 (h!59177 oldBucket!34))) (= lambda!215803 lambda!215798))))

(declare-fun bs!1114453 () Bool)

(assert (= bs!1114453 (and d!1504425 d!1504161)))

(assert (=> bs!1114453 (= (= lt!1888880 lt!1888470) (= lambda!215803 lambda!215734))))

(declare-fun bs!1114454 () Bool)

(assert (= bs!1114454 (and d!1504425 d!1504211)))

(assert (=> bs!1114454 (= (= lt!1888880 lt!1888505) (= lambda!215803 lambda!215742))))

(assert (=> bs!1114404 (= (= lt!1888880 (extractMap!2040 (t!360221 lt!1887719))) (= lambda!215803 lambda!215676))))

(declare-fun bs!1114457 () Bool)

(assert (= bs!1114457 (and d!1504425 d!1504245)))

(assert (=> bs!1114457 (= (= lt!1888880 lt!1887947) (= lambda!215803 lambda!215744))))

(declare-fun bs!1114459 () Bool)

(assert (= bs!1114459 (and d!1504425 b!4722971)))

(assert (=> bs!1114459 (= (= lt!1888880 lt!1887727) (= lambda!215803 lambda!215666))))

(assert (=> bs!1114421 (= (= lt!1888880 lt!1888645) (= lambda!215803 lambda!215754))))

(declare-fun bs!1114461 () Bool)

(assert (= bs!1114461 (and d!1504425 b!4723826)))

(assert (=> bs!1114461 (= (= lt!1888880 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) (= lambda!215803 lambda!215780))))

(declare-fun bs!1114463 () Bool)

(assert (= bs!1114463 (and d!1504425 d!1504085)))

(assert (=> bs!1114463 (= (= lt!1888880 lt!1888323) (= lambda!215803 lambda!215703))))

(declare-fun bs!1114465 () Bool)

(assert (= bs!1114465 (and d!1504425 d!1503963)))

(assert (=> bs!1114465 (= (= lt!1888880 lt!1888169) (= lambda!215803 lambda!215678))))

(declare-fun bs!1114467 () Bool)

(assert (= bs!1114467 (and d!1504425 b!4723445)))

(assert (=> bs!1114467 (= (= lt!1888880 (extractMap!2040 (t!360221 (toList!5918 lm!2023)))) (= lambda!215803 lambda!215731))))

(declare-fun bs!1114469 () Bool)

(assert (= bs!1114469 (and d!1504425 b!4723503)))

(assert (=> bs!1114469 (= (= lt!1888880 (+!2269 lt!1887727 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (= lambda!215803 lambda!215736))))

(declare-fun bs!1114471 () Bool)

(assert (= bs!1114471 (and d!1504425 b!4722847)))

(assert (=> bs!1114471 (= (= lt!1888880 lt!1887727) (= lambda!215803 lambda!215638))))

(assert (=> bs!1114461 (= (= lt!1888880 lt!1888802) (= lambda!215803 lambda!215787))))

(declare-fun bs!1114473 () Bool)

(assert (= bs!1114473 (and d!1504425 b!4723828)))

(assert (=> bs!1114473 (= (= lt!1888880 (+!2269 lt!1887727 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))) (= lambda!215803 lambda!215777))))

(declare-fun bs!1114474 () Bool)

(assert (= bs!1114474 (and d!1504425 d!1504127)))

(assert (=> bs!1114474 (= (= lt!1888880 lt!1888077) (= lambda!215803 lambda!215715))))

(assert (=> bs!1114391 (= (= lt!1888880 lt!1888441) (= lambda!215803 lambda!215722))))

(declare-fun bs!1114476 () Bool)

(assert (= bs!1114476 (and d!1504425 d!1503899)))

(assert (=> bs!1114476 (= (= lt!1888880 lt!1888111) (= lambda!215803 lambda!215669))))

(declare-fun bs!1114478 () Bool)

(assert (= bs!1114478 (and d!1504425 d!1504417)))

(assert (=> bs!1114478 (= (= lt!1888880 lt!1888110) (= lambda!215803 lambda!215795))))

(assert (=> bs!1114409 (= (= lt!1888880 (+!2269 lt!1887727 (h!59177 oldBucket!34))) (= lambda!215803 lambda!215799))))

(assert (=> d!1504425 true))

(declare-fun call!330451 () Bool)

(declare-fun c!806783 () Bool)

(declare-fun bm!330445 () Bool)

(assert (=> bm!330445 (= call!330451 (forall!11590 (ite c!806783 (toList!5917 (+!2269 lt!1887727 (h!59177 oldBucket!34))) (t!360220 oldBucket!34)) (ite c!806783 lambda!215798 lambda!215802)))))

(declare-fun e!2946193 () ListMap!5281)

(assert (=> b!4723887 (= e!2946193 lt!1888879)))

(declare-fun lt!1888874 () ListMap!5281)

(assert (=> b!4723887 (= lt!1888874 (+!2269 (+!2269 lt!1887727 (h!59177 oldBucket!34)) (h!59177 (t!360220 oldBucket!34))))))

(assert (=> b!4723887 (= lt!1888879 (addToMapMapFromBucket!1444 (t!360220 (t!360220 oldBucket!34)) (+!2269 (+!2269 lt!1887727 (h!59177 oldBucket!34)) (h!59177 (t!360220 oldBucket!34)))))))

(declare-fun lt!1888889 () Unit!130119)

(declare-fun call!330452 () Unit!130119)

(assert (=> b!4723887 (= lt!1888889 call!330452)))

(assert (=> b!4723887 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 oldBucket!34))) lambda!215799)))

(declare-fun lt!1888877 () Unit!130119)

(assert (=> b!4723887 (= lt!1888877 lt!1888889)))

(assert (=> b!4723887 (forall!11590 (toList!5917 lt!1888874) lambda!215802)))

(declare-fun lt!1888875 () Unit!130119)

(declare-fun Unit!130471 () Unit!130119)

(assert (=> b!4723887 (= lt!1888875 Unit!130471)))

(assert (=> b!4723887 (forall!11590 (t!360220 (t!360220 oldBucket!34)) lambda!215802)))

(declare-fun lt!1888873 () Unit!130119)

(declare-fun Unit!130472 () Unit!130119)

(assert (=> b!4723887 (= lt!1888873 Unit!130472)))

(declare-fun lt!1888884 () Unit!130119)

(declare-fun Unit!130473 () Unit!130119)

(assert (=> b!4723887 (= lt!1888884 Unit!130473)))

(declare-fun lt!1888887 () Unit!130119)

(assert (=> b!4723887 (= lt!1888887 (forallContained!3639 (toList!5917 lt!1888874) lambda!215802 (h!59177 (t!360220 oldBucket!34))))))

(assert (=> b!4723887 (contains!16175 lt!1888874 (_1!30519 (h!59177 (t!360220 oldBucket!34))))))

(declare-fun lt!1888890 () Unit!130119)

(declare-fun Unit!130474 () Unit!130119)

(assert (=> b!4723887 (= lt!1888890 Unit!130474)))

(assert (=> b!4723887 (contains!16175 lt!1888879 (_1!30519 (h!59177 (t!360220 oldBucket!34))))))

(declare-fun lt!1888883 () Unit!130119)

(declare-fun Unit!130475 () Unit!130119)

(assert (=> b!4723887 (= lt!1888883 Unit!130475)))

(assert (=> b!4723887 call!330451))

(declare-fun lt!1888871 () Unit!130119)

(declare-fun Unit!130476 () Unit!130119)

(assert (=> b!4723887 (= lt!1888871 Unit!130476)))

(assert (=> b!4723887 (forall!11590 (toList!5917 lt!1888874) lambda!215802)))

(declare-fun lt!1888870 () Unit!130119)

(declare-fun Unit!130477 () Unit!130119)

(assert (=> b!4723887 (= lt!1888870 Unit!130477)))

(declare-fun lt!1888881 () Unit!130119)

(declare-fun Unit!130478 () Unit!130119)

(assert (=> b!4723887 (= lt!1888881 Unit!130478)))

(declare-fun lt!1888872 () Unit!130119)

(assert (=> b!4723887 (= lt!1888872 (addForallContainsKeyThenBeforeAdding!796 (+!2269 lt!1887727 (h!59177 oldBucket!34)) lt!1888879 (_1!30519 (h!59177 (t!360220 oldBucket!34))) (_2!30519 (h!59177 (t!360220 oldBucket!34)))))))

(assert (=> b!4723887 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 oldBucket!34))) lambda!215802)))

(declare-fun lt!1888885 () Unit!130119)

(assert (=> b!4723887 (= lt!1888885 lt!1888872)))

(declare-fun call!330450 () Bool)

(assert (=> b!4723887 call!330450))

(declare-fun lt!1888876 () Unit!130119)

(declare-fun Unit!130479 () Unit!130119)

(assert (=> b!4723887 (= lt!1888876 Unit!130479)))

(declare-fun res!1998729 () Bool)

(assert (=> b!4723887 (= res!1998729 (forall!11590 (t!360220 oldBucket!34) lambda!215802))))

(declare-fun e!2946195 () Bool)

(assert (=> b!4723887 (=> (not res!1998729) (not e!2946195))))

(assert (=> b!4723887 e!2946195))

(declare-fun lt!1888882 () Unit!130119)

(declare-fun Unit!130480 () Unit!130119)

(assert (=> b!4723887 (= lt!1888882 Unit!130480)))

(declare-fun e!2946194 () Bool)

(assert (=> d!1504425 e!2946194))

(declare-fun res!1998731 () Bool)

(assert (=> d!1504425 (=> (not res!1998731) (not e!2946194))))

(assert (=> d!1504425 (= res!1998731 (forall!11590 (t!360220 oldBucket!34) lambda!215803))))

(assert (=> d!1504425 (= lt!1888880 e!2946193)))

(assert (=> d!1504425 (= c!806783 ((_ is Nil!52830) (t!360220 oldBucket!34)))))

(assert (=> d!1504425 (noDuplicateKeys!2014 (t!360220 oldBucket!34))))

(assert (=> d!1504425 (= (addToMapMapFromBucket!1444 (t!360220 oldBucket!34) (+!2269 lt!1887727 (h!59177 oldBucket!34))) lt!1888880)))

(declare-fun b!4723888 () Bool)

(assert (=> b!4723888 (= e!2946195 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 oldBucket!34))) lambda!215802))))

(assert (=> b!4723889 (= e!2946193 (+!2269 lt!1887727 (h!59177 oldBucket!34)))))

(declare-fun lt!1888878 () Unit!130119)

(assert (=> b!4723889 (= lt!1888878 call!330452)))

(assert (=> b!4723889 call!330451))

(declare-fun lt!1888888 () Unit!130119)

(assert (=> b!4723889 (= lt!1888888 lt!1888878)))

(assert (=> b!4723889 call!330450))

(declare-fun lt!1888886 () Unit!130119)

(declare-fun Unit!130481 () Unit!130119)

(assert (=> b!4723889 (= lt!1888886 Unit!130481)))

(declare-fun b!4723890 () Bool)

(assert (=> b!4723890 (= e!2946194 (invariantList!1511 (toList!5917 lt!1888880)))))

(declare-fun b!4723891 () Bool)

(declare-fun res!1998730 () Bool)

(assert (=> b!4723891 (=> (not res!1998730) (not e!2946194))))

(assert (=> b!4723891 (= res!1998730 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 oldBucket!34))) lambda!215803))))

(declare-fun bm!330446 () Bool)

(assert (=> bm!330446 (= call!330450 (forall!11590 (toList!5917 (+!2269 lt!1887727 (h!59177 oldBucket!34))) (ite c!806783 lambda!215798 lambda!215802)))))

(declare-fun bm!330447 () Bool)

(assert (=> bm!330447 (= call!330452 (lemmaContainsAllItsOwnKeys!797 (+!2269 lt!1887727 (h!59177 oldBucket!34))))))

(assert (= (and d!1504425 c!806783) b!4723889))

(assert (= (and d!1504425 (not c!806783)) b!4723887))

(assert (= (and b!4723887 res!1998729) b!4723888))

(assert (= (or b!4723889 b!4723887) bm!330447))

(assert (= (or b!4723889 b!4723887) bm!330446))

(assert (= (or b!4723889 b!4723887) bm!330445))

(assert (= (and d!1504425 res!1998731) b!4723891))

(assert (= (and b!4723891 res!1998730) b!4723890))

(declare-fun m!5661149 () Bool)

(assert (=> bm!330446 m!5661149))

(assert (=> bm!330447 m!5659025))

(declare-fun m!5661151 () Bool)

(assert (=> bm!330447 m!5661151))

(declare-fun m!5661153 () Bool)

(assert (=> b!4723890 m!5661153))

(declare-fun m!5661155 () Bool)

(assert (=> d!1504425 m!5661155))

(assert (=> d!1504425 m!5658783))

(declare-fun m!5661157 () Bool)

(assert (=> b!4723891 m!5661157))

(declare-fun m!5661159 () Bool)

(assert (=> bm!330445 m!5661159))

(declare-fun m!5661161 () Bool)

(assert (=> b!4723887 m!5661161))

(declare-fun m!5661163 () Bool)

(assert (=> b!4723887 m!5661163))

(declare-fun m!5661165 () Bool)

(assert (=> b!4723887 m!5661165))

(declare-fun m!5661167 () Bool)

(assert (=> b!4723887 m!5661167))

(assert (=> b!4723887 m!5659025))

(declare-fun m!5661169 () Bool)

(assert (=> b!4723887 m!5661169))

(declare-fun m!5661171 () Bool)

(assert (=> b!4723887 m!5661171))

(declare-fun m!5661173 () Bool)

(assert (=> b!4723887 m!5661173))

(declare-fun m!5661175 () Bool)

(assert (=> b!4723887 m!5661175))

(declare-fun m!5661177 () Bool)

(assert (=> b!4723887 m!5661177))

(assert (=> b!4723887 m!5661167))

(assert (=> b!4723887 m!5659025))

(assert (=> b!4723887 m!5661171))

(declare-fun m!5661179 () Bool)

(assert (=> b!4723887 m!5661179))

(declare-fun m!5661181 () Bool)

(assert (=> b!4723887 m!5661181))

(assert (=> b!4723888 m!5661163))

(assert (=> b!4722969 d!1504425))

(declare-fun d!1504443 () Bool)

(declare-fun res!1998745 () Bool)

(declare-fun e!2946212 () Bool)

(assert (=> d!1504443 (=> res!1998745 e!2946212)))

(assert (=> d!1504443 (= res!1998745 ((_ is Nil!52830) (toList!5917 lt!1888105)))))

(assert (=> d!1504443 (= (forall!11590 (toList!5917 lt!1888105) lambda!215668) e!2946212)))

(declare-fun b!4723915 () Bool)

(declare-fun e!2946213 () Bool)

(assert (=> b!4723915 (= e!2946212 e!2946213)))

(declare-fun res!1998746 () Bool)

(assert (=> b!4723915 (=> (not res!1998746) (not e!2946213))))

(assert (=> b!4723915 (= res!1998746 (dynLambda!21821 lambda!215668 (h!59177 (toList!5917 lt!1888105))))))

(declare-fun b!4723916 () Bool)

(assert (=> b!4723916 (= e!2946213 (forall!11590 (t!360220 (toList!5917 lt!1888105)) lambda!215668))))

(assert (= (and d!1504443 (not res!1998745)) b!4723915))

(assert (= (and b!4723915 res!1998746) b!4723916))

(declare-fun b_lambda!178959 () Bool)

(assert (=> (not b_lambda!178959) (not b!4723915)))

(declare-fun m!5661183 () Bool)

(assert (=> b!4723915 m!5661183))

(declare-fun m!5661185 () Bool)

(assert (=> b!4723916 m!5661185))

(assert (=> b!4722969 d!1504443))

(declare-fun d!1504445 () Bool)

(declare-fun e!2946215 () Bool)

(assert (=> d!1504445 e!2946215))

(declare-fun res!1998748 () Bool)

(assert (=> d!1504445 (=> res!1998748 e!2946215)))

(declare-fun e!2946217 () Bool)

(assert (=> d!1504445 (= res!1998748 e!2946217)))

(declare-fun res!1998747 () Bool)

(assert (=> d!1504445 (=> (not res!1998747) (not e!2946217))))

(declare-fun lt!1888934 () Bool)

(assert (=> d!1504445 (= res!1998747 (not lt!1888934))))

(declare-fun lt!1888927 () Bool)

(assert (=> d!1504445 (= lt!1888934 lt!1888927)))

(declare-fun lt!1888928 () Unit!130119)

(declare-fun e!2946218 () Unit!130119)

(assert (=> d!1504445 (= lt!1888928 e!2946218)))

(declare-fun c!806789 () Bool)

(assert (=> d!1504445 (= c!806789 lt!1888927)))

(assert (=> d!1504445 (= lt!1888927 (containsKey!3373 (toList!5917 lt!1888110) (_1!30519 (h!59177 oldBucket!34))))))

(assert (=> d!1504445 (= (contains!16175 lt!1888110 (_1!30519 (h!59177 oldBucket!34))) lt!1888934)))

(declare-fun b!4723917 () Bool)

(declare-fun e!2946214 () Bool)

(assert (=> b!4723917 (= e!2946214 (contains!16179 (keys!18974 lt!1888110) (_1!30519 (h!59177 oldBucket!34))))))

(declare-fun b!4723918 () Bool)

(assert (=> b!4723918 (= e!2946215 e!2946214)))

(declare-fun res!1998749 () Bool)

(assert (=> b!4723918 (=> (not res!1998749) (not e!2946214))))

(assert (=> b!4723918 (= res!1998749 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1888110) (_1!30519 (h!59177 oldBucket!34)))))))

(declare-fun b!4723919 () Bool)

(declare-fun e!2946219 () List!52957)

(assert (=> b!4723919 (= e!2946219 (keys!18974 lt!1888110))))

(declare-fun b!4723920 () Bool)

(assert (=> b!4723920 (= e!2946219 (getKeysList!951 (toList!5917 lt!1888110)))))

(declare-fun b!4723921 () Bool)

(declare-fun e!2946216 () Unit!130119)

(assert (=> b!4723921 (= e!2946218 e!2946216)))

(declare-fun c!806791 () Bool)

(declare-fun call!330457 () Bool)

(assert (=> b!4723921 (= c!806791 call!330457)))

(declare-fun b!4723922 () Bool)

(assert (=> b!4723922 false))

(declare-fun lt!1888930 () Unit!130119)

(declare-fun lt!1888933 () Unit!130119)

(assert (=> b!4723922 (= lt!1888930 lt!1888933)))

(assert (=> b!4723922 (containsKey!3373 (toList!5917 lt!1888110) (_1!30519 (h!59177 oldBucket!34)))))

(assert (=> b!4723922 (= lt!1888933 (lemmaInGetKeysListThenContainsKey!950 (toList!5917 lt!1888110) (_1!30519 (h!59177 oldBucket!34))))))

(declare-fun Unit!130482 () Unit!130119)

(assert (=> b!4723922 (= e!2946216 Unit!130482)))

(declare-fun b!4723923 () Bool)

(declare-fun Unit!130483 () Unit!130119)

(assert (=> b!4723923 (= e!2946216 Unit!130483)))

(declare-fun b!4723924 () Bool)

(assert (=> b!4723924 (= e!2946217 (not (contains!16179 (keys!18974 lt!1888110) (_1!30519 (h!59177 oldBucket!34)))))))

(declare-fun bm!330452 () Bool)

(assert (=> bm!330452 (= call!330457 (contains!16179 e!2946219 (_1!30519 (h!59177 oldBucket!34))))))

(declare-fun c!806790 () Bool)

(assert (=> bm!330452 (= c!806790 c!806789)))

(declare-fun b!4723925 () Bool)

(declare-fun lt!1888931 () Unit!130119)

(assert (=> b!4723925 (= e!2946218 lt!1888931)))

(declare-fun lt!1888929 () Unit!130119)

(assert (=> b!4723925 (= lt!1888929 (lemmaContainsKeyImpliesGetValueByKeyDefined!1848 (toList!5917 lt!1888110) (_1!30519 (h!59177 oldBucket!34))))))

(assert (=> b!4723925 (isDefined!9615 (getValueByKey!1957 (toList!5917 lt!1888110) (_1!30519 (h!59177 oldBucket!34))))))

(declare-fun lt!1888932 () Unit!130119)

(assert (=> b!4723925 (= lt!1888932 lt!1888929)))

(assert (=> b!4723925 (= lt!1888931 (lemmaInListThenGetKeysListContains!946 (toList!5917 lt!1888110) (_1!30519 (h!59177 oldBucket!34))))))

(assert (=> b!4723925 call!330457))

(assert (= (and d!1504445 c!806789) b!4723925))

(assert (= (and d!1504445 (not c!806789)) b!4723921))

(assert (= (and b!4723921 c!806791) b!4723922))

(assert (= (and b!4723921 (not c!806791)) b!4723923))

(assert (= (or b!4723925 b!4723921) bm!330452))

(assert (= (and bm!330452 c!806790) b!4723920))

(assert (= (and bm!330452 (not c!806790)) b!4723919))

(assert (= (and d!1504445 res!1998747) b!4723924))

(assert (= (and d!1504445 (not res!1998748)) b!4723918))

(assert (= (and b!4723918 res!1998749) b!4723917))

(declare-fun m!5661187 () Bool)

(assert (=> b!4723925 m!5661187))

(declare-fun m!5661189 () Bool)

(assert (=> b!4723925 m!5661189))

(assert (=> b!4723925 m!5661189))

(declare-fun m!5661191 () Bool)

(assert (=> b!4723925 m!5661191))

(declare-fun m!5661193 () Bool)

(assert (=> b!4723925 m!5661193))

(declare-fun m!5661195 () Bool)

(assert (=> b!4723922 m!5661195))

(declare-fun m!5661197 () Bool)

(assert (=> b!4723922 m!5661197))

(assert (=> b!4723918 m!5661189))

(assert (=> b!4723918 m!5661189))

(assert (=> b!4723918 m!5661191))

(declare-fun m!5661199 () Bool)

(assert (=> b!4723919 m!5661199))

(declare-fun m!5661201 () Bool)

(assert (=> b!4723920 m!5661201))

(assert (=> b!4723924 m!5661199))

(assert (=> b!4723924 m!5661199))

(declare-fun m!5661203 () Bool)

(assert (=> b!4723924 m!5661203))

(assert (=> d!1504445 m!5661195))

(declare-fun m!5661205 () Bool)

(assert (=> bm!330452 m!5661205))

(assert (=> b!4723917 m!5661199))

(assert (=> b!4723917 m!5661199))

(assert (=> b!4723917 m!5661203))

(assert (=> b!4722969 d!1504445))

(assert (=> bm!330327 d!1503991))

(assert (=> b!4722953 d!1504117))

(declare-fun d!1504447 () Bool)

(declare-fun res!1998750 () Bool)

(declare-fun e!2946220 () Bool)

(assert (=> d!1504447 (=> res!1998750 e!2946220)))

(assert (=> d!1504447 (= res!1998750 ((_ is Nil!52830) (toList!5917 lt!1887727)))))

(assert (=> d!1504447 (= (forall!11590 (toList!5917 lt!1887727) lambda!215641) e!2946220)))

(declare-fun b!4723926 () Bool)

(declare-fun e!2946221 () Bool)

(assert (=> b!4723926 (= e!2946220 e!2946221)))

(declare-fun res!1998751 () Bool)

(assert (=> b!4723926 (=> (not res!1998751) (not e!2946221))))

(assert (=> b!4723926 (= res!1998751 (dynLambda!21821 lambda!215641 (h!59177 (toList!5917 lt!1887727))))))

(declare-fun b!4723927 () Bool)

(assert (=> b!4723927 (= e!2946221 (forall!11590 (t!360220 (toList!5917 lt!1887727)) lambda!215641))))

(assert (= (and d!1504447 (not res!1998750)) b!4723926))

(assert (= (and b!4723926 res!1998751) b!4723927))

(declare-fun b_lambda!178961 () Bool)

(assert (=> (not b_lambda!178961) (not b!4723926)))

(declare-fun m!5661207 () Bool)

(assert (=> b!4723926 m!5661207))

(declare-fun m!5661209 () Bool)

(assert (=> b!4723927 m!5661209))

(assert (=> b!4722849 d!1504447))

(declare-fun d!1504449 () Bool)

(declare-fun res!1998752 () Bool)

(declare-fun e!2946222 () Bool)

(assert (=> d!1504449 (=> res!1998752 e!2946222)))

(assert (=> d!1504449 (= res!1998752 ((_ is Nil!52830) (ite c!806595 (toList!5917 lt!1887727) lt!1887720)))))

(assert (=> d!1504449 (= (forall!11590 (ite c!806595 (toList!5917 lt!1887727) lt!1887720) (ite c!806595 lambda!215662 lambda!215664)) e!2946222)))

(declare-fun b!4723928 () Bool)

(declare-fun e!2946223 () Bool)

(assert (=> b!4723928 (= e!2946222 e!2946223)))

(declare-fun res!1998753 () Bool)

(assert (=> b!4723928 (=> (not res!1998753) (not e!2946223))))

(assert (=> b!4723928 (= res!1998753 (dynLambda!21821 (ite c!806595 lambda!215662 lambda!215664) (h!59177 (ite c!806595 (toList!5917 lt!1887727) lt!1887720))))))

(declare-fun b!4723929 () Bool)

(assert (=> b!4723929 (= e!2946223 (forall!11590 (t!360220 (ite c!806595 (toList!5917 lt!1887727) lt!1887720)) (ite c!806595 lambda!215662 lambda!215664)))))

(assert (= (and d!1504449 (not res!1998752)) b!4723928))

(assert (= (and b!4723928 res!1998753) b!4723929))

(declare-fun b_lambda!178963 () Bool)

(assert (=> (not b_lambda!178963) (not b!4723928)))

(declare-fun m!5661211 () Bool)

(assert (=> b!4723928 m!5661211))

(declare-fun m!5661213 () Bool)

(assert (=> b!4723929 m!5661213))

(assert (=> bm!330340 d!1504449))

(declare-fun e!2946224 () Bool)

(declare-fun tp!1348428 () Bool)

(declare-fun b!4723930 () Bool)

(assert (=> b!4723930 (= e!2946224 (and tp_is_empty!31349 tp_is_empty!31351 tp!1348428))))

(assert (=> b!4722993 (= tp!1348426 e!2946224)))

(assert (= (and b!4722993 ((_ is Cons!52830) (_2!30520 (h!59178 (toList!5918 lm!2023))))) b!4723930))

(declare-fun b!4723931 () Bool)

(declare-fun e!2946225 () Bool)

(declare-fun tp!1348429 () Bool)

(declare-fun tp!1348430 () Bool)

(assert (=> b!4723931 (= e!2946225 (and tp!1348429 tp!1348430))))

(assert (=> b!4722993 (= tp!1348427 e!2946225)))

(assert (= (and b!4722993 ((_ is Cons!52831) (t!360221 (toList!5918 lm!2023)))) b!4723931))

(declare-fun e!2946226 () Bool)

(declare-fun b!4723932 () Bool)

(declare-fun tp!1348431 () Bool)

(assert (=> b!4723932 (= e!2946226 (and tp_is_empty!31349 tp_is_empty!31351 tp!1348431))))

(assert (=> b!4722988 (= tp!1348421 e!2946226)))

(assert (= (and b!4722988 ((_ is Cons!52830) (t!360220 (t!360220 oldBucket!34)))) b!4723932))

(declare-fun tp!1348432 () Bool)

(declare-fun e!2946227 () Bool)

(declare-fun b!4723933 () Bool)

(assert (=> b!4723933 (= e!2946227 (and tp_is_empty!31349 tp_is_empty!31351 tp!1348432))))

(assert (=> b!4722987 (= tp!1348420 e!2946227)))

(assert (= (and b!4722987 ((_ is Cons!52830) (t!360220 (t!360220 newBucket!218)))) b!4723933))

(declare-fun b_lambda!178965 () Bool)

(assert (= b_lambda!178803 (or d!1503887 b_lambda!178965)))

(declare-fun bs!1114529 () Bool)

(declare-fun d!1504451 () Bool)

(assert (= bs!1114529 (and d!1504451 d!1503887)))

(assert (=> bs!1114529 (= (dynLambda!21821 lambda!215661 (h!59177 newBucket!218)) (contains!16175 lt!1888057 (_1!30519 (h!59177 newBucket!218))))))

(declare-fun m!5661215 () Bool)

(assert (=> bs!1114529 m!5661215))

(assert (=> b!4723306 d!1504451))

(declare-fun b_lambda!178967 () Bool)

(assert (= b_lambda!178841 (or d!1503887 b_lambda!178967)))

(declare-fun bs!1114532 () Bool)

(declare-fun d!1504453 () Bool)

(assert (= bs!1114532 (and d!1504453 d!1503887)))

(assert (=> bs!1114532 (= (dynLambda!21821 lambda!215661 (h!59177 (toList!5917 lt!1887727))) (contains!16175 lt!1888057 (_1!30519 (h!59177 (toList!5917 lt!1887727)))))))

(declare-fun m!5661217 () Bool)

(assert (=> bs!1114532 m!5661217))

(assert (=> b!4723441 d!1504453))

(declare-fun b_lambda!178969 () Bool)

(assert (= b_lambda!178801 (or b!4722969 b_lambda!178969)))

(declare-fun bs!1114534 () Bool)

(declare-fun d!1504455 () Bool)

(assert (= bs!1114534 (and d!1504455 b!4722969)))

(assert (=> bs!1114534 (= (dynLambda!21821 lambda!215668 (h!59177 (toList!5917 lt!1887727))) (contains!16175 lt!1888110 (_1!30519 (h!59177 (toList!5917 lt!1887727)))))))

(declare-fun m!5661219 () Bool)

(assert (=> bs!1114534 m!5661219))

(assert (=> b!4723304 d!1504455))

(declare-fun b_lambda!178971 () Bool)

(assert (= b_lambda!178893 (or b!4722947 b_lambda!178971)))

(declare-fun bs!1114536 () Bool)

(declare-fun d!1504457 () Bool)

(assert (= bs!1114536 (and d!1504457 b!4722947)))

(assert (=> bs!1114536 (= (dynLambda!21821 lambda!215660 (h!59177 (toList!5917 lt!1888051))) (contains!16175 lt!1888056 (_1!30519 (h!59177 (toList!5917 lt!1888051)))))))

(declare-fun m!5661221 () Bool)

(assert (=> bs!1114536 m!5661221))

(assert (=> b!4723610 d!1504457))

(declare-fun b_lambda!178973 () Bool)

(assert (= b_lambda!178877 (or b!4722845 b_lambda!178973)))

(declare-fun bs!1114539 () Bool)

(declare-fun d!1504459 () Bool)

(assert (= bs!1114539 (and d!1504459 b!4722845)))

(assert (=> bs!1114539 (= (dynLambda!21821 lambda!215639 (h!59177 (toList!5917 lt!1887727))) (contains!16175 lt!1887727 (_1!30519 (h!59177 (toList!5917 lt!1887727)))))))

(declare-fun m!5661223 () Bool)

(assert (=> bs!1114539 m!5661223))

(assert (=> b!4723565 d!1504459))

(declare-fun b_lambda!178975 () Bool)

(assert (= b_lambda!178831 (or b!4722952 b_lambda!178975)))

(declare-fun bs!1114541 () Bool)

(declare-fun d!1504461 () Bool)

(assert (= bs!1114541 (and d!1504461 b!4722952)))

(assert (=> bs!1114541 (= (dynLambda!21821 lambda!215663 (h!59177 (toList!5917 lt!1887727))) (contains!16175 lt!1887727 (_1!30519 (h!59177 (toList!5917 lt!1887727)))))))

(assert (=> bs!1114541 m!5661223))

(assert (=> b!4723397 d!1504461))

(declare-fun b_lambda!178977 () Bool)

(assert (= b_lambda!178905 (or d!1503871 b_lambda!178977)))

(declare-fun bs!1114543 () Bool)

(declare-fun d!1504463 () Bool)

(assert (= bs!1114543 (and d!1504463 d!1503871)))

(assert (=> bs!1114543 (= (dynLambda!21820 lambda!215653 (h!59178 (toList!5918 lm!2023))) (noDuplicateKeys!2014 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))

(assert (=> bs!1114543 m!5658739))

(assert (=> b!4723660 d!1504463))

(declare-fun b_lambda!178979 () Bool)

(assert (= b_lambda!178947 (or b!4722969 b_lambda!178979)))

(declare-fun bs!1114545 () Bool)

(declare-fun d!1504465 () Bool)

(assert (= bs!1114545 (and d!1504465 b!4722969)))

(assert (=> bs!1114545 (= (dynLambda!21821 lambda!215668 (h!59177 oldBucket!34)) (contains!16175 lt!1888110 (_1!30519 (h!59177 oldBucket!34))))))

(assert (=> bs!1114545 m!5659029))

(assert (=> d!1504419 d!1504465))

(declare-fun b_lambda!178981 () Bool)

(assert (= b_lambda!178781 (or b!4722976 b_lambda!178981)))

(declare-fun bs!1114547 () Bool)

(declare-fun d!1504467 () Bool)

(assert (= bs!1114547 (and d!1504467 b!4722976)))

(assert (=> bs!1114547 (= (dynLambda!21821 lambda!215672 (h!59177 (toList!5917 lt!1887727))) (contains!16175 lt!1888135 (_1!30519 (h!59177 (toList!5917 lt!1887727)))))))

(declare-fun m!5661225 () Bool)

(assert (=> bs!1114547 m!5661225))

(assert (=> b!4723269 d!1504467))

(declare-fun b_lambda!178983 () Bool)

(assert (= b_lambda!178821 (or b!4722952 b_lambda!178983)))

(declare-fun bs!1114549 () Bool)

(declare-fun d!1504469 () Bool)

(assert (= bs!1114549 (and d!1504469 b!4722952)))

(assert (=> bs!1114549 (= (dynLambda!21821 lambda!215664 (h!59177 (toList!5917 lt!1887727))) (contains!16175 lt!1888077 (_1!30519 (h!59177 (toList!5917 lt!1887727)))))))

(declare-fun m!5661227 () Bool)

(assert (=> bs!1114549 m!5661227))

(assert (=> b!4723367 d!1504469))

(declare-fun b_lambda!178985 () Bool)

(assert (= b_lambda!178907 (or d!1503791 b_lambda!178985)))

(declare-fun bs!1114551 () Bool)

(declare-fun d!1504471 () Bool)

(assert (= bs!1114551 (and d!1504471 d!1503791)))

(assert (=> bs!1114551 (= (dynLambda!21820 lambda!215558 (h!59178 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023))))) (noDuplicateKeys!2014 (_2!30520 (h!59178 (Cons!52831 (tuple2!54453 hash!405 newBucket!218) (t!360221 (toList!5918 lm!2023)))))))))

(assert (=> bs!1114551 m!5659609))

(assert (=> b!4723662 d!1504471))

(declare-fun b_lambda!178987 () Bool)

(assert (= b_lambda!178951 (or b!4722969 b_lambda!178987)))

(declare-fun bs!1114553 () Bool)

(declare-fun d!1504473 () Bool)

(assert (= bs!1114553 (and d!1504473 b!4722969)))

(assert (=> bs!1114553 (= (dynLambda!21821 lambda!215668 (h!59177 (t!360220 oldBucket!34))) (contains!16175 lt!1888110 (_1!30519 (h!59177 (t!360220 oldBucket!34)))))))

(declare-fun m!5661229 () Bool)

(assert (=> bs!1114553 m!5661229))

(assert (=> b!4723885 d!1504473))

(declare-fun b_lambda!178989 () Bool)

(assert (= b_lambda!178911 (or d!1503899 b_lambda!178989)))

(declare-fun bs!1114555 () Bool)

(declare-fun d!1504475 () Bool)

(assert (= bs!1114555 (and d!1504475 d!1503899)))

(assert (=> bs!1114555 (= (dynLambda!21821 lambda!215669 (h!59177 oldBucket!34)) (contains!16175 lt!1888111 (_1!30519 (h!59177 oldBucket!34))))))

(declare-fun m!5661231 () Bool)

(assert (=> bs!1114555 m!5661231))

(assert (=> b!4723667 d!1504475))

(declare-fun b_lambda!178991 () Bool)

(assert (= b_lambda!178815 (or d!1503783 b_lambda!178991)))

(declare-fun bs!1114558 () Bool)

(declare-fun d!1504477 () Bool)

(assert (= bs!1114558 (and d!1504477 d!1503783)))

(assert (=> bs!1114558 (= (dynLambda!21820 lambda!215553 (h!59178 (toList!5918 lm!2023))) (allKeysSameHash!1840 (_2!30520 (h!59178 (toList!5918 lm!2023))) (_1!30520 (h!59178 (toList!5918 lm!2023))) hashF!1323))))

(declare-fun m!5661233 () Bool)

(assert (=> bs!1114558 m!5661233))

(assert (=> b!4723343 d!1504477))

(declare-fun b_lambda!178993 () Bool)

(assert (= b_lambda!178767 (or d!1503873 b_lambda!178993)))

(declare-fun bs!1114560 () Bool)

(declare-fun d!1504479 () Bool)

(assert (= bs!1114560 (and d!1504479 d!1503873)))

(assert (=> bs!1114560 (= (dynLambda!21821 lambda!215656 (h!59177 newBucket!218)) (= (hash!4384 hashF!1323 (_1!30519 (h!59177 newBucket!218))) hash!405))))

(declare-fun m!5661235 () Bool)

(assert (=> bs!1114560 m!5661235))

(assert (=> b!4723067 d!1504479))

(declare-fun b_lambda!178995 () Bool)

(assert (= b_lambda!178903 (or b!4722947 b_lambda!178995)))

(declare-fun bs!1114562 () Bool)

(declare-fun d!1504481 () Bool)

(assert (= bs!1114562 (and d!1504481 b!4722947)))

(assert (=> bs!1114562 (= (dynLambda!21821 lambda!215660 (h!59177 newBucket!218)) (contains!16175 lt!1888056 (_1!30519 (h!59177 newBucket!218))))))

(assert (=> bs!1114562 m!5658949))

(assert (=> d!1504295 d!1504481))

(declare-fun b_lambda!178997 () Bool)

(assert (= b_lambda!178933 (or b!4722976 b_lambda!178997)))

(declare-fun bs!1114564 () Bool)

(declare-fun d!1504483 () Bool)

(assert (= bs!1114564 (and d!1504483 b!4722976)))

(assert (=> bs!1114564 (= (dynLambda!21821 lambda!215671 (h!59177 (toList!5917 lt!1887727))) (contains!16175 lt!1887727 (_1!30519 (h!59177 (toList!5917 lt!1887727)))))))

(assert (=> bs!1114564 m!5661223))

(assert (=> b!4723799 d!1504483))

(declare-fun b_lambda!178999 () Bool)

(assert (= b_lambda!178949 (or b!4722969 b_lambda!178999)))

(declare-fun bs!1114566 () Bool)

(declare-fun d!1504485 () Bool)

(assert (= bs!1114566 (and d!1504485 b!4722969)))

(assert (=> bs!1114566 (= (dynLambda!21821 lambda!215667 (h!59177 (toList!5917 lt!1887727))) (contains!16175 lt!1887727 (_1!30519 (h!59177 (toList!5917 lt!1887727)))))))

(assert (=> bs!1114566 m!5661223))

(assert (=> b!4723883 d!1504485))

(declare-fun b_lambda!179001 () Bool)

(assert (= b_lambda!178961 (or d!1503799 b_lambda!179001)))

(declare-fun bs!1114568 () Bool)

(declare-fun d!1504487 () Bool)

(assert (= bs!1114568 (and d!1504487 d!1503799)))

(assert (=> bs!1114568 (= (dynLambda!21821 lambda!215641 (h!59177 (toList!5917 lt!1887727))) (contains!16175 lt!1887948 (_1!30519 (h!59177 (toList!5917 lt!1887727)))))))

(declare-fun m!5661237 () Bool)

(assert (=> bs!1114568 m!5661237))

(assert (=> b!4723926 d!1504487))

(declare-fun b_lambda!179003 () Bool)

(assert (= b_lambda!178837 (or b!4722952 b_lambda!179003)))

(declare-fun bs!1114569 () Bool)

(declare-fun d!1504489 () Bool)

(assert (= bs!1114569 (and d!1504489 b!4722952)))

(assert (=> bs!1114569 (= (dynLambda!21821 lambda!215664 (h!59177 (toList!5917 lt!1888072))) (contains!16175 lt!1888077 (_1!30519 (h!59177 (toList!5917 lt!1888072)))))))

(declare-fun m!5661239 () Bool)

(assert (=> bs!1114569 m!5661239))

(assert (=> b!4723416 d!1504489))

(declare-fun b_lambda!179005 () Bool)

(assert (= b_lambda!178883 (or b!4722845 b_lambda!179005)))

(declare-fun bs!1114571 () Bool)

(declare-fun d!1504491 () Bool)

(assert (= bs!1114571 (and d!1504491 b!4722845)))

(assert (=> bs!1114571 (= (dynLambda!21821 lambda!215640 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (contains!16175 lt!1887947 (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(assert (=> bs!1114571 m!5658759))

(assert (=> b!4723590 d!1504491))

(declare-fun b_lambda!179007 () Bool)

(assert (= b_lambda!178875 (or b!4722845 b_lambda!179007)))

(assert (=> d!1504237 d!1504491))

(declare-fun b_lambda!179009 () Bool)

(assert (= b_lambda!178887 (or d!1503843 b_lambda!179009)))

(declare-fun bs!1114574 () Bool)

(declare-fun d!1504493 () Bool)

(assert (= bs!1114574 (and d!1504493 d!1503843)))

(assert (=> bs!1114574 (= (dynLambda!21820 lambda!215642 (h!59178 (t!360221 (toList!5918 lm!2023)))) (noDuplicateKeys!2014 (_2!30520 (h!59178 (t!360221 (toList!5918 lm!2023))))))))

(assert (=> bs!1114574 m!5659519))

(assert (=> b!4723596 d!1504493))

(declare-fun b_lambda!179011 () Bool)

(assert (= b_lambda!178835 (or b!4722952 b_lambda!179011)))

(declare-fun bs!1114575 () Bool)

(declare-fun d!1504495 () Bool)

(assert (= bs!1114575 (and d!1504495 b!4722952)))

(assert (=> bs!1114575 (= (dynLambda!21821 lambda!215664 (h!59177 lt!1887720)) (contains!16175 lt!1888077 (_1!30519 (h!59177 lt!1887720))))))

(assert (=> bs!1114575 m!5658983))

(assert (=> b!4723414 d!1504495))

(declare-fun b_lambda!179013 () Bool)

(assert (= b_lambda!178937 (or b!4722976 b_lambda!179013)))

(declare-fun bs!1114577 () Bool)

(declare-fun d!1504497 () Bool)

(assert (= bs!1114577 (and d!1504497 b!4722976)))

(assert (=> bs!1114577 (= (dynLambda!21821 lambda!215672 (h!59177 (toList!5917 lt!1888130))) (contains!16175 lt!1888135 (_1!30519 (h!59177 (toList!5917 lt!1888130)))))))

(declare-fun m!5661241 () Bool)

(assert (=> bs!1114577 m!5661241))

(assert (=> b!4723823 d!1504497))

(declare-fun b_lambda!179015 () Bool)

(assert (= b_lambda!178939 (or b!4722976 b_lambda!179015)))

(declare-fun bs!1114579 () Bool)

(declare-fun d!1504499 () Bool)

(assert (= bs!1114579 (and d!1504499 b!4722976)))

(assert (=> bs!1114579 (= (dynLambda!21821 lambda!215672 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (contains!16175 lt!1888135 (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(assert (=> bs!1114579 m!5659083))

(assert (=> d!1504399 d!1504499))

(declare-fun b_lambda!179017 () Bool)

(assert (= b_lambda!178959 (or b!4722969 b_lambda!179017)))

(declare-fun bs!1114580 () Bool)

(declare-fun d!1504501 () Bool)

(assert (= bs!1114580 (and d!1504501 b!4722969)))

(assert (=> bs!1114580 (= (dynLambda!21821 lambda!215668 (h!59177 (toList!5917 lt!1888105))) (contains!16175 lt!1888110 (_1!30519 (h!59177 (toList!5917 lt!1888105)))))))

(declare-fun m!5661243 () Bool)

(assert (=> bs!1114580 m!5661243))

(assert (=> b!4723915 d!1504501))

(declare-fun b_lambda!179019 () Bool)

(assert (= b_lambda!178889 (or d!1503907 b_lambda!179019)))

(declare-fun bs!1114582 () Bool)

(declare-fun d!1504503 () Bool)

(assert (= bs!1114582 (and d!1504503 d!1503907)))

(assert (=> bs!1114582 (= (dynLambda!21821 lambda!215673 (h!59177 (Cons!52830 lt!1887722 lt!1887720))) (contains!16175 lt!1888136 (_1!30519 (h!59177 (Cons!52830 lt!1887722 lt!1887720)))))))

(declare-fun m!5661245 () Bool)

(assert (=> bs!1114582 m!5661245))

(assert (=> b!4723602 d!1504503))

(declare-fun b_lambda!179021 () Bool)

(assert (= b_lambda!178772 (or d!1503881 b_lambda!179021)))

(declare-fun bs!1114584 () Bool)

(declare-fun d!1504505 () Bool)

(assert (= bs!1114584 (and d!1504505 d!1503881)))

(assert (=> bs!1114584 (= (dynLambda!21820 lambda!215657 (h!59178 (toList!5918 lt!1887718))) (allKeysSameHash!1840 (_2!30520 (h!59178 (toList!5918 lt!1887718))) (_1!30520 (h!59178 (toList!5918 lt!1887718))) hashF!1323))))

(declare-fun m!5661247 () Bool)

(assert (=> bs!1114584 m!5661247))

(assert (=> b!4723104 d!1504505))

(declare-fun b_lambda!179023 () Bool)

(assert (= b_lambda!178763 (or b!4722947 b_lambda!179023)))

(declare-fun bs!1114586 () Bool)

(declare-fun d!1504507 () Bool)

(assert (= bs!1114586 (and d!1504507 b!4722947)))

(assert (=> bs!1114586 (= (dynLambda!21821 lambda!215660 (h!59177 (toList!5917 lt!1887727))) (contains!16175 lt!1888056 (_1!30519 (h!59177 (toList!5917 lt!1887727)))))))

(declare-fun m!5661249 () Bool)

(assert (=> bs!1114586 m!5661249))

(assert (=> b!4723026 d!1504507))

(declare-fun b_lambda!179025 () Bool)

(assert (= b_lambda!178825 (or b!4722952 b_lambda!179025)))

(assert (=> d!1504125 d!1504495))

(declare-fun b_lambda!179027 () Bool)

(assert (= b_lambda!178945 (or b!4722969 b_lambda!179027)))

(assert (=> b!4723880 d!1504465))

(declare-fun b_lambda!179029 () Bool)

(assert (= b_lambda!178757 (or b!4722845 b_lambda!179029)))

(declare-fun bs!1114588 () Bool)

(declare-fun d!1504509 () Bool)

(assert (= bs!1114588 (and d!1504509 b!4722845)))

(assert (=> bs!1114588 (= (dynLambda!21821 lambda!215640 (h!59177 (toList!5917 lt!1887727))) (contains!16175 lt!1887947 (_1!30519 (h!59177 (toList!5917 lt!1887727)))))))

(declare-fun m!5661251 () Bool)

(assert (=> bs!1114588 m!5661251))

(assert (=> b!4723010 d!1504509))

(declare-fun b_lambda!179031 () Bool)

(assert (= b_lambda!178943 (or b!4722976 b_lambda!179031)))

(assert (=> b!4723867 d!1504499))

(declare-fun b_lambda!179033 () Bool)

(assert (= b_lambda!178807 (or start!480732 b_lambda!179033)))

(declare-fun bs!1114590 () Bool)

(declare-fun d!1504511 () Bool)

(assert (= bs!1114590 (and d!1504511 start!480732)))

(assert (=> bs!1114590 (= (dynLambda!21820 lambda!215550 (h!59178 (t!360221 lt!1887719))) (noDuplicateKeys!2014 (_2!30520 (h!59178 (t!360221 lt!1887719)))))))

(declare-fun m!5661253 () Bool)

(assert (=> bs!1114590 m!5661253))

(assert (=> b!4723335 d!1504511))

(declare-fun b_lambda!179035 () Bool)

(assert (= b_lambda!178917 (or d!1503899 b_lambda!179035)))

(declare-fun bs!1114593 () Bool)

(declare-fun d!1504513 () Bool)

(assert (= bs!1114593 (and d!1504513 d!1503899)))

(assert (=> bs!1114593 (= (dynLambda!21821 lambda!215669 (h!59177 (toList!5917 lt!1887727))) (contains!16175 lt!1888111 (_1!30519 (h!59177 (toList!5917 lt!1887727)))))))

(declare-fun m!5661255 () Bool)

(assert (=> bs!1114593 m!5661255))

(assert (=> b!4723690 d!1504513))

(declare-fun b_lambda!179037 () Bool)

(assert (= b_lambda!178885 (or b!4722845 b_lambda!179037)))

(declare-fun bs!1114595 () Bool)

(declare-fun d!1504515 () Bool)

(assert (= bs!1114595 (and d!1504515 b!4722845)))

(assert (=> bs!1114595 (= (dynLambda!21821 lambda!215640 (h!59177 (toList!5917 lt!1887942))) (contains!16175 lt!1887947 (_1!30519 (h!59177 (toList!5917 lt!1887942)))))))

(declare-fun m!5661257 () Bool)

(assert (=> bs!1114595 m!5661257))

(assert (=> b!4723592 d!1504515))

(declare-fun b_lambda!179039 () Bool)

(assert (= b_lambda!178871 (or b!4722845 b_lambda!179039)))

(declare-fun bs!1114597 () Bool)

(declare-fun d!1504517 () Bool)

(assert (= bs!1114597 (and d!1504517 b!4722845)))

(assert (=> bs!1114597 (= (dynLambda!21821 lambda!215640 (h!59177 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023)))))) (contains!16175 lt!1887947 (_1!30519 (h!59177 (t!360220 (_2!30520 (h!59178 (toList!5918 lm!2023))))))))))

(declare-fun m!5661259 () Bool)

(assert (=> bs!1114597 m!5661259))

(assert (=> b!4723527 d!1504517))

(declare-fun b_lambda!179041 () Bool)

(assert (= b_lambda!178895 (or b!4722947 b_lambda!179041)))

(assert (=> b!4723614 d!1504481))

(declare-fun b_lambda!179043 () Bool)

(assert (= b_lambda!178759 (or d!1503797 b_lambda!179043)))

(declare-fun bs!1114599 () Bool)

(declare-fun d!1504519 () Bool)

(assert (= bs!1114599 (and d!1504519 d!1503797)))

(assert (=> bs!1114599 (= (dynLambda!21820 lambda!215560 (h!59178 lt!1887719)) (noDuplicateKeys!2014 (_2!30520 (h!59178 lt!1887719))))))

(assert (=> bs!1114599 m!5659103))

(assert (=> b!4723014 d!1504519))

(declare-fun b_lambda!179045 () Bool)

(assert (= b_lambda!178783 (or d!1503889 b_lambda!179045)))

(declare-fun bs!1114600 () Bool)

(declare-fun d!1504521 () Bool)

(assert (= bs!1114600 (and d!1504521 d!1503889)))

(assert (=> bs!1114600 (= (dynLambda!21821 lambda!215665 (h!59177 (toList!5917 lt!1887727))) (contains!16175 lt!1888078 (_1!30519 (h!59177 (toList!5917 lt!1887727)))))))

(declare-fun m!5661261 () Bool)

(assert (=> bs!1114600 m!5661261))

(assert (=> b!4723271 d!1504521))

(declare-fun b_lambda!179047 () Bool)

(assert (= b_lambda!178775 (or d!1503889 b_lambda!179047)))

(declare-fun bs!1114601 () Bool)

(declare-fun d!1504523 () Bool)

(assert (= bs!1114601 (and d!1504523 d!1503889)))

(assert (=> bs!1114601 (= (dynLambda!21821 lambda!215665 (h!59177 lt!1887720)) (contains!16175 lt!1888078 (_1!30519 (h!59177 lt!1887720))))))

(declare-fun m!5661263 () Bool)

(assert (=> bs!1114601 m!5661263))

(assert (=> b!4723125 d!1504523))

(declare-fun b_lambda!179049 () Bool)

(assert (= b_lambda!178913 (or start!480732 b_lambda!179049)))

(declare-fun bs!1114603 () Bool)

(declare-fun d!1504525 () Bool)

(assert (= bs!1114603 (and d!1504525 start!480732)))

(assert (=> bs!1114603 (= (dynLambda!21820 lambda!215550 (h!59178 (t!360221 (toList!5918 lm!2023)))) (noDuplicateKeys!2014 (_2!30520 (h!59178 (t!360221 (toList!5918 lm!2023))))))))

(assert (=> bs!1114603 m!5659519))

(assert (=> b!4723686 d!1504525))

(declare-fun b_lambda!179051 () Bool)

(assert (= b_lambda!178931 (or d!1503911 b_lambda!179051)))

(declare-fun bs!1114605 () Bool)

(declare-fun d!1504527 () Bool)

(assert (= bs!1114605 (and d!1504527 d!1503911)))

(assert (=> bs!1114605 (= (dynLambda!21821 lambda!215674 (h!59177 oldBucket!34)) (= (hash!4384 hashF!1323 (_1!30519 (h!59177 oldBucket!34))) hash!405))))

(declare-fun m!5661265 () Bool)

(assert (=> bs!1114605 m!5661265))

(assert (=> b!4723795 d!1504527))

(declare-fun b_lambda!179053 () Bool)

(assert (= b_lambda!178823 (or b!4722952 b_lambda!179053)))

(declare-fun bs!1114607 () Bool)

(declare-fun d!1504529 () Bool)

(assert (= bs!1114607 (and d!1504529 b!4722952)))

(assert (=> bs!1114607 (= (dynLambda!21821 lambda!215664 (h!59177 (t!360220 lt!1887720))) (contains!16175 lt!1888077 (_1!30519 (h!59177 (t!360220 lt!1887720)))))))

(declare-fun m!5661267 () Bool)

(assert (=> bs!1114607 m!5661267))

(assert (=> b!4723370 d!1504529))

(declare-fun b_lambda!179055 () Bool)

(assert (= b_lambda!178897 (or b!4722947 b_lambda!179055)))

(declare-fun bs!1114608 () Bool)

(declare-fun d!1504531 () Bool)

(assert (= bs!1114608 (and d!1504531 b!4722947)))

(assert (=> bs!1114608 (= (dynLambda!21821 lambda!215660 (h!59177 (t!360220 newBucket!218))) (contains!16175 lt!1888056 (_1!30519 (h!59177 (t!360220 newBucket!218)))))))

(declare-fun m!5661269 () Bool)

(assert (=> bs!1114608 m!5661269))

(assert (=> b!4723616 d!1504531))

(declare-fun b_lambda!179057 () Bool)

(assert (= b_lambda!178935 (or b!4722976 b_lambda!179057)))

(declare-fun bs!1114609 () Bool)

(declare-fun d!1504533 () Bool)

(assert (= bs!1114609 (and d!1504533 b!4722976)))

(assert (=> bs!1114609 (= (dynLambda!21821 lambda!215672 (h!59177 (t!360220 (Cons!52830 lt!1887722 lt!1887720)))) (contains!16175 lt!1888135 (_1!30519 (h!59177 (t!360220 (Cons!52830 lt!1887722 lt!1887720))))))))

(declare-fun m!5661271 () Bool)

(assert (=> bs!1114609 m!5661271))

(assert (=> b!4723810 d!1504533))

(declare-fun b_lambda!179059 () Bool)

(assert (= b_lambda!178755 (or d!1503799 b_lambda!179059)))

(declare-fun bs!1114610 () Bool)

(declare-fun d!1504535 () Bool)

(assert (= bs!1114610 (and d!1504535 d!1503799)))

(assert (=> bs!1114610 (= (dynLambda!21821 lambda!215641 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023))))) (contains!16175 lt!1887948 (_1!30519 (h!59177 (_2!30520 (h!59178 (toList!5918 lm!2023)))))))))

(declare-fun m!5661273 () Bool)

(assert (=> bs!1114610 m!5661273))

(assert (=> b!4723006 d!1504535))

(declare-fun b_lambda!179061 () Bool)

(assert (= b_lambda!178915 (or d!1503907 b_lambda!179061)))

(declare-fun bs!1114611 () Bool)

(declare-fun d!1504537 () Bool)

(assert (= bs!1114611 (and d!1504537 d!1503907)))

(assert (=> bs!1114611 (= (dynLambda!21821 lambda!215673 (h!59177 (toList!5917 lt!1887727))) (contains!16175 lt!1888136 (_1!30519 (h!59177 (toList!5917 lt!1887727)))))))

(declare-fun m!5661275 () Bool)

(assert (=> bs!1114611 m!5661275))

(assert (=> b!4723688 d!1504537))

(declare-fun b_lambda!179063 () Bool)

(assert (= b_lambda!178891 (or b!4722947 b_lambda!179063)))

(declare-fun bs!1114612 () Bool)

(declare-fun d!1504539 () Bool)

(assert (= bs!1114612 (and d!1504539 b!4722947)))

(assert (=> bs!1114612 (= (dynLambda!21821 lambda!215659 (h!59177 (toList!5917 lt!1887727))) (contains!16175 lt!1887727 (_1!30519 (h!59177 (toList!5917 lt!1887727)))))))

(assert (=> bs!1114612 m!5661223))

(assert (=> b!4723608 d!1504539))

(check-sat (not d!1504397) (not b!4723248) (not b!4723063) (not d!1503935) (not b!4723932) (not d!1504369) (not b!4723033) (not b!4723924) (not b_lambda!179029) (not b!4723612) (not b!4723801) (not d!1504019) (not b!4723136) (not d!1504295) (not b!4723617) (not bs!1114586) (not bs!1114568) (not d!1504299) (not b!4723156) (not bm!330437) (not b!4723373) (not d!1504393) (not b!4723439) (not d!1504411) (not b!4723095) (not b!4723157) (not b!4723027) (not b!4723356) (not b!4723630) (not b!4723276) (not b_lambda!179017) (not bm!330389) (not b!4723780) (not bm!330382) (not b!4723929) (not b!4723650) (not b_lambda!179045) (not b!4723878) (not b!4723052) (not b!4723308) (not b!4723888) (not bs!1114593) (not b!4723532) (not b!4723049) (not b!4723613) (not d!1504127) (not b_lambda!179043) (not b_lambda!178991) (not d!1504031) (not b!4723446) (not b_lambda!179025) (not b_lambda!178839) (not d!1504245) (not b!4723552) (not bm!330403) (not d!1504015) (not b!4723200) (not b!4723193) (not d!1504283) (not b!4723765) (not bs!1114549) (not bm!330364) (not b!4723627) (not b!4723233) (not b!4723429) (not b!4723008) (not b_lambda!179003) (not b!4723919) (not b!4723345) (not b!4723105) (not b!4723639) tp_is_empty!31349 (not b!4723528) (not b!4723661) (not b!4723637) (not b_lambda!179031) (not b!4723665) (not b!4723591) (not b_lambda!179035) (not bm!330440) (not b!4723353) (not b!4723054) (not b!4723057) (not bm!330409) (not b!4723312) (not b!4723605) (not bs!1114588) (not b_lambda!179049) (not b!4723296) (not b!4723687) (not bm!330381) (not b!4723826) (not b!4723640) (not b!4723764) (not b_lambda!179021) (not b!4723299) (not bs!1114569) (not b_lambda!178761) (not b_lambda!178753) (not bs!1114566) (not b!4723871) (not bm!330378) (not bs!1114539) (not b!4723830) (not b!4723398) (not b!4723137) (not bm!330422) (not d!1504269) (not bs!1114579) (not b_lambda!179047) (not b!4723372) (not b_lambda!178997) (not b!4723126) (not b!4723916) (not bm!330388) (not b!4723497) (not d!1504409) (not d!1504071) (not b_lambda!178749) (not b!4723775) (not bs!1114608) (not b_lambda!178779) (not bm!330383) (not d!1503923) (not d!1504257) (not b!4723766) (not b!4723618) (not b_lambda!179013) (not b!4723628) (not b_lambda!178993) (not b!4723023) (not b!4723829) (not b!4723927) (not b!4723803) (not b_lambda!179061) (not b_lambda!178971) (not b!4723009) (not bs!1114601) (not b!4723196) (not b!4723097) (not bs!1114607) (not b!4723691) (not b!4723352) (not b!4723604) (not b!4723399) (not bs!1114547) (not b!4723501) (not bm!330438) (not b_lambda!178999) (not bs!1114532) (not b!4723629) (not bs!1114555) (not bm!330434) (not d!1504039) (not b!4723597) (not d!1504237) (not bm!330353) (not b_lambda!178809) (not b!4723307) (not bm!330452) (not b_lambda!178969) (not b!4723194) (not bm!330379) (not b_lambda!179063) (not b!4723013) (not b_lambda!178777) (not b!4723886) (not b_lambda!179005) (not b_lambda!178965) (not b!4723621) (not b!4723305) (not b!4723096) (not b!4723822) (not d!1504033) (not b!4723529) (not b_lambda!178765) (not bs!1114571) (not b_lambda!178967) (not d!1504399) (not b_lambda!179009) (not bs!1114553) (not d!1504021) (not d!1504035) (not d!1504287) (not b!4723035) (not bm!330396) (not bm!330402) (not b_lambda!178983) (not b!4723626) (not bs!1114597) (not b!4723800) (not b!4723816) (not b!4723364) (not b!4723055) (not b_lambda!179041) (not bs!1114599) (not bm!330445) (not b_lambda!178977) (not d!1504007) (not b!4723771) (not b!4723191) (not b!4723786) (not b_lambda!178975) (not b!4723931) (not d!1504013) (not bm!330350) (not b!4723363) (not d!1504309) (not b_lambda!178929) (not b!4723673) (not b!4723541) (not bm!330362) (not b!4723611) (not b!4723400) (not b!4723277) (not b!4723127) (not b!4723632) (not bm!330446) (not b!4723769) (not d!1503955) (not b!4723135) (not b!4723763) (not b!4723358) (not b!4723357) (not b!4723603) (not b!4723025) (not b!4723615) (not d!1504161) (not bs!1114595) (not d!1504417) (not b!4723772) (not b_lambda!179023) (not d!1504277) (not bs!1114611) (not b!4723824) (not d!1503975) (not b_lambda!178963) (not bs!1114558) (not b!4723347) (not b!4723198) (not b!4723869) (not b_lambda!178751) (not bs!1114562) (not b!4723344) (not b!4723785) (not b!4723806) (not b!4723505) (not b!4723767) (not d!1503991) (not b!4723536) (not b!4723011) (not b!4723922) (not bs!1114580) (not b!4723791) (not b!4723812) (not b!4723069) (not b!4723311) (not b!4723270) (not b!4723668) (not b!4723674) (not b!4723756) (not b!4723443) (not b!4723750) (not b!4723336) (not d!1503963) (not d!1504025) (not bm!330439) (not b_lambda!179027) (not b!4723663) (not b!4723021) (not b!4723809) (not b!4723636) (not bm!330432) (not d!1504095) (not b!4723447) (not bs!1114584) (not bm!330349) (not b!4723873) (not b!4723504) (not d!1504401) (not b!4723070) (not b!4723068) (not d!1504085) (not b!4723376) (not d!1504445) (not b!4723920) (not b!4723244) (not d!1504125) (not b!4723623) (not b!4723930) (not bm!330419) (not bm!330399) (not bs!1114543) (not b!4723619) (not b!4722999) (not b!4723502) (not b!4723272) (not b!4723058) (not bm!330394) (not d!1504303) (not b!4723402) (not b!4723755) (not b!4723868) (not b_lambda!179007) (not d!1504375) (not d!1504413) (not b_lambda!178987) (not b!4723882) (not bs!1114560) (not b!4723566) (not bs!1114545) (not b!4723754) (not b!4723348) (not bs!1114603) (not b!4723309) (not b!4723417) (not d!1504285) (not b!4723549) (not b!4723821) (not b!4723689) (not d!1504005) (not b!4723752) (not bs!1114575) (not b!4723635) (not b_lambda!178989) (not b!4723338) (not b_lambda!178995) (not d!1503957) (not d!1504419) (not b_lambda!179053) (not b_lambda!179001) (not b!4723876) (not b!4723811) (not b!4723825) (not b!4723498) (not b!4723787) (not bs!1114612) (not b!4723143) (not b!4723195) (not b!4723815) (not b!4723545) (not b!4723891) (not b!4723784) (not b_lambda!179033) (not bs!1114564) (not b!4723672) (not bm!330436) (not d!1504227) (not b!4723609) (not b!4723431) (not b!4723005) (not bm!330421) (not b!4723442) (not b!4723918) (not b!4723007) (not b!4723874) (not b!4723789) (not b_lambda!179039) (not b!4723368) (not b!4723620) (not d!1504385) (not b!4723887) (not bs!1114609) (not b!4723595) (not b!4723076) (not d!1504275) (not bs!1114577) (not b!4723625) (not d!1504123) (not bm!330380) (not b!4723879) (not d!1503919) (not b!4723130) (not b!4723925) (not d!1504335) (not bm!330395) (not b_lambda!179057) (not d!1504373) (not b!4723881) (not bm!330420) (not b_lambda!179059) (not b!4723634) (not bs!1114590) (not b!4723802) (not bm!330444) (not d!1504111) (not b!4723403) (not b!4723138) (not b!4723890) (not d!1504139) (not d!1504323) (not b_lambda!179015) (not b!4723782) (not bs!1114605) (not d!1504263) (not b!4723247) (not d!1503931) (not bs!1114534) (not bm!330431) (not d!1504391) (not bs!1114529) (not bm!330351) (not b!4723827) (not d!1503969) (not b_lambda!179051) (not b!4723540) (not b!4723814) (not b!4723813) (not b!4723872) (not b_lambda!178973) (not b!4723562) (not d!1503981) (not bm!330418) (not b!4723273) (not b!4723142) (not b_lambda!178979) (not bs!1114551) (not bs!1114541) (not b_lambda!179011) (not b!4723046) (not b!4723246) (not b!4723537) (not bm!330397) (not b!4723346) (not b!4723415) (not b!4723530) (not b!4723361) (not b!4723777) (not b!4723808) (not b!4723015) (not b_lambda!178981) (not bm!330398) (not b!4723543) (not d!1504259) (not b!4723542) (not d!1504043) (not b!4723917) (not d!1503961) (not d!1504211) (not bm!330401) (not bs!1114536) (not b!4723593) (not b!4723531) (not d!1504425) (not b!4723804) (not b!4723350) (not b!4723685) (not b!4723761) (not b_lambda!179055) (not b!4723189) (not b!4723371) (not b!4723794) (not bs!1114574) (not b_lambda!178799) (not d!1504231) (not b!4723204) (not b!4723324) (not b!4723534) (not b!4723128) tp_is_empty!31351 (not b!4723817) (not bm!330408) (not b!4723140) (not b!4723819) (not b!4723444) (not b!4723884) (not b!4723600) (not b!4723594) (not bs!1114582) (not bm!330447) (not b_lambda!179037) (not b!4723778) (not b!4723870) (not b!4723274) (not bs!1114600) (not b!4723796) (not b!4723146) (not b_lambda!178985) (not b!4723607) (not b_lambda!179019) (not d!1504113) (not bs!1114610) (not b!4723933) (not b!4723359))
(check-sat)
