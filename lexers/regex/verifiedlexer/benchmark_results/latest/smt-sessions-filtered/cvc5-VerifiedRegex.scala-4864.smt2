; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!249444 () Bool)

(assert start!249444)

(declare-fun b!2578804 () Bool)

(assert (=> b!2578804 true))

(declare-fun b!2578803 () Bool)

(declare-fun e!1627337 () Bool)

(declare-datatypes ((C!15458 0))(
  ( (C!15459 (val!9405 Int)) )
))
(declare-datatypes ((Regex!7650 0))(
  ( (ElementMatch!7650 (c!415383 C!15458)) (Concat!12374 (regOne!15812 Regex!7650) (regTwo!15812 Regex!7650)) (EmptyExpr!7650) (Star!7650 (reg!7979 Regex!7650)) (EmptyLang!7650) (Union!7650 (regOne!15813 Regex!7650) (regTwo!15813 Regex!7650)) )
))
(declare-datatypes ((List!29782 0))(
  ( (Nil!29682) (Cons!29682 (h!35102 Regex!7650) (t!211667 List!29782)) )
))
(declare-datatypes ((Context!4252 0))(
  ( (Context!4253 (exprs!2626 List!29782)) )
))
(declare-datatypes ((tuple2!29640 0))(
  ( (tuple2!29641 (_1!17362 (Set Context!4252)) (_2!17362 Int)) )
))
(declare-datatypes ((tuple2!29642 0))(
  ( (tuple2!29643 (_1!17363 tuple2!29640) (_2!17363 Int)) )
))
(declare-datatypes ((List!29783 0))(
  ( (Nil!29683) (Cons!29683 (h!35103 tuple2!29642) (t!211668 List!29783)) )
))
(declare-datatypes ((array!12259 0))(
  ( (array!12260 (arr!5468 (Array (_ BitVec 32) List!29783)) (size!22996 (_ BitVec 32))) )
))
(declare-datatypes ((array!12261 0))(
  ( (array!12262 (arr!5469 (Array (_ BitVec 32) (_ BitVec 64))) (size!22997 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6878 0))(
  ( (LongMapFixedSize!6879 (defaultEntry!3817 Int) (mask!8859 (_ BitVec 32)) (extraKeys!3687 (_ BitVec 32)) (zeroValue!3697 List!29783) (minValue!3697 List!29783) (_size!6925 (_ BitVec 32)) (_keys!3736 array!12261) (_values!3719 array!12259) (_vacant!3500 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13573 0))(
  ( (Cell!13574 (v!31999 LongMapFixedSize!6878)) )
))
(declare-datatypes ((MutLongMap!3439 0))(
  ( (LongMap!3439 (underlying!7085 Cell!13573)) (MutLongMapExt!3438 (__x!19261 Int)) )
))
(declare-datatypes ((Cell!13575 0))(
  ( (Cell!13576 (v!32000 MutLongMap!3439)) )
))
(declare-datatypes ((Hashable!3359 0))(
  ( (HashableExt!3358 (__x!19262 Int)) )
))
(declare-datatypes ((MutableMap!3349 0))(
  ( (MutableMapExt!3348 (__x!19263 Int)) (HashMap!3349 (underlying!7086 Cell!13575) (hashF!5386 Hashable!3359) (_size!6926 (_ BitVec 32)) (defaultValue!3517 Int)) )
))
(declare-fun lt!907314 () MutableMap!3349)

(declare-datatypes ((List!29784 0))(
  ( (Nil!29684) (Cons!29684 (h!35104 C!15458) (t!211669 List!29784)) )
))
(declare-datatypes ((IArray!18533 0))(
  ( (IArray!18534 (innerList!9324 List!29784)) )
))
(declare-datatypes ((Conc!9264 0))(
  ( (Node!9264 (left!22610 Conc!9264) (right!22940 Conc!9264) (csize!18758 Int) (cheight!9475 Int)) (Leaf!14129 (xs!12248 IArray!18533) (csize!18759 Int)) (Empty!9264) )
))
(declare-datatypes ((BalanceConc!18142 0))(
  ( (BalanceConc!18143 (c!415384 Conc!9264)) )
))
(declare-fun totalInput!583 () BalanceConc!18142)

(declare-datatypes ((CacheFindLongestMatch!364 0))(
  ( (CacheFindLongestMatch!365 (cache!3500 MutableMap!3349) (totalInput!3705 BalanceConc!18142)) )
))
(declare-fun inv!40047 (CacheFindLongestMatch!364) Bool)

(assert (=> b!2578803 (= e!1627337 (inv!40047 (CacheFindLongestMatch!365 lt!907314 totalInput!583)))))

(declare-fun res!1084755 () Bool)

(declare-fun e!1627340 () Bool)

(assert (=> start!249444 (=> (not res!1084755) (not e!1627340))))

(declare-fun initialSize!16 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!249444 (= res!1084755 (validMask!0 (bvsub initialSize!16 #b00000000000000000000000000000001)))))

(assert (=> start!249444 e!1627340))

(assert (=> start!249444 true))

(declare-fun e!1627336 () Bool)

(declare-fun inv!40048 (BalanceConc!18142) Bool)

(assert (=> start!249444 (and (inv!40048 totalInput!583) e!1627336)))

(declare-fun e!1627339 () Bool)

(declare-datatypes ((ListMap!1199 0))(
  ( (ListMap!1200 (toList!1721 List!29783)) )
))
(declare-fun lt!907315 () ListMap!1199)

(declare-fun lambda!95479 () Int)

(declare-fun forall!6042 (List!29783 Int) Bool)

(assert (=> b!2578804 (= e!1627339 (not (forall!6042 (toList!1721 lt!907315) lambda!95479)))))

(declare-fun b!2578805 () Bool)

(declare-fun tp!819307 () Bool)

(declare-fun inv!40049 (Conc!9264) Bool)

(assert (=> b!2578805 (= e!1627336 (and (inv!40049 (c!415384 totalInput!583)) tp!819307))))

(declare-fun b!2578806 () Bool)

(assert (=> b!2578806 (= e!1627340 (not e!1627337))))

(declare-fun res!1084756 () Bool)

(assert (=> b!2578806 (=> res!1084756 e!1627337)))

(declare-fun lt!907316 () Bool)

(assert (=> b!2578806 (= res!1084756 (not lt!907316))))

(declare-fun lt!907313 () Bool)

(assert (=> b!2578806 (= lt!907316 (not lt!907313))))

(declare-fun validCacheMapFindLongestMatch!62 (MutableMap!3349 BalanceConc!18142) Bool)

(assert (=> b!2578806 (= lt!907316 (validCacheMapFindLongestMatch!62 lt!907314 totalInput!583))))

(declare-fun e!1627338 () Bool)

(assert (=> b!2578806 (= lt!907313 e!1627338)))

(declare-fun res!1084758 () Bool)

(assert (=> b!2578806 (=> res!1084758 e!1627338)))

(declare-fun valid!2656 (MutableMap!3349) Bool)

(assert (=> b!2578806 (= res!1084758 (not (valid!2656 lt!907314)))))

(declare-fun hashF!508 () Hashable!3359)

(declare-fun lambda!95478 () Int)

(declare-fun getEmptyHashMap!26 (Int Hashable!3359 (_ BitVec 32)) MutableMap!3349)

(assert (=> b!2578806 (= lt!907314 (getEmptyHashMap!26 lambda!95478 hashF!508 initialSize!16))))

(declare-fun b!2578807 () Bool)

(assert (=> b!2578807 (= e!1627338 e!1627339)))

(declare-fun res!1084757 () Bool)

(assert (=> b!2578807 (=> res!1084757 e!1627339)))

(declare-fun invariantList!433 (List!29783) Bool)

(assert (=> b!2578807 (= res!1084757 (not (invariantList!433 (toList!1721 lt!907315))))))

(declare-fun map!6577 (MutableMap!3349) ListMap!1199)

(assert (=> b!2578807 (= lt!907315 (map!6577 lt!907314))))

(assert (= (and start!249444 res!1084755) b!2578806))

(assert (= (and b!2578806 (not res!1084758)) b!2578807))

(assert (= (and b!2578807 (not res!1084757)) b!2578804))

(assert (= (and b!2578806 (not res!1084756)) b!2578803))

(assert (= start!249444 b!2578805))

(declare-fun m!2913751 () Bool)

(assert (=> b!2578805 m!2913751))

(declare-fun m!2913753 () Bool)

(assert (=> b!2578807 m!2913753))

(declare-fun m!2913755 () Bool)

(assert (=> b!2578807 m!2913755))

(declare-fun m!2913757 () Bool)

(assert (=> b!2578804 m!2913757))

(declare-fun m!2913759 () Bool)

(assert (=> b!2578806 m!2913759))

(declare-fun m!2913761 () Bool)

(assert (=> b!2578806 m!2913761))

(declare-fun m!2913763 () Bool)

(assert (=> b!2578806 m!2913763))

(declare-fun m!2913765 () Bool)

(assert (=> start!249444 m!2913765))

(declare-fun m!2913767 () Bool)

(assert (=> start!249444 m!2913767))

(declare-fun m!2913769 () Bool)

(assert (=> b!2578803 m!2913769))

(push 1)

(assert (not b!2578806))

(assert (not b!2578805))

(assert (not start!249444))

(assert (not b!2578807))

(assert (not b!2578803))

(assert (not b!2578804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!729587 () Bool)

(declare-fun res!1084775 () Bool)

(declare-fun e!1627364 () Bool)

(assert (=> d!729587 (=> res!1084775 e!1627364)))

(assert (=> d!729587 (= res!1084775 (is-Nil!29683 (toList!1721 lt!907315)))))

(assert (=> d!729587 (= (forall!6042 (toList!1721 lt!907315) lambda!95479) e!1627364)))

(declare-fun b!2578831 () Bool)

(declare-fun e!1627365 () Bool)

(assert (=> b!2578831 (= e!1627364 e!1627365)))

(declare-fun res!1084776 () Bool)

(assert (=> b!2578831 (=> (not res!1084776) (not e!1627365))))

(declare-fun dynLambda!12536 (Int tuple2!29642) Bool)

(assert (=> b!2578831 (= res!1084776 (dynLambda!12536 lambda!95479 (h!35103 (toList!1721 lt!907315))))))

(declare-fun b!2578832 () Bool)

(assert (=> b!2578832 (= e!1627365 (forall!6042 (t!211668 (toList!1721 lt!907315)) lambda!95479))))

(assert (= (and d!729587 (not res!1084775)) b!2578831))

(assert (= (and b!2578831 res!1084776) b!2578832))

(declare-fun b_lambda!76527 () Bool)

(assert (=> (not b_lambda!76527) (not b!2578831)))

(declare-fun m!2913791 () Bool)

(assert (=> b!2578831 m!2913791))

(declare-fun m!2913793 () Bool)

(assert (=> b!2578832 m!2913793))

(assert (=> b!2578804 d!729587))

(declare-fun d!729589 () Bool)

(declare-fun res!1084782 () Bool)

(declare-fun e!1627374 () Bool)

(assert (=> d!729589 (=> (not res!1084782) (not e!1627374))))

(assert (=> d!729589 (= res!1084782 (is-HashMap!3349 (cache!3500 (CacheFindLongestMatch!365 lt!907314 totalInput!583))))))

(assert (=> d!729589 (= (inv!40047 (CacheFindLongestMatch!365 lt!907314 totalInput!583)) e!1627374)))

(declare-fun b!2578844 () Bool)

(assert (=> b!2578844 (= e!1627374 (validCacheMapFindLongestMatch!62 (cache!3500 (CacheFindLongestMatch!365 lt!907314 totalInput!583)) (totalInput!3705 (CacheFindLongestMatch!365 lt!907314 totalInput!583))))))

(assert (= (and d!729589 res!1084782) b!2578844))

(declare-fun m!2913799 () Bool)

(assert (=> b!2578844 m!2913799))

(assert (=> b!2578803 d!729589))

(declare-fun d!729595 () Bool)

(declare-fun c!415392 () Bool)

(assert (=> d!729595 (= c!415392 (is-Node!9264 (c!415384 totalInput!583)))))

(declare-fun e!1627379 () Bool)

(assert (=> d!729595 (= (inv!40049 (c!415384 totalInput!583)) e!1627379)))

(declare-fun b!2578851 () Bool)

(declare-fun inv!40053 (Conc!9264) Bool)

(assert (=> b!2578851 (= e!1627379 (inv!40053 (c!415384 totalInput!583)))))

(declare-fun b!2578852 () Bool)

(declare-fun e!1627380 () Bool)

(assert (=> b!2578852 (= e!1627379 e!1627380)))

(declare-fun res!1084785 () Bool)

(assert (=> b!2578852 (= res!1084785 (not (is-Leaf!14129 (c!415384 totalInput!583))))))

(assert (=> b!2578852 (=> res!1084785 e!1627380)))

(declare-fun b!2578853 () Bool)

(declare-fun inv!40054 (Conc!9264) Bool)

(assert (=> b!2578853 (= e!1627380 (inv!40054 (c!415384 totalInput!583)))))

(assert (= (and d!729595 c!415392) b!2578851))

(assert (= (and d!729595 (not c!415392)) b!2578852))

(assert (= (and b!2578852 (not res!1084785)) b!2578853))

(declare-fun m!2913801 () Bool)

(assert (=> b!2578851 m!2913801))

(declare-fun m!2913803 () Bool)

(assert (=> b!2578853 m!2913803))

(assert (=> b!2578805 d!729595))

(declare-fun bs!471057 () Bool)

(declare-fun b!2578859 () Bool)

(assert (= bs!471057 (and b!2578859 b!2578804)))

(declare-fun lambda!95488 () Int)

(assert (=> bs!471057 (= lambda!95488 lambda!95479)))

(assert (=> b!2578859 true))

(declare-fun d!729597 () Bool)

(declare-fun res!1084790 () Bool)

(declare-fun e!1627383 () Bool)

(assert (=> d!729597 (=> (not res!1084790) (not e!1627383))))

(assert (=> d!729597 (= res!1084790 (valid!2656 lt!907314))))

(assert (=> d!729597 (= (validCacheMapFindLongestMatch!62 lt!907314 totalInput!583) e!1627383)))

(declare-fun b!2578858 () Bool)

(declare-fun res!1084791 () Bool)

(assert (=> b!2578858 (=> (not res!1084791) (not e!1627383))))

(assert (=> b!2578858 (= res!1084791 (invariantList!433 (toList!1721 (map!6577 lt!907314))))))

(assert (=> b!2578859 (= e!1627383 (forall!6042 (toList!1721 (map!6577 lt!907314)) lambda!95488))))

(assert (= (and d!729597 res!1084790) b!2578858))

(assert (= (and b!2578858 res!1084791) b!2578859))

(assert (=> d!729597 m!2913761))

(assert (=> b!2578858 m!2913755))

(declare-fun m!2913806 () Bool)

(assert (=> b!2578858 m!2913806))

(assert (=> b!2578859 m!2913755))

(declare-fun m!2913808 () Bool)

(assert (=> b!2578859 m!2913808))

(assert (=> b!2578806 d!729597))

(declare-fun d!729599 () Bool)

(declare-fun res!1084796 () Bool)

(declare-fun e!1627386 () Bool)

(assert (=> d!729599 (=> (not res!1084796) (not e!1627386))))

(declare-fun valid!2658 (MutLongMap!3439) Bool)

(assert (=> d!729599 (= res!1084796 (valid!2658 (v!32000 (underlying!7086 lt!907314))))))

(assert (=> d!729599 (= (valid!2656 lt!907314) e!1627386)))

(declare-fun b!2578864 () Bool)

(declare-fun res!1084797 () Bool)

(assert (=> b!2578864 (=> (not res!1084797) (not e!1627386))))

(declare-fun lambda!95491 () Int)

(declare-datatypes ((tuple2!29648 0))(
  ( (tuple2!29649 (_1!17366 (_ BitVec 64)) (_2!17366 List!29783)) )
))
(declare-datatypes ((List!29788 0))(
  ( (Nil!29688) (Cons!29688 (h!35108 tuple2!29648) (t!211673 List!29788)) )
))
(declare-fun forall!6044 (List!29788 Int) Bool)

(declare-datatypes ((ListLongMap!673 0))(
  ( (ListLongMap!674 (toList!1723 List!29788)) )
))
(declare-fun map!6579 (MutLongMap!3439) ListLongMap!673)

(assert (=> b!2578864 (= res!1084797 (forall!6044 (toList!1723 (map!6579 (v!32000 (underlying!7086 lt!907314)))) lambda!95491))))

(declare-fun b!2578865 () Bool)

(declare-fun allKeysSameHashInMap!219 (ListLongMap!673 Hashable!3359) Bool)

(assert (=> b!2578865 (= e!1627386 (allKeysSameHashInMap!219 (map!6579 (v!32000 (underlying!7086 lt!907314))) (hashF!5386 lt!907314)))))

(assert (= (and d!729599 res!1084796) b!2578864))

(assert (= (and b!2578864 res!1084797) b!2578865))

(declare-fun m!2913810 () Bool)

(assert (=> d!729599 m!2913810))

(declare-fun m!2913812 () Bool)

(assert (=> b!2578864 m!2913812))

(declare-fun m!2913814 () Bool)

(assert (=> b!2578864 m!2913814))

(assert (=> b!2578865 m!2913812))

(assert (=> b!2578865 m!2913812))

(declare-fun m!2913816 () Bool)

(assert (=> b!2578865 m!2913816))

(assert (=> b!2578806 d!729599))

(declare-fun b!2578882 () Bool)

(declare-fun e!1627399 () Bool)

(declare-fun lt!907337 () MutLongMap!3439)

(assert (=> b!2578882 (= e!1627399 (is-LongMap!3439 lt!907337))))

(assert (=> b!2578882 (= lt!907337 (v!32000 (underlying!7086 (getEmptyHashMap!26 lambda!95478 hashF!508 initialSize!16))))))

(declare-fun b!2578881 () Bool)

(declare-fun e!1627398 () Bool)

(assert (=> b!2578881 (= e!1627398 e!1627399)))

(declare-fun d!729601 () Bool)

(assert (=> d!729601 (= true e!1627398)))

(assert (= b!2578881 b!2578882))

(assert (= (and d!729601 (is-HashMap!3349 (getEmptyHashMap!26 lambda!95478 hashF!508 initialSize!16))) b!2578881))

(declare-fun e!1627393 () Bool)

(assert (=> d!729601 e!1627393))

(declare-fun res!1084806 () Bool)

(assert (=> d!729601 (=> (not res!1084806) (not e!1627393))))

(assert (=> d!729601 (= res!1084806 true)))

(declare-fun lt!907333 () MutableMap!3349)

(declare-fun lambda!95496 () Int)

(declare-fun getEmptyLongMap!20 (Int (_ BitVec 32)) MutLongMap!3439)

(assert (=> d!729601 (= lt!907333 (HashMap!3349 (Cell!13576 (getEmptyLongMap!20 lambda!95496 initialSize!16)) hashF!508 #b00000000000000000000000000000000 lambda!95478))))

(declare-fun lt!907334 () MutableMap!3349)

(assert (=> d!729601 (= lt!907334 (HashMap!3349 (Cell!13576 (getEmptyLongMap!20 lambda!95496 initialSize!16)) hashF!508 #b00000000000000000000000000000000 lambda!95478))))

(assert (=> d!729601 (validMask!0 (bvsub initialSize!16 #b00000000000000000000000000000001))))

(assert (=> d!729601 (= (getEmptyHashMap!26 lambda!95478 hashF!508 initialSize!16) lt!907334)))

(declare-fun b!2578873 () Bool)

(declare-fun res!1084805 () Bool)

(assert (=> b!2578873 (=> (not res!1084805) (not e!1627393))))

(assert (=> b!2578873 (= res!1084805 (valid!2656 lt!907334))))

(declare-fun b!2578874 () Bool)

(declare-fun size!23000 (MutableMap!3349) (_ BitVec 32))

(assert (=> b!2578874 (= e!1627393 (= (size!23000 lt!907334) #b00000000000000000000000000000000))))

(assert (= (and d!729601 res!1084806) b!2578873))

(assert (= (and b!2578873 res!1084805) b!2578874))

(declare-fun m!2913820 () Bool)

(assert (=> d!729601 m!2913820))

(assert (=> d!729601 m!2913820))

(assert (=> d!729601 m!2913765))

(declare-fun m!2913822 () Bool)

(assert (=> b!2578873 m!2913822))

(declare-fun m!2913824 () Bool)

(assert (=> b!2578874 m!2913824))

(assert (=> b!2578806 d!729601))

(declare-fun d!729605 () Bool)

(assert (=> d!729605 (= (validMask!0 (bvsub initialSize!16 #b00000000000000000000000000000001)) (and (or (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000000111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000001111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000011111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000001111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000011111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000001111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000011111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000001111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000011111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000001111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000011111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000001111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000011111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000001111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000011111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000001111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000011111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000111111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00001111111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00011111111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (bvsle (bvsub initialSize!16 #b00000000000000000000000000000001) #b00111111111111111111111111111111)))))

(assert (=> start!249444 d!729605))

(declare-fun d!729607 () Bool)

(declare-fun isBalanced!2823 (Conc!9264) Bool)

(assert (=> d!729607 (= (inv!40048 totalInput!583) (isBalanced!2823 (c!415384 totalInput!583)))))

(declare-fun bs!471058 () Bool)

(assert (= bs!471058 d!729607))

(declare-fun m!2913826 () Bool)

(assert (=> bs!471058 m!2913826))

(assert (=> start!249444 d!729607))

(declare-fun d!729609 () Bool)

(declare-fun noDuplicatedKeys!74 (List!29783) Bool)

(assert (=> d!729609 (= (invariantList!433 (toList!1721 lt!907315)) (noDuplicatedKeys!74 (toList!1721 lt!907315)))))

(declare-fun bs!471059 () Bool)

(assert (= bs!471059 d!729609))

(declare-fun m!2913828 () Bool)

(assert (=> bs!471059 m!2913828))

(assert (=> b!2578807 d!729609))

(declare-fun d!729611 () Bool)

(declare-fun lt!907340 () ListMap!1199)

(assert (=> d!729611 (invariantList!433 (toList!1721 lt!907340))))

(declare-fun extractMap!212 (List!29788) ListMap!1199)

(assert (=> d!729611 (= lt!907340 (extractMap!212 (toList!1723 (map!6579 (v!32000 (underlying!7086 lt!907314))))))))

(assert (=> d!729611 (valid!2656 lt!907314)))

(assert (=> d!729611 (= (map!6577 lt!907314) lt!907340)))

(declare-fun bs!471061 () Bool)

(assert (= bs!471061 d!729611))

(declare-fun m!2913832 () Bool)

(assert (=> bs!471061 m!2913832))

(assert (=> bs!471061 m!2913812))

(declare-fun m!2913834 () Bool)

(assert (=> bs!471061 m!2913834))

(assert (=> bs!471061 m!2913761))

(assert (=> b!2578807 d!729611))

(declare-fun tp!819319 () Bool)

(declare-fun e!1627404 () Bool)

(declare-fun tp!819318 () Bool)

(declare-fun b!2578891 () Bool)

(assert (=> b!2578891 (= e!1627404 (and (inv!40049 (left!22610 (c!415384 totalInput!583))) tp!819318 (inv!40049 (right!22940 (c!415384 totalInput!583))) tp!819319))))

(declare-fun b!2578893 () Bool)

(declare-fun e!1627405 () Bool)

(declare-fun tp!819317 () Bool)

(assert (=> b!2578893 (= e!1627405 tp!819317)))

(declare-fun b!2578892 () Bool)

(declare-fun inv!40055 (IArray!18533) Bool)

(assert (=> b!2578892 (= e!1627404 (and (inv!40055 (xs!12248 (c!415384 totalInput!583))) e!1627405))))

(assert (=> b!2578805 (= tp!819307 (and (inv!40049 (c!415384 totalInput!583)) e!1627404))))

(assert (= (and b!2578805 (is-Node!9264 (c!415384 totalInput!583))) b!2578891))

(assert (= b!2578892 b!2578893))

(assert (= (and b!2578805 (is-Leaf!14129 (c!415384 totalInput!583))) b!2578892))

(declare-fun m!2913836 () Bool)

(assert (=> b!2578891 m!2913836))

(declare-fun m!2913838 () Bool)

(assert (=> b!2578891 m!2913838))

(declare-fun m!2913840 () Bool)

(assert (=> b!2578892 m!2913840))

(assert (=> b!2578805 m!2913751))

(declare-fun b_lambda!76529 () Bool)

(assert (= b_lambda!76527 (or b!2578804 b_lambda!76529)))

(declare-fun bs!471062 () Bool)

(declare-fun d!729617 () Bool)

(assert (= bs!471062 (and d!729617 b!2578804)))

(declare-fun validCacheMapFindLongestMatchBody!5 (tuple2!29642 BalanceConc!18142) Bool)

(assert (=> bs!471062 (= (dynLambda!12536 lambda!95479 (h!35103 (toList!1721 lt!907315))) (validCacheMapFindLongestMatchBody!5 (h!35103 (toList!1721 lt!907315)) totalInput!583))))

(declare-fun m!2913842 () Bool)

(assert (=> bs!471062 m!2913842))

(assert (=> b!2578831 d!729617))

(push 1)

(assert (not b!2578864))

(assert (not d!729607))

(assert (not b_lambda!76529))

(assert (not b!2578851))

(assert (not d!729597))

(assert (not b!2578873))

(assert (not d!729611))

(assert (not b!2578892))

(assert (not bs!471062))

(assert (not b!2578891))

(assert (not b!2578865))

(assert (not b!2578858))

(assert (not b!2578853))

(assert (not d!729609))

(assert (not b!2578832))

(assert (not b!2578874))

(assert (not b!2578805))

(assert (not b!2578859))

(assert (not d!729599))

(assert (not d!729601))

(assert (not b!2578844))

(assert (not b!2578893))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

