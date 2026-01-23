; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1584 () Bool)

(assert start!1584)

(declare-fun res!27255 () Bool)

(declare-fun e!15370 () Bool)

(assert (=> start!1584 (=> (not res!27255) (not e!15370))))

(declare-fun initialSize!13 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!1584 (= res!27255 (validMask!0 (bvsub initialSize!13 #b00000000000000000000000000000001)))))

(assert (=> start!1584 e!15370))

(assert (=> start!1584 true))

(declare-datatypes ((Hashable!46 0))(
  ( (HashableExt!45 (__x!552 Int)) )
))
(declare-fun hashF!393 () Hashable!46)

(declare-fun lambda!523 () Int)

(declare-fun b!33675 () Bool)

(declare-datatypes ((C!1364 0))(
  ( (C!1365 (val!173 Int)) )
))
(declare-datatypes ((Regex!145 0))(
  ( (ElementMatch!145 (c!15319 C!1364)) (Concat!255 (regOne!802 Regex!145) (regTwo!802 Regex!145)) (EmptyExpr!145) (Star!145 (reg!474 Regex!145)) (EmptyLang!145) (Union!145 (regOne!803 Regex!145) (regTwo!803 Regex!145)) )
))
(declare-datatypes ((List!280 0))(
  ( (Nil!278) (Cons!278 (h!5674 Regex!145) (t!14872 List!280)) )
))
(declare-datatypes ((Context!54 0))(
  ( (Context!55 (exprs!527 List!280)) )
))
(declare-datatypes ((tuple3!54 0))(
  ( (tuple3!55 (_1!117 Regex!145) (_2!117 Context!54) (_3!27 C!1364)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!180 0))(
  ( (tuple2!181 (_1!118 tuple3!54) (_2!118 (InoxSet Context!54))) )
))
(declare-datatypes ((List!281 0))(
  ( (Nil!279) (Cons!279 (h!5675 tuple2!180) (t!14873 List!281)) )
))
(declare-datatypes ((array!161 0))(
  ( (array!162 (arr!101 (Array (_ BitVec 32) List!281)) (size!337 (_ BitVec 32))) )
))
(declare-datatypes ((array!163 0))(
  ( (array!164 (arr!102 (Array (_ BitVec 32) (_ BitVec 64))) (size!338 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!92 0))(
  ( (LongMapFixedSize!93 (defaultEntry!379 Int) (mask!699 (_ BitVec 32)) (extraKeys!291 (_ BitVec 32)) (zeroValue!301 List!281) (minValue!301 List!281) (_size!228 (_ BitVec 32)) (_keys!334 array!163) (_values!323 array!161) (_vacant!106 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!181 0))(
  ( (Cell!182 (v!12055 LongMapFixedSize!92)) )
))
(declare-datatypes ((MutLongMap!46 0))(
  ( (LongMap!46 (underlying!291 Cell!181)) (MutLongMapExt!45 (__x!553 Int)) )
))
(declare-datatypes ((Cell!183 0))(
  ( (Cell!184 (v!12056 MutLongMap!46)) )
))
(declare-datatypes ((MutableMap!46 0))(
  ( (MutableMapExt!45 (__x!554 Int)) (HashMap!46 (underlying!292 Cell!183) (hashF!1906 Hashable!46) (_size!229 (_ BitVec 32)) (defaultValue!192 Int)) )
))
(declare-datatypes ((CacheDown!46 0))(
  ( (CacheDown!47 (cache!525 MutableMap!46)) )
))
(declare-fun inv!584 (CacheDown!46) Bool)

(declare-fun getEmptyHashMap!2 (Int Hashable!46 (_ BitVec 32)) MutableMap!46)

(assert (=> b!33675 (= e!15370 (not (inv!584 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))

(assert (= (and start!1584 res!27255) b!33675))

(declare-fun m!9589 () Bool)

(assert (=> start!1584 m!9589))

(declare-fun m!9591 () Bool)

(assert (=> b!33675 m!9591))

(declare-fun m!9593 () Bool)

(assert (=> b!33675 m!9593))

(check-sat (not start!1584) (not b!33675))
(check-sat)
(get-model)

(declare-fun d!3403 () Bool)

(assert (=> d!3403 (= (validMask!0 (bvsub initialSize!13 #b00000000000000000000000000000001)) (and (or (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000001111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000011111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000001111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000011111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000001111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000011111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000111111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000001111111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000011111111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000111111111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000001111111111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000011111111111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000111111111111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000001111111111111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000011111111111111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000111111111111111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000001111111111111111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000011111111111111111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000111111111111111111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000001111111111111111111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000011111111111111111111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000111111111111111111111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00001111111111111111111111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00011111111111111111111111111111) (= (bvsub initialSize!13 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (bvsle (bvsub initialSize!13 #b00000000000000000000000000000001) #b00111111111111111111111111111111)))))

(assert (=> start!1584 d!3403))

(declare-fun d!3407 () Bool)

(declare-fun res!27267 () Bool)

(declare-fun e!15386 () Bool)

(assert (=> d!3407 (=> (not res!27267) (not e!15386))))

(get-info :version)

(assert (=> d!3407 (= res!27267 ((_ is HashMap!46) (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))

(assert (=> d!3407 (= (inv!584 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))) e!15386)))

(declare-fun b!33695 () Bool)

(declare-fun validCacheMapDown!8 (MutableMap!46) Bool)

(assert (=> b!33695 (= e!15386 (validCacheMapDown!8 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))

(assert (= (and d!3407 res!27267) b!33695))

(declare-fun m!9603 () Bool)

(assert (=> b!33695 m!9603))

(assert (=> b!33675 d!3407))

(declare-fun b!33711 () Bool)

(declare-fun e!15398 () Bool)

(declare-fun lt!2112 () MutLongMap!46)

(assert (=> b!33711 (= e!15398 ((_ is LongMap!46) lt!2112))))

(assert (=> b!33711 (= lt!2112 (v!12056 (underlying!292 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))

(declare-fun b!33710 () Bool)

(declare-fun e!15397 () Bool)

(assert (=> b!33710 (= e!15397 e!15398)))

(declare-fun d!3411 () Bool)

(assert (=> d!3411 (= true e!15397)))

(assert (= b!33710 b!33711))

(assert (= (and d!3411 ((_ is HashMap!46) (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))) b!33710))

(declare-fun e!15392 () Bool)

(assert (=> d!3411 e!15392))

(declare-fun res!27276 () Bool)

(assert (=> d!3411 (=> (not res!27276) (not e!15392))))

(assert (=> d!3411 (= res!27276 true)))

(declare-fun lt!2109 () MutableMap!46)

(declare-fun lambda!533 () Int)

(declare-fun getEmptyLongMap!3 (Int (_ BitVec 32)) MutLongMap!46)

(assert (=> d!3411 (= lt!2109 (HashMap!46 (Cell!184 (getEmptyLongMap!3 lambda!533 initialSize!13)) hashF!393 #b00000000000000000000000000000000 lambda!523))))

(declare-fun lt!2108 () MutableMap!46)

(assert (=> d!3411 (= lt!2108 (HashMap!46 (Cell!184 (getEmptyLongMap!3 lambda!533 initialSize!13)) hashF!393 #b00000000000000000000000000000000 lambda!523))))

(assert (=> d!3411 (validMask!0 (bvsub initialSize!13 #b00000000000000000000000000000001))))

(assert (=> d!3411 (= (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13) lt!2108)))

(declare-fun b!33702 () Bool)

(declare-fun res!27277 () Bool)

(assert (=> b!33702 (=> (not res!27277) (not e!15392))))

(declare-fun valid!57 (MutableMap!46) Bool)

(assert (=> b!33702 (= res!27277 (valid!57 lt!2108))))

(declare-fun b!33703 () Bool)

(declare-fun size!340 (MutableMap!46) (_ BitVec 32))

(assert (=> b!33703 (= e!15392 (= (size!340 lt!2108) #b00000000000000000000000000000000))))

(assert (= (and d!3411 res!27276) b!33702))

(assert (= (and b!33702 res!27277) b!33703))

(declare-fun m!9605 () Bool)

(assert (=> d!3411 m!9605))

(assert (=> d!3411 m!9605))

(assert (=> d!3411 m!9589))

(declare-fun m!9607 () Bool)

(assert (=> b!33702 m!9607))

(declare-fun m!9609 () Bool)

(assert (=> b!33703 m!9609))

(assert (=> b!33675 d!3411))

(check-sat (not b!33703) (not b!33702) (not b!33695) (not d!3411))
(check-sat)
(get-model)

(declare-fun d!3417 () Bool)

(assert (=> d!3417 (= (size!340 lt!2108) (_size!229 lt!2108))))

(assert (=> b!33703 d!3417))

(declare-fun d!3419 () Bool)

(declare-fun res!27312 () Bool)

(declare-fun e!15427 () Bool)

(assert (=> d!3419 (=> (not res!27312) (not e!15427))))

(declare-fun valid!60 (MutLongMap!46) Bool)

(assert (=> d!3419 (= res!27312 (valid!60 (v!12056 (underlying!292 lt!2108))))))

(assert (=> d!3419 (= (valid!57 lt!2108) e!15427)))

(declare-fun b!33760 () Bool)

(declare-fun res!27313 () Bool)

(assert (=> b!33760 (=> (not res!27313) (not e!15427))))

(declare-fun lambda!546 () Int)

(declare-datatypes ((tuple2!184 0))(
  ( (tuple2!185 (_1!120 (_ BitVec 64)) (_2!120 List!281)) )
))
(declare-datatypes ((List!284 0))(
  ( (Nil!282) (Cons!282 (h!5678 tuple2!184) (t!14876 List!284)) )
))
(declare-fun forall!40 (List!284 Int) Bool)

(declare-datatypes ((ListLongMap!13 0))(
  ( (ListLongMap!14 (toList!155 List!284)) )
))
(declare-fun map!177 (MutLongMap!46) ListLongMap!13)

(assert (=> b!33760 (= res!27313 (forall!40 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108)))) lambda!546))))

(declare-fun b!33761 () Bool)

(declare-fun allKeysSameHashInMap!5 (ListLongMap!13 Hashable!46) Bool)

(assert (=> b!33761 (= e!15427 (allKeysSameHashInMap!5 (map!177 (v!12056 (underlying!292 lt!2108))) (hashF!1906 lt!2108)))))

(assert (= (and d!3419 res!27312) b!33760))

(assert (= (and b!33760 res!27313) b!33761))

(declare-fun m!9682 () Bool)

(assert (=> d!3419 m!9682))

(declare-fun m!9684 () Bool)

(assert (=> b!33760 m!9684))

(declare-fun m!9686 () Bool)

(assert (=> b!33760 m!9686))

(assert (=> b!33761 m!9684))

(assert (=> b!33761 m!9684))

(declare-fun m!9688 () Bool)

(assert (=> b!33761 m!9688))

(assert (=> b!33702 d!3419))

(declare-fun d!3439 () Bool)

(declare-fun res!27327 () Bool)

(declare-fun e!15439 () Bool)

(assert (=> d!3439 (=> (not res!27327) (not e!15439))))

(assert (=> d!3439 (= res!27327 (valid!57 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))

(assert (=> d!3439 (= (validCacheMapDown!8 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))) e!15439)))

(declare-fun b!33777 () Bool)

(declare-fun res!27328 () Bool)

(assert (=> b!33777 (=> (not res!27328) (not e!15439))))

(declare-fun invariantList!13 (List!281) Bool)

(declare-datatypes ((ListMap!27 0))(
  ( (ListMap!28 (toList!156 List!281)) )
))
(declare-fun map!178 (MutableMap!46) ListMap!27)

(assert (=> b!33777 (= res!27328 (invariantList!13 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))

(declare-fun b!33778 () Bool)

(declare-fun lambda!549 () Int)

(declare-fun forall!41 (List!281 Int) Bool)

(assert (=> b!33778 (= e!15439 (forall!41 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))) lambda!549))))

(assert (= (and d!3439 res!27327) b!33777))

(assert (= (and b!33777 res!27328) b!33778))

(declare-fun m!9709 () Bool)

(assert (=> d!3439 m!9709))

(declare-fun m!9711 () Bool)

(assert (=> b!33777 m!9711))

(declare-fun m!9713 () Bool)

(assert (=> b!33777 m!9713))

(assert (=> b!33778 m!9711))

(declare-fun m!9715 () Bool)

(assert (=> b!33778 m!9715))

(assert (=> b!33695 d!3439))

(declare-fun d!3455 () Bool)

(declare-fun e!15443 () Bool)

(assert (=> d!3455 e!15443))

(declare-fun res!27333 () Bool)

(assert (=> d!3455 (=> (not res!27333) (not e!15443))))

(assert (=> d!3455 (= res!27333 true)))

(declare-fun lt!2199 () MutLongMap!46)

(declare-fun getNewLongMapFixedSize!2 ((_ BitVec 32) Int) LongMapFixedSize!92)

(assert (=> d!3455 (= lt!2199 (LongMap!46 (Cell!182 (getNewLongMapFixedSize!2 (bvsub initialSize!13 #b00000000000000000000000000000001) lambda!533))))))

(declare-fun lt!2198 () MutLongMap!46)

(assert (=> d!3455 (= lt!2198 (LongMap!46 (Cell!182 (getNewLongMapFixedSize!2 (bvsub initialSize!13 #b00000000000000000000000000000001) lambda!533))))))

(assert (=> d!3455 (validMask!0 (bvsub initialSize!13 #b00000000000000000000000000000001))))

(assert (=> d!3455 (= (getEmptyLongMap!3 lambda!533 initialSize!13) lt!2198)))

(declare-fun b!33783 () Bool)

(declare-fun res!27334 () Bool)

(assert (=> b!33783 (=> (not res!27334) (not e!15443))))

(assert (=> b!33783 (= res!27334 (valid!60 lt!2198))))

(declare-fun b!33784 () Bool)

(declare-fun size!342 (MutLongMap!46) (_ BitVec 32))

(assert (=> b!33784 (= e!15443 (= (size!342 lt!2198) #b00000000000000000000000000000000))))

(assert (= (and d!3455 res!27333) b!33783))

(assert (= (and b!33783 res!27334) b!33784))

(declare-fun m!9717 () Bool)

(assert (=> d!3455 m!9717))

(assert (=> d!3455 m!9589))

(declare-fun m!9719 () Bool)

(assert (=> b!33783 m!9719))

(declare-fun m!9721 () Bool)

(assert (=> b!33784 m!9721))

(assert (=> d!3411 d!3455))

(assert (=> d!3411 d!3403))

(check-sat (not d!3455) (not d!3419) (not b!33783) (not b!33760) (not b!33777) (not b!33761) (not b!33778) (not d!3439) (not b!33784))
(check-sat)
(get-model)

(declare-fun bs!4510 () Bool)

(declare-fun d!3457 () Bool)

(assert (= bs!4510 (and d!3457 b!33760)))

(declare-fun lambda!552 () Int)

(assert (=> bs!4510 (not (= lambda!552 lambda!546))))

(assert (=> d!3457 true))

(assert (=> d!3457 (= (allKeysSameHashInMap!5 (map!177 (v!12056 (underlying!292 lt!2108))) (hashF!1906 lt!2108)) (forall!40 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108)))) lambda!552))))

(declare-fun bs!4511 () Bool)

(assert (= bs!4511 d!3457))

(declare-fun m!9723 () Bool)

(assert (=> bs!4511 m!9723))

(assert (=> b!33761 d!3457))

(declare-fun d!3459 () Bool)

(declare-fun map!179 (LongMapFixedSize!92) ListLongMap!13)

(assert (=> d!3459 (= (map!177 (v!12056 (underlying!292 lt!2108))) (map!179 (v!12055 (underlying!291 (v!12056 (underlying!292 lt!2108))))))))

(declare-fun bs!4512 () Bool)

(assert (= bs!4512 d!3459))

(declare-fun m!9725 () Bool)

(assert (=> bs!4512 m!9725))

(assert (=> b!33761 d!3459))

(declare-fun d!3461 () Bool)

(declare-fun res!27339 () Bool)

(declare-fun e!15448 () Bool)

(assert (=> d!3461 (=> res!27339 e!15448)))

(assert (=> d!3461 (= res!27339 ((_ is Nil!279) (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))

(assert (=> d!3461 (= (forall!41 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))) lambda!549) e!15448)))

(declare-fun b!33791 () Bool)

(declare-fun e!15449 () Bool)

(assert (=> b!33791 (= e!15448 e!15449)))

(declare-fun res!27340 () Bool)

(assert (=> b!33791 (=> (not res!27340) (not e!15449))))

(declare-fun dynLambda!34 (Int tuple2!180) Bool)

(assert (=> b!33791 (= res!27340 (dynLambda!34 lambda!549 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))))

(declare-fun b!33792 () Bool)

(assert (=> b!33792 (= e!15449 (forall!41 (t!14873 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))) lambda!549))))

(assert (= (and d!3461 (not res!27339)) b!33791))

(assert (= (and b!33791 res!27340) b!33792))

(declare-fun b_lambda!137 () Bool)

(assert (=> (not b_lambda!137) (not b!33791)))

(declare-fun m!9727 () Bool)

(assert (=> b!33791 m!9727))

(declare-fun m!9729 () Bool)

(assert (=> b!33792 m!9729))

(assert (=> b!33778 d!3461))

(declare-fun d!3463 () Bool)

(declare-fun lt!2202 () ListMap!27)

(assert (=> d!3463 (invariantList!13 (toList!156 lt!2202))))

(declare-fun extractMap!4 (List!284) ListMap!27)

(assert (=> d!3463 (= lt!2202 (extractMap!4 (toList!155 (map!177 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))))

(assert (=> d!3463 (valid!57 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))

(assert (=> d!3463 (= (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))) lt!2202)))

(declare-fun bs!4513 () Bool)

(assert (= bs!4513 d!3463))

(declare-fun m!9731 () Bool)

(assert (=> bs!4513 m!9731))

(declare-fun m!9733 () Bool)

(assert (=> bs!4513 m!9733))

(declare-fun m!9735 () Bool)

(assert (=> bs!4513 m!9735))

(assert (=> bs!4513 m!9709))

(assert (=> b!33778 d!3463))

(declare-fun d!3465 () Bool)

(declare-fun valid!61 (LongMapFixedSize!92) Bool)

(assert (=> d!3465 (= (valid!60 (v!12056 (underlying!292 lt!2108))) (valid!61 (v!12055 (underlying!291 (v!12056 (underlying!292 lt!2108))))))))

(declare-fun bs!4514 () Bool)

(assert (= bs!4514 d!3465))

(declare-fun m!9737 () Bool)

(assert (=> bs!4514 m!9737))

(assert (=> d!3419 d!3465))

(declare-fun d!3467 () Bool)

(declare-fun res!27345 () Bool)

(declare-fun e!15454 () Bool)

(assert (=> d!3467 (=> res!27345 e!15454)))

(assert (=> d!3467 (= res!27345 ((_ is Nil!282) (toList!155 (map!177 (v!12056 (underlying!292 lt!2108))))))))

(assert (=> d!3467 (= (forall!40 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108)))) lambda!546) e!15454)))

(declare-fun b!33797 () Bool)

(declare-fun e!15455 () Bool)

(assert (=> b!33797 (= e!15454 e!15455)))

(declare-fun res!27346 () Bool)

(assert (=> b!33797 (=> (not res!27346) (not e!15455))))

(declare-fun dynLambda!35 (Int tuple2!184) Bool)

(assert (=> b!33797 (= res!27346 (dynLambda!35 lambda!546 (h!5678 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108)))))))))

(declare-fun b!33798 () Bool)

(assert (=> b!33798 (= e!15455 (forall!40 (t!14876 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108))))) lambda!546))))

(assert (= (and d!3467 (not res!27345)) b!33797))

(assert (= (and b!33797 res!27346) b!33798))

(declare-fun b_lambda!139 () Bool)

(assert (=> (not b_lambda!139) (not b!33797)))

(declare-fun m!9739 () Bool)

(assert (=> b!33797 m!9739))

(declare-fun m!9741 () Bool)

(assert (=> b!33798 m!9741))

(assert (=> b!33760 d!3467))

(assert (=> b!33760 d!3459))

(declare-fun d!3469 () Bool)

(declare-fun noDuplicatedKeys!3 (List!281) Bool)

(assert (=> d!3469 (= (invariantList!13 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))) (noDuplicatedKeys!3 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))

(declare-fun bs!4515 () Bool)

(assert (= bs!4515 d!3469))

(declare-fun m!9743 () Bool)

(assert (=> bs!4515 m!9743))

(assert (=> b!33777 d!3469))

(assert (=> b!33777 d!3463))

(declare-fun bs!4516 () Bool)

(declare-fun b!33799 () Bool)

(assert (= bs!4516 (and b!33799 b!33760)))

(declare-fun lambda!553 () Int)

(assert (=> bs!4516 (= lambda!553 lambda!546)))

(declare-fun bs!4517 () Bool)

(assert (= bs!4517 (and b!33799 d!3457)))

(assert (=> bs!4517 (not (= lambda!553 lambda!552))))

(declare-fun d!3471 () Bool)

(declare-fun res!27347 () Bool)

(declare-fun e!15456 () Bool)

(assert (=> d!3471 (=> (not res!27347) (not e!15456))))

(assert (=> d!3471 (= res!27347 (valid!60 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))

(assert (=> d!3471 (= (valid!57 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))) e!15456)))

(declare-fun res!27348 () Bool)

(assert (=> b!33799 (=> (not res!27348) (not e!15456))))

(assert (=> b!33799 (= res!27348 (forall!40 (toList!155 (map!177 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))) lambda!553))))

(declare-fun b!33800 () Bool)

(assert (=> b!33800 (= e!15456 (allKeysSameHashInMap!5 (map!177 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))) (hashF!1906 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))

(assert (= (and d!3471 res!27347) b!33799))

(assert (= (and b!33799 res!27348) b!33800))

(declare-fun m!9745 () Bool)

(assert (=> d!3471 m!9745))

(assert (=> b!33799 m!9733))

(declare-fun m!9747 () Bool)

(assert (=> b!33799 m!9747))

(assert (=> b!33800 m!9733))

(assert (=> b!33800 m!9733))

(declare-fun m!9749 () Bool)

(assert (=> b!33800 m!9749))

(assert (=> d!3439 d!3471))

(declare-fun b!33813 () Bool)

(declare-fun e!15463 () Bool)

(declare-fun lt!2270 () array!163)

(declare-fun lt!2256 () tuple2!184)

(declare-fun arrayContainsKey!0 (array!163 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!33813 (= e!15463 (arrayContainsKey!0 lt!2270 (_1!120 lt!2256) #b00000000000000000000000000000000))))

(declare-fun b!33814 () Bool)

(declare-fun e!15464 () Bool)

(declare-fun lt!2262 () LongMapFixedSize!92)

(assert (=> b!33814 (= e!15464 (= (map!179 lt!2262) (ListLongMap!14 Nil!282)))))

(declare-fun b!33815 () Bool)

(declare-datatypes ((Unit!133 0))(
  ( (Unit!134) )
))
(declare-fun e!15465 () Unit!133)

(declare-fun Unit!135 () Unit!133)

(assert (=> b!33815 (= e!15465 Unit!135)))

(declare-fun lt!2255 () LongMapFixedSize!92)

(declare-fun head!328 (List!284) tuple2!184)

(assert (=> b!33815 (= lt!2256 (head!328 (toList!155 (map!179 lt!2255))))))

(assert (=> b!33815 (= lt!2270 (array!164 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!2254 () (_ BitVec 32))

(assert (=> b!33815 (= lt!2254 #b00000000000000000000000000000000)))

(declare-fun lt!2261 () List!281)

(declare-fun lt!2272 () Unit!133)

(declare-fun lemmaKeyInListMapIsInArray!1 (array!163 array!161 (_ BitVec 32) (_ BitVec 32) List!281 List!281 (_ BitVec 64) Int) Unit!133)

(assert (=> b!33815 (= lt!2272 (lemmaKeyInListMapIsInArray!1 lt!2270 (array!162 ((as const (Array (_ BitVec 32) List!281)) lt!2261) (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub initialSize!13 #b00000000000000000000000000000001) lt!2254 lt!2261 lt!2261 (_1!120 lt!2256) lambda!533))))

(declare-fun c!15330 () Bool)

(assert (=> b!33815 (= c!15330 (and (not (= (_1!120 lt!2256) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!120 lt!2256) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!33815 e!15463))

(declare-fun lt!2271 () Unit!133)

(assert (=> b!33815 (= lt!2271 lt!2272)))

(declare-fun lt!2266 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!163 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!33815 (= lt!2266 (arrayScanForKey!0 (array!164 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!120 lt!2256) #b00000000000000000000000000000000))))

(assert (=> b!33815 false))

(declare-fun d!3473 () Bool)

(assert (=> d!3473 e!15464))

(declare-fun res!27354 () Bool)

(assert (=> d!3473 (=> (not res!27354) (not e!15464))))

(assert (=> d!3473 (= res!27354 (valid!61 lt!2262))))

(assert (=> d!3473 (= lt!2262 lt!2255)))

(declare-fun lt!2264 () Unit!133)

(assert (=> d!3473 (= lt!2264 e!15465)))

(declare-fun c!15331 () Bool)

(assert (=> d!3473 (= c!15331 (not (= (map!179 lt!2255) (ListLongMap!14 Nil!282))))))

(declare-fun lt!2263 () Unit!133)

(declare-fun lt!2260 () Unit!133)

(assert (=> d!3473 (= lt!2263 lt!2260)))

(declare-fun lt!2274 () array!163)

(declare-fun lt!2252 () (_ BitVec 32))

(declare-datatypes ((List!285 0))(
  ( (Nil!283) (Cons!283 (h!5679 (_ BitVec 64)) (t!14877 List!285)) )
))
(declare-fun lt!2268 () List!285)

(declare-fun arrayNoDuplicates!0 (array!163 (_ BitVec 32) List!285) Bool)

(assert (=> d!3473 (arrayNoDuplicates!0 lt!2274 lt!2252 lt!2268)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!163 (_ BitVec 32) (_ BitVec 32) List!285) Unit!133)

(assert (=> d!3473 (= lt!2260 (lemmaArrayNoDuplicatesInAll0Array!0 lt!2274 lt!2252 (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!2268))))

(assert (=> d!3473 (= lt!2268 Nil!283)))

(assert (=> d!3473 (= lt!2252 #b00000000000000000000000000000000)))

(assert (=> d!3473 (= lt!2274 (array!164 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!2265 () Unit!133)

(declare-fun lt!2258 () Unit!133)

(assert (=> d!3473 (= lt!2265 lt!2258)))

(declare-fun lt!2251 () (_ BitVec 32))

(declare-fun lt!2253 () array!163)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!163 (_ BitVec 32)) Bool)

(assert (=> d!3473 (arrayForallSeekEntryOrOpenFound!0 lt!2251 lt!2253 (bvsub initialSize!13 #b00000000000000000000000000000001))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!163 (_ BitVec 32) (_ BitVec 32)) Unit!133)

(assert (=> d!3473 (= lt!2258 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!2253 (bvsub initialSize!13 #b00000000000000000000000000000001) lt!2251))))

(assert (=> d!3473 (= lt!2251 #b00000000000000000000000000000000)))

(assert (=> d!3473 (= lt!2253 (array!164 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!2273 () Unit!133)

(declare-fun lt!2259 () Unit!133)

(assert (=> d!3473 (= lt!2273 lt!2259)))

(declare-fun lt!2257 () array!163)

(declare-fun lt!2269 () (_ BitVec 32))

(declare-fun lt!2267 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!163 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!3473 (= (arrayCountValidKeys!0 lt!2257 lt!2269 lt!2267) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!163 (_ BitVec 32) (_ BitVec 32)) Unit!133)

(assert (=> d!3473 (= lt!2259 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!2257 lt!2269 lt!2267))))

(assert (=> d!3473 (= lt!2267 (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(assert (=> d!3473 (= lt!2269 #b00000000000000000000000000000000)))

(assert (=> d!3473 (= lt!2257 (array!164 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(assert (=> d!3473 (= lt!2255 (LongMapFixedSize!93 lambda!533 (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000000 lt!2261 lt!2261 #b00000000000000000000000000000000 (array!164 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (array!162 ((as const (Array (_ BitVec 32) List!281)) lt!2261) (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(declare-fun dynLambda!36 (Int (_ BitVec 64)) List!281)

(assert (=> d!3473 (= lt!2261 (dynLambda!36 lambda!533 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!3473 (validMask!0 (bvsub initialSize!13 #b00000000000000000000000000000001))))

(assert (=> d!3473 (= (getNewLongMapFixedSize!2 (bvsub initialSize!13 #b00000000000000000000000000000001) lambda!533) lt!2262)))

(declare-fun b!33816 () Bool)

(declare-fun Unit!136 () Unit!133)

(assert (=> b!33816 (= e!15465 Unit!136)))

(declare-fun b!33817 () Bool)

(assert (=> b!33817 (= e!15463 (ite (= (_1!120 lt!2256) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!2254 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!2254 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!33818 () Bool)

(declare-fun res!27353 () Bool)

(assert (=> b!33818 (=> (not res!27353) (not e!15464))))

(assert (=> b!33818 (= res!27353 (= (mask!699 lt!2262) (bvsub initialSize!13 #b00000000000000000000000000000001)))))

(assert (= (and d!3473 c!15331) b!33815))

(assert (= (and d!3473 (not c!15331)) b!33816))

(assert (= (and b!33815 c!15330) b!33813))

(assert (= (and b!33815 (not c!15330)) b!33817))

(assert (= (and d!3473 res!27354) b!33818))

(assert (= (and b!33818 res!27353) b!33814))

(declare-fun b_lambda!141 () Bool)

(assert (=> (not b_lambda!141) (not d!3473)))

(declare-fun m!9751 () Bool)

(assert (=> b!33813 m!9751))

(declare-fun m!9753 () Bool)

(assert (=> b!33814 m!9753))

(declare-fun m!9755 () Bool)

(assert (=> b!33815 m!9755))

(declare-fun m!9757 () Bool)

(assert (=> b!33815 m!9757))

(declare-fun m!9759 () Bool)

(assert (=> b!33815 m!9759))

(declare-fun m!9761 () Bool)

(assert (=> b!33815 m!9761))

(declare-fun m!9763 () Bool)

(assert (=> d!3473 m!9763))

(declare-fun m!9765 () Bool)

(assert (=> d!3473 m!9765))

(declare-fun m!9767 () Bool)

(assert (=> d!3473 m!9767))

(assert (=> d!3473 m!9755))

(declare-fun m!9769 () Bool)

(assert (=> d!3473 m!9769))

(declare-fun m!9771 () Bool)

(assert (=> d!3473 m!9771))

(assert (=> d!3473 m!9589))

(declare-fun m!9773 () Bool)

(assert (=> d!3473 m!9773))

(declare-fun m!9775 () Bool)

(assert (=> d!3473 m!9775))

(declare-fun m!9777 () Bool)

(assert (=> d!3473 m!9777))

(assert (=> d!3455 d!3473))

(assert (=> d!3455 d!3403))

(declare-fun d!3475 () Bool)

(assert (=> d!3475 (= (valid!60 lt!2198) (valid!61 (v!12055 (underlying!291 lt!2198))))))

(declare-fun bs!4518 () Bool)

(assert (= bs!4518 d!3475))

(declare-fun m!9779 () Bool)

(assert (=> bs!4518 m!9779))

(assert (=> b!33783 d!3475))

(declare-fun d!3477 () Bool)

(declare-fun size!343 (LongMapFixedSize!92) (_ BitVec 32))

(assert (=> d!3477 (= (size!342 lt!2198) (size!343 (v!12055 (underlying!291 lt!2198))))))

(declare-fun bs!4519 () Bool)

(assert (= bs!4519 d!3477))

(declare-fun m!9781 () Bool)

(assert (=> bs!4519 m!9781))

(assert (=> b!33784 d!3477))

(declare-fun b_lambda!143 () Bool)

(assert (= b_lambda!139 (or b!33760 b_lambda!143)))

(declare-fun bs!4520 () Bool)

(declare-fun d!3479 () Bool)

(assert (= bs!4520 (and d!3479 b!33760)))

(declare-fun noDuplicateKeys!1 (List!281) Bool)

(assert (=> bs!4520 (= (dynLambda!35 lambda!546 (h!5678 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108)))))) (noDuplicateKeys!1 (_2!120 (h!5678 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108))))))))))

(declare-fun m!9783 () Bool)

(assert (=> bs!4520 m!9783))

(assert (=> b!33797 d!3479))

(declare-fun b_lambda!145 () Bool)

(assert (= b_lambda!141 (or d!3411 b_lambda!145)))

(declare-fun bs!4521 () Bool)

(declare-fun d!3481 () Bool)

(assert (= bs!4521 (and d!3481 d!3411)))

(assert (=> bs!4521 (= (dynLambda!36 lambda!533 #b0000000000000000000000000000000000000000000000000000000000000000) Nil!279)))

(assert (=> d!3473 d!3481))

(declare-fun b_lambda!147 () Bool)

(assert (= b_lambda!137 (or b!33778 b_lambda!147)))

(declare-fun bs!4522 () Bool)

(declare-fun d!3483 () Bool)

(assert (= bs!4522 (and d!3483 b!33778)))

(declare-fun res!27355 () Bool)

(declare-fun e!15466 () Bool)

(assert (=> bs!4522 (=> (not res!27355) (not e!15466))))

(declare-fun validRegex!4 (Regex!145) Bool)

(assert (=> bs!4522 (= res!27355 (validRegex!4 (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))))))

(assert (=> bs!4522 (= (dynLambda!34 lambda!549 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))) e!15466)))

(declare-fun b!33819 () Bool)

(declare-fun derivationStepZipperDown!2 (Regex!145 Context!54 C!1364) (InoxSet Context!54))

(assert (=> b!33819 (= e!15466 (= (_2!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))) (derivationStepZipperDown!2 (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))) (_2!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))) (_3!27 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))))))

(assert (= (and bs!4522 res!27355) b!33819))

(declare-fun m!9785 () Bool)

(assert (=> bs!4522 m!9785))

(declare-fun m!9787 () Bool)

(assert (=> b!33819 m!9787))

(assert (=> b!33791 d!3483))

(check-sat (not d!3477) (not bs!4522) (not b!33815) (not d!3469) (not d!3471) (not bs!4520) (not b!33813) (not d!3457) (not d!3473) (not d!3465) (not b_lambda!147) (not d!3475) (not b!33819) (not b_lambda!143) (not b!33800) (not b!33799) (not b_lambda!145) (not d!3459) (not d!3463) (not b!33814) (not b!33792) (not b!33798))
(check-sat)
(get-model)

(declare-fun d!3485 () Bool)

(declare-fun getCurrentListMap!1 (array!163 array!161 (_ BitVec 32) (_ BitVec 32) List!281 List!281 (_ BitVec 32) Int) ListLongMap!13)

(assert (=> d!3485 (= (map!179 lt!2262) (getCurrentListMap!1 (_keys!334 lt!2262) (_values!323 lt!2262) (mask!699 lt!2262) (extraKeys!291 lt!2262) (zeroValue!301 lt!2262) (minValue!301 lt!2262) #b00000000000000000000000000000000 (defaultEntry!379 lt!2262)))))

(declare-fun bs!4523 () Bool)

(assert (= bs!4523 d!3485))

(declare-fun m!9789 () Bool)

(assert (=> bs!4523 m!9789))

(assert (=> b!33814 d!3485))

(declare-fun b!33838 () Bool)

(declare-fun e!15483 () Bool)

(declare-fun call!2642 () Bool)

(assert (=> b!33838 (= e!15483 call!2642)))

(declare-fun b!33839 () Bool)

(declare-fun e!15482 () Bool)

(declare-fun e!15485 () Bool)

(assert (=> b!33839 (= e!15482 e!15485)))

(declare-fun res!27366 () Bool)

(declare-fun nullable!7 (Regex!145) Bool)

(assert (=> b!33839 (= res!27366 (not (nullable!7 (reg!474 (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))))))))

(assert (=> b!33839 (=> (not res!27366) (not e!15485))))

(declare-fun b!33840 () Bool)

(declare-fun res!27367 () Bool)

(declare-fun e!15486 () Bool)

(assert (=> b!33840 (=> res!27367 e!15486)))

(assert (=> b!33840 (= res!27367 (not ((_ is Concat!255) (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))))))

(declare-fun e!15487 () Bool)

(assert (=> b!33840 (= e!15487 e!15486)))

(declare-fun b!33841 () Bool)

(declare-fun e!15481 () Bool)

(declare-fun call!2640 () Bool)

(assert (=> b!33841 (= e!15481 call!2640)))

(declare-fun bm!2635 () Bool)

(declare-fun call!2641 () Bool)

(declare-fun c!15336 () Bool)

(declare-fun c!15337 () Bool)

(assert (=> bm!2635 (= call!2641 (validRegex!4 (ite c!15337 (reg!474 (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))) (ite c!15336 (regOne!803 (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))) (regTwo!802 (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))))))))

(declare-fun b!33842 () Bool)

(assert (=> b!33842 (= e!15482 e!15487)))

(assert (=> b!33842 (= c!15336 ((_ is Union!145) (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))))))

(declare-fun b!33843 () Bool)

(declare-fun res!27369 () Bool)

(assert (=> b!33843 (=> (not res!27369) (not e!15483))))

(assert (=> b!33843 (= res!27369 call!2640)))

(assert (=> b!33843 (= e!15487 e!15483)))

(declare-fun bm!2636 () Bool)

(assert (=> bm!2636 (= call!2642 (validRegex!4 (ite c!15336 (regTwo!803 (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))) (regOne!802 (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))))))))

(declare-fun b!33844 () Bool)

(declare-fun e!15484 () Bool)

(assert (=> b!33844 (= e!15484 e!15482)))

(assert (=> b!33844 (= c!15337 ((_ is Star!145) (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))))))

(declare-fun bm!2637 () Bool)

(assert (=> bm!2637 (= call!2640 call!2641)))

(declare-fun d!3487 () Bool)

(declare-fun res!27370 () Bool)

(assert (=> d!3487 (=> res!27370 e!15484)))

(assert (=> d!3487 (= res!27370 ((_ is ElementMatch!145) (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))))))

(assert (=> d!3487 (= (validRegex!4 (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))) e!15484)))

(declare-fun b!33845 () Bool)

(assert (=> b!33845 (= e!15485 call!2641)))

(declare-fun b!33846 () Bool)

(assert (=> b!33846 (= e!15486 e!15481)))

(declare-fun res!27368 () Bool)

(assert (=> b!33846 (=> (not res!27368) (not e!15481))))

(assert (=> b!33846 (= res!27368 call!2642)))

(assert (= (and d!3487 (not res!27370)) b!33844))

(assert (= (and b!33844 c!15337) b!33839))

(assert (= (and b!33844 (not c!15337)) b!33842))

(assert (= (and b!33839 res!27366) b!33845))

(assert (= (and b!33842 c!15336) b!33843))

(assert (= (and b!33842 (not c!15336)) b!33840))

(assert (= (and b!33843 res!27369) b!33838))

(assert (= (and b!33840 (not res!27367)) b!33846))

(assert (= (and b!33846 res!27368) b!33841))

(assert (= (or b!33838 b!33846) bm!2636))

(assert (= (or b!33843 b!33841) bm!2637))

(assert (= (or b!33845 bm!2637) bm!2635))

(declare-fun m!9791 () Bool)

(assert (=> b!33839 m!9791))

(declare-fun m!9793 () Bool)

(assert (=> bm!2635 m!9793))

(declare-fun m!9795 () Bool)

(assert (=> bm!2636 m!9795))

(assert (=> bs!4522 d!3487))

(declare-fun d!3489 () Bool)

(assert (=> d!3489 (= (size!343 (v!12055 (underlying!291 lt!2198))) (bvadd (_size!228 (v!12055 (underlying!291 lt!2198))) (bvsdiv (bvadd (extraKeys!291 (v!12055 (underlying!291 lt!2198))) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> d!3477 d!3489))

(declare-fun d!3491 () Bool)

(declare-fun res!27375 () Bool)

(declare-fun e!15492 () Bool)

(assert (=> d!3491 (=> res!27375 e!15492)))

(assert (=> d!3491 (= res!27375 (= (select (arr!102 lt!2270) #b00000000000000000000000000000000) (_1!120 lt!2256)))))

(assert (=> d!3491 (= (arrayContainsKey!0 lt!2270 (_1!120 lt!2256) #b00000000000000000000000000000000) e!15492)))

(declare-fun b!33851 () Bool)

(declare-fun e!15493 () Bool)

(assert (=> b!33851 (= e!15492 e!15493)))

(declare-fun res!27376 () Bool)

(assert (=> b!33851 (=> (not res!27376) (not e!15493))))

(assert (=> b!33851 (= res!27376 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!338 lt!2270)))))

(declare-fun b!33852 () Bool)

(assert (=> b!33852 (= e!15493 (arrayContainsKey!0 lt!2270 (_1!120 lt!2256) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!3491 (not res!27375)) b!33851))

(assert (= (and b!33851 res!27376) b!33852))

(declare-fun m!9797 () Bool)

(assert (=> d!3491 m!9797))

(declare-fun m!9799 () Bool)

(assert (=> b!33852 m!9799))

(assert (=> b!33813 d!3491))

(declare-fun d!3493 () Bool)

(assert (=> d!3493 (= (valid!60 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))) (valid!61 (v!12055 (underlying!291 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))))

(declare-fun bs!4524 () Bool)

(assert (= bs!4524 d!3493))

(declare-fun m!9801 () Bool)

(assert (=> bs!4524 m!9801))

(assert (=> d!3471 d!3493))

(declare-fun d!3495 () Bool)

(assert (=> d!3495 (= (map!179 (v!12055 (underlying!291 (v!12056 (underlying!292 lt!2108))))) (getCurrentListMap!1 (_keys!334 (v!12055 (underlying!291 (v!12056 (underlying!292 lt!2108))))) (_values!323 (v!12055 (underlying!291 (v!12056 (underlying!292 lt!2108))))) (mask!699 (v!12055 (underlying!291 (v!12056 (underlying!292 lt!2108))))) (extraKeys!291 (v!12055 (underlying!291 (v!12056 (underlying!292 lt!2108))))) (zeroValue!301 (v!12055 (underlying!291 (v!12056 (underlying!292 lt!2108))))) (minValue!301 (v!12055 (underlying!291 (v!12056 (underlying!292 lt!2108))))) #b00000000000000000000000000000000 (defaultEntry!379 (v!12055 (underlying!291 (v!12056 (underlying!292 lt!2108)))))))))

(declare-fun bs!4525 () Bool)

(assert (= bs!4525 d!3495))

(declare-fun m!9803 () Bool)

(assert (=> bs!4525 m!9803))

(assert (=> d!3459 d!3495))

(declare-fun d!3497 () Bool)

(declare-fun res!27383 () Bool)

(declare-fun e!15496 () Bool)

(assert (=> d!3497 (=> (not res!27383) (not e!15496))))

(declare-fun simpleValid!1 (LongMapFixedSize!92) Bool)

(assert (=> d!3497 (= res!27383 (simpleValid!1 (v!12055 (underlying!291 (v!12056 (underlying!292 lt!2108))))))))

(assert (=> d!3497 (= (valid!61 (v!12055 (underlying!291 (v!12056 (underlying!292 lt!2108))))) e!15496)))

(declare-fun b!33859 () Bool)

(declare-fun res!27384 () Bool)

(assert (=> b!33859 (=> (not res!27384) (not e!15496))))

(assert (=> b!33859 (= res!27384 (= (arrayCountValidKeys!0 (_keys!334 (v!12055 (underlying!291 (v!12056 (underlying!292 lt!2108))))) #b00000000000000000000000000000000 (size!338 (_keys!334 (v!12055 (underlying!291 (v!12056 (underlying!292 lt!2108))))))) (_size!228 (v!12055 (underlying!291 (v!12056 (underlying!292 lt!2108)))))))))

(declare-fun b!33860 () Bool)

(declare-fun res!27385 () Bool)

(assert (=> b!33860 (=> (not res!27385) (not e!15496))))

(assert (=> b!33860 (= res!27385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!334 (v!12055 (underlying!291 (v!12056 (underlying!292 lt!2108))))) (mask!699 (v!12055 (underlying!291 (v!12056 (underlying!292 lt!2108)))))))))

(declare-fun b!33861 () Bool)

(assert (=> b!33861 (= e!15496 (arrayNoDuplicates!0 (_keys!334 (v!12055 (underlying!291 (v!12056 (underlying!292 lt!2108))))) #b00000000000000000000000000000000 Nil!283))))

(assert (= (and d!3497 res!27383) b!33859))

(assert (= (and b!33859 res!27384) b!33860))

(assert (= (and b!33860 res!27385) b!33861))

(declare-fun m!9805 () Bool)

(assert (=> d!3497 m!9805))

(declare-fun m!9807 () Bool)

(assert (=> b!33859 m!9807))

(declare-fun m!9809 () Bool)

(assert (=> b!33860 m!9809))

(declare-fun m!9811 () Bool)

(assert (=> b!33861 m!9811))

(assert (=> d!3465 d!3497))

(declare-fun d!3499 () Bool)

(declare-fun res!27386 () Bool)

(declare-fun e!15497 () Bool)

(assert (=> d!3499 (=> (not res!27386) (not e!15497))))

(assert (=> d!3499 (= res!27386 (simpleValid!1 (v!12055 (underlying!291 lt!2198))))))

(assert (=> d!3499 (= (valid!61 (v!12055 (underlying!291 lt!2198))) e!15497)))

(declare-fun b!33862 () Bool)

(declare-fun res!27387 () Bool)

(assert (=> b!33862 (=> (not res!27387) (not e!15497))))

(assert (=> b!33862 (= res!27387 (= (arrayCountValidKeys!0 (_keys!334 (v!12055 (underlying!291 lt!2198))) #b00000000000000000000000000000000 (size!338 (_keys!334 (v!12055 (underlying!291 lt!2198))))) (_size!228 (v!12055 (underlying!291 lt!2198)))))))

(declare-fun b!33863 () Bool)

(declare-fun res!27388 () Bool)

(assert (=> b!33863 (=> (not res!27388) (not e!15497))))

(assert (=> b!33863 (= res!27388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!334 (v!12055 (underlying!291 lt!2198))) (mask!699 (v!12055 (underlying!291 lt!2198)))))))

(declare-fun b!33864 () Bool)

(assert (=> b!33864 (= e!15497 (arrayNoDuplicates!0 (_keys!334 (v!12055 (underlying!291 lt!2198))) #b00000000000000000000000000000000 Nil!283))))

(assert (= (and d!3499 res!27386) b!33862))

(assert (= (and b!33862 res!27387) b!33863))

(assert (= (and b!33863 res!27388) b!33864))

(declare-fun m!9813 () Bool)

(assert (=> d!3499 m!9813))

(declare-fun m!9815 () Bool)

(assert (=> b!33862 m!9815))

(declare-fun m!9817 () Bool)

(assert (=> b!33863 m!9817))

(declare-fun m!9819 () Bool)

(assert (=> b!33864 m!9819))

(assert (=> d!3475 d!3499))

(declare-fun bs!4526 () Bool)

(declare-fun d!3501 () Bool)

(assert (= bs!4526 (and d!3501 b!33760)))

(declare-fun lambda!554 () Int)

(assert (=> bs!4526 (not (= lambda!554 lambda!546))))

(declare-fun bs!4527 () Bool)

(assert (= bs!4527 (and d!3501 d!3457)))

(assert (=> bs!4527 (= (= (hashF!1906 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))) (hashF!1906 lt!2108)) (= lambda!554 lambda!552))))

(declare-fun bs!4528 () Bool)

(assert (= bs!4528 (and d!3501 b!33799)))

(assert (=> bs!4528 (not (= lambda!554 lambda!553))))

(assert (=> d!3501 true))

(assert (=> d!3501 (= (allKeysSameHashInMap!5 (map!177 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))) (hashF!1906 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))) (forall!40 (toList!155 (map!177 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))) lambda!554))))

(declare-fun bs!4529 () Bool)

(assert (= bs!4529 d!3501))

(declare-fun m!9821 () Bool)

(assert (=> bs!4529 m!9821))

(assert (=> b!33800 d!3501))

(declare-fun d!3503 () Bool)

(assert (=> d!3503 (= (map!177 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))) (map!179 (v!12055 (underlying!291 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))))

(declare-fun bs!4530 () Bool)

(assert (= bs!4530 d!3503))

(declare-fun m!9823 () Bool)

(assert (=> bs!4530 m!9823))

(assert (=> b!33800 d!3503))

(declare-fun d!3505 () Bool)

(declare-fun res!27389 () Bool)

(declare-fun e!15498 () Bool)

(assert (=> d!3505 (=> res!27389 e!15498)))

(assert (=> d!3505 (= res!27389 ((_ is Nil!279) (t!14873 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))))

(assert (=> d!3505 (= (forall!41 (t!14873 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))) lambda!549) e!15498)))

(declare-fun b!33865 () Bool)

(declare-fun e!15499 () Bool)

(assert (=> b!33865 (= e!15498 e!15499)))

(declare-fun res!27390 () Bool)

(assert (=> b!33865 (=> (not res!27390) (not e!15499))))

(assert (=> b!33865 (= res!27390 (dynLambda!34 lambda!549 (h!5675 (t!14873 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))))

(declare-fun b!33866 () Bool)

(assert (=> b!33866 (= e!15499 (forall!41 (t!14873 (t!14873 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))) lambda!549))))

(assert (= (and d!3505 (not res!27389)) b!33865))

(assert (= (and b!33865 res!27390) b!33866))

(declare-fun b_lambda!149 () Bool)

(assert (=> (not b_lambda!149) (not b!33865)))

(declare-fun m!9825 () Bool)

(assert (=> b!33865 m!9825))

(declare-fun m!9827 () Bool)

(assert (=> b!33866 m!9827))

(assert (=> b!33792 d!3505))

(declare-fun b!33875 () Bool)

(declare-fun e!15505 () (_ BitVec 32))

(declare-fun e!15504 () (_ BitVec 32))

(assert (=> b!33875 (= e!15505 e!15504)))

(declare-fun c!15342 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!33875 (= c!15342 (validKeyInArray!0 (select (arr!102 lt!2257) lt!2269)))))

(declare-fun bm!2640 () Bool)

(declare-fun call!2645 () (_ BitVec 32))

(assert (=> bm!2640 (= call!2645 (arrayCountValidKeys!0 lt!2257 (bvadd lt!2269 #b00000000000000000000000000000001) lt!2267))))

(declare-fun b!33876 () Bool)

(assert (=> b!33876 (= e!15505 #b00000000000000000000000000000000)))

(declare-fun d!3507 () Bool)

(declare-fun lt!2277 () (_ BitVec 32))

(assert (=> d!3507 (and (bvsge lt!2277 #b00000000000000000000000000000000) (bvsle lt!2277 (bvsub (size!338 lt!2257) lt!2269)))))

(assert (=> d!3507 (= lt!2277 e!15505)))

(declare-fun c!15343 () Bool)

(assert (=> d!3507 (= c!15343 (bvsge lt!2269 lt!2267))))

(assert (=> d!3507 (and (bvsle lt!2269 lt!2267) (bvsge lt!2269 #b00000000000000000000000000000000) (bvsle lt!2267 (size!338 lt!2257)))))

(assert (=> d!3507 (= (arrayCountValidKeys!0 lt!2257 lt!2269 lt!2267) lt!2277)))

(declare-fun b!33877 () Bool)

(assert (=> b!33877 (= e!15504 (bvadd #b00000000000000000000000000000001 call!2645))))

(declare-fun b!33878 () Bool)

(assert (=> b!33878 (= e!15504 call!2645)))

(assert (= (and d!3507 c!15343) b!33876))

(assert (= (and d!3507 (not c!15343)) b!33875))

(assert (= (and b!33875 c!15342) b!33877))

(assert (= (and b!33875 (not c!15342)) b!33878))

(assert (= (or b!33877 b!33878) bm!2640))

(declare-fun m!9829 () Bool)

(assert (=> b!33875 m!9829))

(assert (=> b!33875 m!9829))

(declare-fun m!9831 () Bool)

(assert (=> b!33875 m!9831))

(declare-fun m!9833 () Bool)

(assert (=> bm!2640 m!9833))

(assert (=> d!3473 d!3507))

(declare-fun d!3509 () Bool)

(declare-fun res!27391 () Bool)

(declare-fun e!15506 () Bool)

(assert (=> d!3509 (=> (not res!27391) (not e!15506))))

(assert (=> d!3509 (= res!27391 (simpleValid!1 lt!2262))))

(assert (=> d!3509 (= (valid!61 lt!2262) e!15506)))

(declare-fun b!33879 () Bool)

(declare-fun res!27392 () Bool)

(assert (=> b!33879 (=> (not res!27392) (not e!15506))))

(assert (=> b!33879 (= res!27392 (= (arrayCountValidKeys!0 (_keys!334 lt!2262) #b00000000000000000000000000000000 (size!338 (_keys!334 lt!2262))) (_size!228 lt!2262)))))

(declare-fun b!33880 () Bool)

(declare-fun res!27393 () Bool)

(assert (=> b!33880 (=> (not res!27393) (not e!15506))))

(assert (=> b!33880 (= res!27393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!334 lt!2262) (mask!699 lt!2262)))))

(declare-fun b!33881 () Bool)

(assert (=> b!33881 (= e!15506 (arrayNoDuplicates!0 (_keys!334 lt!2262) #b00000000000000000000000000000000 Nil!283))))

(assert (= (and d!3509 res!27391) b!33879))

(assert (= (and b!33879 res!27392) b!33880))

(assert (= (and b!33880 res!27393) b!33881))

(declare-fun m!9835 () Bool)

(assert (=> d!3509 m!9835))

(declare-fun m!9837 () Bool)

(assert (=> b!33879 m!9837))

(declare-fun m!9839 () Bool)

(assert (=> b!33880 m!9839))

(declare-fun m!9841 () Bool)

(assert (=> b!33881 m!9841))

(assert (=> d!3473 d!3509))

(declare-fun d!3511 () Bool)

(assert (=> d!3511 (arrayForallSeekEntryOrOpenFound!0 lt!2251 lt!2253 (bvsub initialSize!13 #b00000000000000000000000000000001))))

(declare-fun lt!2280 () Unit!133)

(declare-fun choose!588 (array!163 (_ BitVec 32) (_ BitVec 32)) Unit!133)

(assert (=> d!3511 (= lt!2280 (choose!588 lt!2253 (bvsub initialSize!13 #b00000000000000000000000000000001) lt!2251))))

(assert (=> d!3511 (validMask!0 (bvsub initialSize!13 #b00000000000000000000000000000001))))

(assert (=> d!3511 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!2253 (bvsub initialSize!13 #b00000000000000000000000000000001) lt!2251) lt!2280)))

(declare-fun bs!4531 () Bool)

(assert (= bs!4531 d!3511))

(assert (=> bs!4531 m!9771))

(declare-fun m!9843 () Bool)

(assert (=> bs!4531 m!9843))

(assert (=> bs!4531 m!9589))

(assert (=> d!3473 d!3511))

(declare-fun d!3513 () Bool)

(assert (=> d!3513 (arrayNoDuplicates!0 lt!2274 lt!2252 lt!2268)))

(declare-fun lt!2283 () Unit!133)

(declare-fun choose!793 (array!163 (_ BitVec 32) (_ BitVec 32) List!285) Unit!133)

(assert (=> d!3513 (= lt!2283 (choose!793 lt!2274 lt!2252 (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!2268))))

(assert (=> d!3513 (= (size!338 lt!2274) (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(assert (=> d!3513 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!2274 lt!2252 (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!2268) lt!2283)))

(declare-fun bs!4532 () Bool)

(assert (= bs!4532 d!3513))

(assert (=> bs!4532 m!9775))

(declare-fun m!9845 () Bool)

(assert (=> bs!4532 m!9845))

(assert (=> d!3473 d!3513))

(declare-fun d!3515 () Bool)

(assert (=> d!3515 (= (map!179 lt!2255) (getCurrentListMap!1 (_keys!334 lt!2255) (_values!323 lt!2255) (mask!699 lt!2255) (extraKeys!291 lt!2255) (zeroValue!301 lt!2255) (minValue!301 lt!2255) #b00000000000000000000000000000000 (defaultEntry!379 lt!2255)))))

(declare-fun bs!4533 () Bool)

(assert (= bs!4533 d!3515))

(declare-fun m!9847 () Bool)

(assert (=> bs!4533 m!9847))

(assert (=> d!3473 d!3515))

(declare-fun b!33892 () Bool)

(declare-fun e!15516 () Bool)

(declare-fun contains!26 (List!285 (_ BitVec 64)) Bool)

(assert (=> b!33892 (= e!15516 (contains!26 lt!2268 (select (arr!102 lt!2274) lt!2252)))))

(declare-fun b!33893 () Bool)

(declare-fun e!15517 () Bool)

(declare-fun e!15515 () Bool)

(assert (=> b!33893 (= e!15517 e!15515)))

(declare-fun c!15346 () Bool)

(assert (=> b!33893 (= c!15346 (validKeyInArray!0 (select (arr!102 lt!2274) lt!2252)))))

(declare-fun b!33894 () Bool)

(declare-fun e!15518 () Bool)

(assert (=> b!33894 (= e!15518 e!15517)))

(declare-fun res!27400 () Bool)

(assert (=> b!33894 (=> (not res!27400) (not e!15517))))

(assert (=> b!33894 (= res!27400 (not e!15516))))

(declare-fun res!27401 () Bool)

(assert (=> b!33894 (=> (not res!27401) (not e!15516))))

(assert (=> b!33894 (= res!27401 (validKeyInArray!0 (select (arr!102 lt!2274) lt!2252)))))

(declare-fun d!3517 () Bool)

(declare-fun res!27402 () Bool)

(assert (=> d!3517 (=> res!27402 e!15518)))

(assert (=> d!3517 (= res!27402 (bvsge lt!2252 (size!338 lt!2274)))))

(assert (=> d!3517 (= (arrayNoDuplicates!0 lt!2274 lt!2252 lt!2268) e!15518)))

(declare-fun b!33895 () Bool)

(declare-fun call!2648 () Bool)

(assert (=> b!33895 (= e!15515 call!2648)))

(declare-fun b!33896 () Bool)

(assert (=> b!33896 (= e!15515 call!2648)))

(declare-fun bm!2643 () Bool)

(assert (=> bm!2643 (= call!2648 (arrayNoDuplicates!0 lt!2274 (bvadd lt!2252 #b00000000000000000000000000000001) (ite c!15346 (Cons!283 (select (arr!102 lt!2274) lt!2252) lt!2268) lt!2268)))))

(assert (= (and d!3517 (not res!27402)) b!33894))

(assert (= (and b!33894 res!27401) b!33892))

(assert (= (and b!33894 res!27400) b!33893))

(assert (= (and b!33893 c!15346) b!33895))

(assert (= (and b!33893 (not c!15346)) b!33896))

(assert (= (or b!33895 b!33896) bm!2643))

(declare-fun m!9849 () Bool)

(assert (=> b!33892 m!9849))

(assert (=> b!33892 m!9849))

(declare-fun m!9851 () Bool)

(assert (=> b!33892 m!9851))

(assert (=> b!33893 m!9849))

(assert (=> b!33893 m!9849))

(declare-fun m!9853 () Bool)

(assert (=> b!33893 m!9853))

(assert (=> b!33894 m!9849))

(assert (=> b!33894 m!9849))

(assert (=> b!33894 m!9853))

(assert (=> bm!2643 m!9849))

(declare-fun m!9855 () Bool)

(assert (=> bm!2643 m!9855))

(assert (=> d!3473 d!3517))

(assert (=> d!3473 d!3403))

(declare-fun d!3519 () Bool)

(declare-fun res!27407 () Bool)

(declare-fun e!15525 () Bool)

(assert (=> d!3519 (=> res!27407 e!15525)))

(assert (=> d!3519 (= res!27407 (bvsge lt!2251 (size!338 lt!2253)))))

(assert (=> d!3519 (= (arrayForallSeekEntryOrOpenFound!0 lt!2251 lt!2253 (bvsub initialSize!13 #b00000000000000000000000000000001)) e!15525)))

(declare-fun b!33905 () Bool)

(declare-fun e!15527 () Bool)

(assert (=> b!33905 (= e!15525 e!15527)))

(declare-fun c!15349 () Bool)

(assert (=> b!33905 (= c!15349 (validKeyInArray!0 (select (arr!102 lt!2253) lt!2251)))))

(declare-fun b!33906 () Bool)

(declare-fun e!15526 () Bool)

(assert (=> b!33906 (= e!15527 e!15526)))

(declare-fun lt!2292 () (_ BitVec 64))

(assert (=> b!33906 (= lt!2292 (select (arr!102 lt!2253) lt!2251))))

(declare-fun lt!2290 () Unit!133)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!163 (_ BitVec 64) (_ BitVec 32)) Unit!133)

(assert (=> b!33906 (= lt!2290 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!2253 lt!2292 lt!2251))))

(assert (=> b!33906 (arrayContainsKey!0 lt!2253 lt!2292 #b00000000000000000000000000000000)))

(declare-fun lt!2291 () Unit!133)

(assert (=> b!33906 (= lt!2291 lt!2290)))

(declare-fun res!27408 () Bool)

(declare-datatypes ((SeekEntryResult!2 0))(
  ( (Found!2 (index!654 (_ BitVec 32))) (Undefined!2) (MissingZero!2 (index!655 (_ BitVec 32))) (MissingVacant!2 (index!656 (_ BitVec 32))) (Intermediate!2 (undefined!83 Bool) (index!657 (_ BitVec 32)) (x!11656 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!163 (_ BitVec 32)) SeekEntryResult!2)

(assert (=> b!33906 (= res!27408 (= (seekEntryOrOpen!0 (select (arr!102 lt!2253) lt!2251) lt!2253 (bvsub initialSize!13 #b00000000000000000000000000000001)) (Found!2 lt!2251)))))

(assert (=> b!33906 (=> (not res!27408) (not e!15526))))

(declare-fun b!33907 () Bool)

(declare-fun call!2651 () Bool)

(assert (=> b!33907 (= e!15527 call!2651)))

(declare-fun bm!2646 () Bool)

(assert (=> bm!2646 (= call!2651 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!2251 #b00000000000000000000000000000001) lt!2253 (bvsub initialSize!13 #b00000000000000000000000000000001)))))

(declare-fun b!33908 () Bool)

(assert (=> b!33908 (= e!15526 call!2651)))

(assert (= (and d!3519 (not res!27407)) b!33905))

(assert (= (and b!33905 c!15349) b!33906))

(assert (= (and b!33905 (not c!15349)) b!33907))

(assert (= (and b!33906 res!27408) b!33908))

(assert (= (or b!33908 b!33907) bm!2646))

(declare-fun m!9857 () Bool)

(assert (=> b!33905 m!9857))

(assert (=> b!33905 m!9857))

(declare-fun m!9859 () Bool)

(assert (=> b!33905 m!9859))

(assert (=> b!33906 m!9857))

(declare-fun m!9861 () Bool)

(assert (=> b!33906 m!9861))

(declare-fun m!9863 () Bool)

(assert (=> b!33906 m!9863))

(assert (=> b!33906 m!9857))

(declare-fun m!9865 () Bool)

(assert (=> b!33906 m!9865))

(declare-fun m!9867 () Bool)

(assert (=> bm!2646 m!9867))

(assert (=> d!3473 d!3519))

(declare-fun d!3521 () Bool)

(assert (=> d!3521 (= (arrayCountValidKeys!0 lt!2257 lt!2269 lt!2267) #b00000000000000000000000000000000)))

(declare-fun lt!2295 () Unit!133)

(declare-fun choose!424 (array!163 (_ BitVec 32) (_ BitVec 32)) Unit!133)

(assert (=> d!3521 (= lt!2295 (choose!424 lt!2257 lt!2269 lt!2267))))

(assert (=> d!3521 (bvslt (size!338 lt!2257) #b01111111111111111111111111111111)))

(assert (=> d!3521 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!2257 lt!2269 lt!2267) lt!2295)))

(declare-fun bs!4534 () Bool)

(assert (= bs!4534 d!3521))

(assert (=> bs!4534 m!9765))

(declare-fun m!9869 () Bool)

(assert (=> bs!4534 m!9869))

(assert (=> d!3473 d!3521))

(declare-fun d!3523 () Bool)

(declare-fun res!27409 () Bool)

(declare-fun e!15528 () Bool)

(assert (=> d!3523 (=> res!27409 e!15528)))

(assert (=> d!3523 (= res!27409 ((_ is Nil!282) (t!14876 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108)))))))))

(assert (=> d!3523 (= (forall!40 (t!14876 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108))))) lambda!546) e!15528)))

(declare-fun b!33909 () Bool)

(declare-fun e!15529 () Bool)

(assert (=> b!33909 (= e!15528 e!15529)))

(declare-fun res!27410 () Bool)

(assert (=> b!33909 (=> (not res!27410) (not e!15529))))

(assert (=> b!33909 (= res!27410 (dynLambda!35 lambda!546 (h!5678 (t!14876 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108))))))))))

(declare-fun b!33910 () Bool)

(assert (=> b!33910 (= e!15529 (forall!40 (t!14876 (t!14876 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108)))))) lambda!546))))

(assert (= (and d!3523 (not res!27409)) b!33909))

(assert (= (and b!33909 res!27410) b!33910))

(declare-fun b_lambda!151 () Bool)

(assert (=> (not b_lambda!151) (not b!33909)))

(declare-fun m!9871 () Bool)

(assert (=> b!33909 m!9871))

(declare-fun m!9873 () Bool)

(assert (=> b!33910 m!9873))

(assert (=> b!33798 d!3523))

(declare-fun d!3525 () Bool)

(declare-fun res!27415 () Bool)

(declare-fun e!15534 () Bool)

(assert (=> d!3525 (=> res!27415 e!15534)))

(assert (=> d!3525 (= res!27415 (not ((_ is Cons!279) (_2!120 (h!5678 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108)))))))))))

(assert (=> d!3525 (= (noDuplicateKeys!1 (_2!120 (h!5678 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108))))))) e!15534)))

(declare-fun b!33915 () Bool)

(declare-fun e!15535 () Bool)

(assert (=> b!33915 (= e!15534 e!15535)))

(declare-fun res!27416 () Bool)

(assert (=> b!33915 (=> (not res!27416) (not e!15535))))

(declare-fun containsKey!3 (List!281 tuple3!54) Bool)

(assert (=> b!33915 (= res!27416 (not (containsKey!3 (t!14873 (_2!120 (h!5678 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108))))))) (_1!118 (h!5675 (_2!120 (h!5678 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108)))))))))))))

(declare-fun b!33916 () Bool)

(assert (=> b!33916 (= e!15535 (noDuplicateKeys!1 (t!14873 (_2!120 (h!5678 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108)))))))))))

(assert (= (and d!3525 (not res!27415)) b!33915))

(assert (= (and b!33915 res!27416) b!33916))

(declare-fun m!9875 () Bool)

(assert (=> b!33915 m!9875))

(declare-fun m!9877 () Bool)

(assert (=> b!33916 m!9877))

(assert (=> bs!4520 d!3525))

(declare-fun d!3527 () Bool)

(declare-fun c!15364 () Bool)

(assert (=> d!3527 (= c!15364 (and ((_ is ElementMatch!145) (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))) (= (c!15319 (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))) (_3!27 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))))))

(declare-fun e!15549 () (InoxSet Context!54))

(assert (=> d!3527 (= (derivationStepZipperDown!2 (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))) (_2!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))) (_3!27 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))) e!15549)))

(declare-fun b!33939 () Bool)

(assert (=> b!33939 (= e!15549 (store ((as const (Array Context!54 Bool)) false) (_2!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))) true))))

(declare-fun c!15363 () Bool)

(declare-fun bm!2659 () Bool)

(declare-fun c!15360 () Bool)

(declare-fun call!2668 () List!280)

(declare-fun call!2667 () (InoxSet Context!54))

(declare-fun c!15362 () Bool)

(assert (=> bm!2659 (= call!2667 (derivationStepZipperDown!2 (ite c!15360 (regOne!803 (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))) (ite c!15363 (regTwo!802 (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))) (ite c!15362 (regOne!802 (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))) (reg!474 (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))))) (ite (or c!15360 c!15363) (_2!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))) (Context!55 call!2668)) (_3!27 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))))))

(declare-fun b!33940 () Bool)

(declare-fun e!15548 () Bool)

(assert (=> b!33940 (= e!15548 (nullable!7 (regOne!802 (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))))))

(declare-fun b!33941 () Bool)

(declare-fun e!15550 () (InoxSet Context!54))

(declare-fun e!15552 () (InoxSet Context!54))

(assert (=> b!33941 (= e!15550 e!15552)))

(assert (=> b!33941 (= c!15362 ((_ is Concat!255) (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))))))

(declare-fun bm!2660 () Bool)

(declare-fun call!2665 () List!280)

(declare-fun call!2664 () (InoxSet Context!54))

(assert (=> bm!2660 (= call!2664 (derivationStepZipperDown!2 (ite c!15360 (regTwo!803 (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))) (regOne!802 (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))) (ite c!15360 (_2!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))) (Context!55 call!2665)) (_3!27 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))))))

(declare-fun b!33942 () Bool)

(declare-fun e!15551 () (InoxSet Context!54))

(assert (=> b!33942 (= e!15549 e!15551)))

(assert (=> b!33942 (= c!15360 ((_ is Union!145) (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))))))

(declare-fun b!33943 () Bool)

(declare-fun e!15553 () (InoxSet Context!54))

(declare-fun call!2669 () (InoxSet Context!54))

(assert (=> b!33943 (= e!15553 call!2669)))

(declare-fun b!33944 () Bool)

(declare-fun call!2666 () (InoxSet Context!54))

(assert (=> b!33944 (= e!15550 ((_ map or) call!2664 call!2666))))

(declare-fun bm!2661 () Bool)

(assert (=> bm!2661 (= call!2669 call!2666)))

(declare-fun b!33945 () Bool)

(assert (=> b!33945 (= e!15553 ((as const (Array Context!54 Bool)) false))))

(declare-fun bm!2662 () Bool)

(assert (=> bm!2662 (= call!2666 call!2667)))

(declare-fun bm!2663 () Bool)

(assert (=> bm!2663 (= call!2668 call!2665)))

(declare-fun b!33946 () Bool)

(assert (=> b!33946 (= e!15552 call!2669)))

(declare-fun b!33947 () Bool)

(assert (=> b!33947 (= e!15551 ((_ map or) call!2667 call!2664))))

(declare-fun bm!2664 () Bool)

(declare-fun $colon$colon!5 (List!280 Regex!145) List!280)

(assert (=> bm!2664 (= call!2665 ($colon$colon!5 (exprs!527 (_2!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))) (ite (or c!15363 c!15362) (regTwo!802 (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))) (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))))))

(declare-fun b!33948 () Bool)

(declare-fun c!15361 () Bool)

(assert (=> b!33948 (= c!15361 ((_ is Star!145) (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))))))

(assert (=> b!33948 (= e!15552 e!15553)))

(declare-fun b!33949 () Bool)

(assert (=> b!33949 (= c!15363 e!15548)))

(declare-fun res!27419 () Bool)

(assert (=> b!33949 (=> (not res!27419) (not e!15548))))

(assert (=> b!33949 (= res!27419 ((_ is Concat!255) (_1!117 (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))))))

(assert (=> b!33949 (= e!15551 e!15550)))

(assert (= (and d!3527 c!15364) b!33939))

(assert (= (and d!3527 (not c!15364)) b!33942))

(assert (= (and b!33942 c!15360) b!33947))

(assert (= (and b!33942 (not c!15360)) b!33949))

(assert (= (and b!33949 res!27419) b!33940))

(assert (= (and b!33949 c!15363) b!33944))

(assert (= (and b!33949 (not c!15363)) b!33941))

(assert (= (and b!33941 c!15362) b!33946))

(assert (= (and b!33941 (not c!15362)) b!33948))

(assert (= (and b!33948 c!15361) b!33943))

(assert (= (and b!33948 (not c!15361)) b!33945))

(assert (= (or b!33946 b!33943) bm!2663))

(assert (= (or b!33946 b!33943) bm!2661))

(assert (= (or b!33944 bm!2661) bm!2662))

(assert (= (or b!33944 bm!2663) bm!2664))

(assert (= (or b!33947 b!33944) bm!2660))

(assert (= (or b!33947 bm!2662) bm!2659))

(declare-fun m!9879 () Bool)

(assert (=> b!33939 m!9879))

(declare-fun m!9881 () Bool)

(assert (=> b!33940 m!9881))

(declare-fun m!9883 () Bool)

(assert (=> bm!2664 m!9883))

(declare-fun m!9885 () Bool)

(assert (=> bm!2659 m!9885))

(declare-fun m!9887 () Bool)

(assert (=> bm!2660 m!9887))

(assert (=> b!33819 d!3527))

(declare-fun d!3529 () Bool)

(declare-fun res!27420 () Bool)

(declare-fun e!15554 () Bool)

(assert (=> d!3529 (=> res!27420 e!15554)))

(assert (=> d!3529 (= res!27420 ((_ is Nil!282) (toList!155 (map!177 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))))

(assert (=> d!3529 (= (forall!40 (toList!155 (map!177 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))) lambda!553) e!15554)))

(declare-fun b!33950 () Bool)

(declare-fun e!15555 () Bool)

(assert (=> b!33950 (= e!15554 e!15555)))

(declare-fun res!27421 () Bool)

(assert (=> b!33950 (=> (not res!27421) (not e!15555))))

(assert (=> b!33950 (= res!27421 (dynLambda!35 lambda!553 (h!5678 (toList!155 (map!177 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))))))

(declare-fun b!33951 () Bool)

(assert (=> b!33951 (= e!15555 (forall!40 (t!14876 (toList!155 (map!177 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))) lambda!553))))

(assert (= (and d!3529 (not res!27420)) b!33950))

(assert (= (and b!33950 res!27421) b!33951))

(declare-fun b_lambda!153 () Bool)

(assert (=> (not b_lambda!153) (not b!33950)))

(declare-fun m!9889 () Bool)

(assert (=> b!33950 m!9889))

(declare-fun m!9891 () Bool)

(assert (=> b!33951 m!9891))

(assert (=> b!33799 d!3529))

(assert (=> b!33799 d!3503))

(declare-fun d!3531 () Bool)

(assert (=> d!3531 (= (head!328 (toList!155 (map!179 lt!2255))) (h!5678 (toList!155 (map!179 lt!2255))))))

(assert (=> b!33815 d!3531))

(assert (=> b!33815 d!3515))

(declare-fun d!3533 () Bool)

(declare-fun e!15558 () Bool)

(assert (=> d!3533 e!15558))

(declare-fun c!15367 () Bool)

(assert (=> d!3533 (= c!15367 (and (not (= (_1!120 lt!2256) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!120 lt!2256) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!2298 () Unit!133)

(declare-fun choose!1130 (array!163 array!161 (_ BitVec 32) (_ BitVec 32) List!281 List!281 (_ BitVec 64) Int) Unit!133)

(assert (=> d!3533 (= lt!2298 (choose!1130 lt!2270 (array!162 ((as const (Array (_ BitVec 32) List!281)) lt!2261) (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub initialSize!13 #b00000000000000000000000000000001) lt!2254 lt!2261 lt!2261 (_1!120 lt!2256) lambda!533))))

(assert (=> d!3533 (validMask!0 (bvsub initialSize!13 #b00000000000000000000000000000001))))

(assert (=> d!3533 (= (lemmaKeyInListMapIsInArray!1 lt!2270 (array!162 ((as const (Array (_ BitVec 32) List!281)) lt!2261) (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub initialSize!13 #b00000000000000000000000000000001) lt!2254 lt!2261 lt!2261 (_1!120 lt!2256) lambda!533) lt!2298)))

(declare-fun b!33956 () Bool)

(assert (=> b!33956 (= e!15558 (arrayContainsKey!0 lt!2270 (_1!120 lt!2256) #b00000000000000000000000000000000))))

(declare-fun b!33957 () Bool)

(assert (=> b!33957 (= e!15558 (ite (= (_1!120 lt!2256) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!2254 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!2254 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!3533 c!15367) b!33956))

(assert (= (and d!3533 (not c!15367)) b!33957))

(declare-fun m!9893 () Bool)

(assert (=> d!3533 m!9893))

(assert (=> d!3533 m!9589))

(assert (=> b!33956 m!9751))

(assert (=> b!33815 d!3533))

(declare-fun d!3535 () Bool)

(declare-fun lt!2301 () (_ BitVec 32))

(assert (=> d!3535 (and (or (bvslt lt!2301 #b00000000000000000000000000000000) (bvsge lt!2301 (size!338 (array!164 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))) (and (bvsge lt!2301 #b00000000000000000000000000000000) (bvslt lt!2301 (size!338 (array!164 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))) (bvsge lt!2301 #b00000000000000000000000000000000) (bvslt lt!2301 (size!338 (array!164 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))) (= (select (arr!102 (array!164 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) lt!2301) (_1!120 lt!2256)))))

(declare-fun e!15561 () (_ BitVec 32))

(assert (=> d!3535 (= lt!2301 e!15561)))

(declare-fun c!15370 () Bool)

(assert (=> d!3535 (= c!15370 (= (select (arr!102 (array!164 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (_1!120 lt!2256)))))

(assert (=> d!3535 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!338 (array!164 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))) (bvslt (size!338 (array!164 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) #b01111111111111111111111111111111))))

(assert (=> d!3535 (= (arrayScanForKey!0 (array!164 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!120 lt!2256) #b00000000000000000000000000000000) lt!2301)))

(declare-fun b!33962 () Bool)

(assert (=> b!33962 (= e!15561 #b00000000000000000000000000000000)))

(declare-fun b!33963 () Bool)

(assert (=> b!33963 (= e!15561 (arrayScanForKey!0 (array!164 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!13 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!120 lt!2256) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!3535 c!15370) b!33962))

(assert (= (and d!3535 (not c!15370)) b!33963))

(declare-fun m!9895 () Bool)

(assert (=> d!3535 m!9895))

(declare-fun m!9897 () Bool)

(assert (=> d!3535 m!9897))

(declare-fun m!9899 () Bool)

(assert (=> b!33963 m!9899))

(assert (=> b!33815 d!3535))

(declare-fun d!3537 () Bool)

(declare-fun res!27422 () Bool)

(declare-fun e!15562 () Bool)

(assert (=> d!3537 (=> res!27422 e!15562)))

(assert (=> d!3537 (= res!27422 ((_ is Nil!282) (toList!155 (map!177 (v!12056 (underlying!292 lt!2108))))))))

(assert (=> d!3537 (= (forall!40 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108)))) lambda!552) e!15562)))

(declare-fun b!33964 () Bool)

(declare-fun e!15563 () Bool)

(assert (=> b!33964 (= e!15562 e!15563)))

(declare-fun res!27423 () Bool)

(assert (=> b!33964 (=> (not res!27423) (not e!15563))))

(assert (=> b!33964 (= res!27423 (dynLambda!35 lambda!552 (h!5678 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108)))))))))

(declare-fun b!33965 () Bool)

(assert (=> b!33965 (= e!15563 (forall!40 (t!14876 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108))))) lambda!552))))

(assert (= (and d!3537 (not res!27422)) b!33964))

(assert (= (and b!33964 res!27423) b!33965))

(declare-fun b_lambda!155 () Bool)

(assert (=> (not b_lambda!155) (not b!33964)))

(declare-fun m!9901 () Bool)

(assert (=> b!33964 m!9901))

(declare-fun m!9903 () Bool)

(assert (=> b!33965 m!9903))

(assert (=> d!3457 d!3537))

(declare-fun d!3539 () Bool)

(assert (=> d!3539 (= (invariantList!13 (toList!156 lt!2202)) (noDuplicatedKeys!3 (toList!156 lt!2202)))))

(declare-fun bs!4535 () Bool)

(assert (= bs!4535 d!3539))

(declare-fun m!9905 () Bool)

(assert (=> bs!4535 m!9905))

(assert (=> d!3463 d!3539))

(declare-fun bs!4536 () Bool)

(declare-fun d!3541 () Bool)

(assert (= bs!4536 (and d!3541 b!33760)))

(declare-fun lambda!557 () Int)

(assert (=> bs!4536 (= lambda!557 lambda!546)))

(declare-fun bs!4537 () Bool)

(assert (= bs!4537 (and d!3541 d!3457)))

(assert (=> bs!4537 (not (= lambda!557 lambda!552))))

(declare-fun bs!4538 () Bool)

(assert (= bs!4538 (and d!3541 b!33799)))

(assert (=> bs!4538 (= lambda!557 lambda!553)))

(declare-fun bs!4539 () Bool)

(assert (= bs!4539 (and d!3541 d!3501)))

(assert (=> bs!4539 (not (= lambda!557 lambda!554))))

(declare-fun lt!2304 () ListMap!27)

(assert (=> d!3541 (invariantList!13 (toList!156 lt!2304))))

(declare-fun e!15566 () ListMap!27)

(assert (=> d!3541 (= lt!2304 e!15566)))

(declare-fun c!15373 () Bool)

(assert (=> d!3541 (= c!15373 ((_ is Cons!282) (toList!155 (map!177 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))))

(assert (=> d!3541 (forall!40 (toList!155 (map!177 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))) lambda!557)))

(assert (=> d!3541 (= (extractMap!4 (toList!155 (map!177 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))) lt!2304)))

(declare-fun b!33970 () Bool)

(declare-fun addToMapMapFromBucket!1 (List!281 ListMap!27) ListMap!27)

(assert (=> b!33970 (= e!15566 (addToMapMapFromBucket!1 (_2!120 (h!5678 (toList!155 (map!177 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))) (extractMap!4 (t!14876 (toList!155 (map!177 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))))))

(declare-fun b!33971 () Bool)

(assert (=> b!33971 (= e!15566 (ListMap!28 Nil!279))))

(assert (= (and d!3541 c!15373) b!33970))

(assert (= (and d!3541 (not c!15373)) b!33971))

(declare-fun m!9907 () Bool)

(assert (=> d!3541 m!9907))

(declare-fun m!9909 () Bool)

(assert (=> d!3541 m!9909))

(declare-fun m!9911 () Bool)

(assert (=> b!33970 m!9911))

(assert (=> b!33970 m!9911))

(declare-fun m!9913 () Bool)

(assert (=> b!33970 m!9913))

(assert (=> d!3463 d!3541))

(assert (=> d!3463 d!3503))

(assert (=> d!3463 d!3471))

(declare-fun d!3543 () Bool)

(declare-fun res!27428 () Bool)

(declare-fun e!15571 () Bool)

(assert (=> d!3543 (=> res!27428 e!15571)))

(assert (=> d!3543 (= res!27428 (or ((_ is Nil!279) (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))) ((_ is Nil!279) (t!14873 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))))

(assert (=> d!3543 (= (noDuplicatedKeys!3 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))) e!15571)))

(declare-fun b!33976 () Bool)

(declare-fun e!15572 () Bool)

(assert (=> b!33976 (= e!15571 e!15572)))

(declare-fun res!27429 () Bool)

(assert (=> b!33976 (=> (not res!27429) (not e!15572))))

(declare-fun containsKey!4 (List!281 tuple3!54) Bool)

(assert (=> b!33976 (= res!27429 (not (containsKey!4 (t!14873 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))) (_1!118 (h!5675 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))))))

(declare-fun b!33977 () Bool)

(assert (=> b!33977 (= e!15572 (noDuplicatedKeys!3 (t!14873 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))))

(assert (= (and d!3543 (not res!27428)) b!33976))

(assert (= (and b!33976 res!27429) b!33977))

(declare-fun m!9915 () Bool)

(assert (=> b!33976 m!9915))

(declare-fun m!9917 () Bool)

(assert (=> b!33977 m!9917))

(assert (=> d!3469 d!3543))

(declare-fun b_lambda!157 () Bool)

(assert (= b_lambda!155 (or d!3457 b_lambda!157)))

(declare-fun bs!4540 () Bool)

(declare-fun d!3545 () Bool)

(assert (= bs!4540 (and d!3545 d!3457)))

(declare-fun allKeysSameHash!1 (List!281 (_ BitVec 64) Hashable!46) Bool)

(assert (=> bs!4540 (= (dynLambda!35 lambda!552 (h!5678 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108)))))) (allKeysSameHash!1 (_2!120 (h!5678 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108)))))) (_1!120 (h!5678 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108)))))) (hashF!1906 lt!2108)))))

(declare-fun m!9919 () Bool)

(assert (=> bs!4540 m!9919))

(assert (=> b!33964 d!3545))

(declare-fun b_lambda!159 () Bool)

(assert (= b_lambda!151 (or b!33760 b_lambda!159)))

(declare-fun bs!4541 () Bool)

(declare-fun d!3547 () Bool)

(assert (= bs!4541 (and d!3547 b!33760)))

(assert (=> bs!4541 (= (dynLambda!35 lambda!546 (h!5678 (t!14876 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108))))))) (noDuplicateKeys!1 (_2!120 (h!5678 (t!14876 (toList!155 (map!177 (v!12056 (underlying!292 lt!2108)))))))))))

(declare-fun m!9921 () Bool)

(assert (=> bs!4541 m!9921))

(assert (=> b!33909 d!3547))

(declare-fun b_lambda!161 () Bool)

(assert (= b_lambda!153 (or b!33799 b_lambda!161)))

(declare-fun bs!4542 () Bool)

(declare-fun d!3549 () Bool)

(assert (= bs!4542 (and d!3549 b!33799)))

(assert (=> bs!4542 (= (dynLambda!35 lambda!553 (h!5678 (toList!155 (map!177 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))) (noDuplicateKeys!1 (_2!120 (h!5678 (toList!155 (map!177 (v!12056 (underlying!292 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))))))

(declare-fun m!9923 () Bool)

(assert (=> bs!4542 m!9923))

(assert (=> b!33950 d!3549))

(declare-fun b_lambda!163 () Bool)

(assert (= b_lambda!149 (or b!33778 b_lambda!163)))

(declare-fun bs!4543 () Bool)

(declare-fun d!3551 () Bool)

(assert (= bs!4543 (and d!3551 b!33778)))

(declare-fun res!27430 () Bool)

(declare-fun e!15573 () Bool)

(assert (=> bs!4543 (=> (not res!27430) (not e!15573))))

(assert (=> bs!4543 (= res!27430 (validRegex!4 (_1!117 (_1!118 (h!5675 (t!14873 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))))))))

(assert (=> bs!4543 (= (dynLambda!34 lambda!549 (h!5675 (t!14873 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))) e!15573)))

(declare-fun b!33978 () Bool)

(assert (=> b!33978 (= e!15573 (= (_2!118 (h!5675 (t!14873 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13)))))))) (derivationStepZipperDown!2 (_1!117 (_1!118 (h!5675 (t!14873 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))) (_2!117 (_1!118 (h!5675 (t!14873 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))) (_3!27 (_1!118 (h!5675 (t!14873 (toList!156 (map!178 (cache!525 (CacheDown!47 (getEmptyHashMap!2 lambda!523 hashF!393 initialSize!13))))))))))))))

(assert (= (and bs!4543 res!27430) b!33978))

(declare-fun m!9925 () Bool)

(assert (=> bs!4543 m!9925))

(declare-fun m!9927 () Bool)

(assert (=> b!33978 m!9927))

(assert (=> b!33865 d!3551))

(check-sat (not d!3541) (not b_lambda!163) (not bm!2659) (not d!3503) (not b!33881) (not d!3485) (not b!33862) (not d!3515) (not d!3499) (not b_lambda!147) (not b!33963) (not bs!4542) (not b!33906) (not b!33839) (not b!33970) (not bm!2646) (not b_lambda!143) (not b!33905) (not b!33893) (not bm!2664) (not b_lambda!145) (not b!33861) (not bm!2636) (not d!3539) (not b!33956) (not b!33977) (not b!33852) (not bm!2643) (not b!33892) (not b_lambda!159) (not b_lambda!161) (not b!33875) (not b!33978) (not b!33864) (not d!3511) (not b!33915) (not b!33940) (not b!33894) (not d!3533) (not bs!4543) (not b!33910) (not b_lambda!157) (not bm!2660) (not b!33916) (not b!33965) (not b!33951) (not b!33879) (not b!33863) (not bm!2640) (not d!3495) (not d!3501) (not b!33860) (not d!3493) (not b!33976) (not d!3513) (not d!3521) (not d!3497) (not b!33859) (not bs!4541) (not bs!4540) (not d!3509) (not b!33866) (not bm!2635) (not b!33880))
(check-sat)
