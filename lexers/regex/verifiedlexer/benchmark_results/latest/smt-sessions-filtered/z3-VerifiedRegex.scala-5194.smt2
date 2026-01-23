; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266800 () Bool)

(assert start!266800)

(declare-fun b!2752510 () Bool)

(declare-fun b_free!77893 () Bool)

(declare-fun b_next!78597 () Bool)

(assert (=> b!2752510 (= b_free!77893 (not b_next!78597))))

(declare-fun tp!869671 () Bool)

(declare-fun b_and!202631 () Bool)

(assert (=> b!2752510 (= tp!869671 b_and!202631)))

(declare-fun b!2752515 () Bool)

(declare-fun b_free!77895 () Bool)

(declare-fun b_next!78599 () Bool)

(assert (=> b!2752515 (= b_free!77895 (not b_next!78599))))

(declare-fun tp!869663 () Bool)

(declare-fun b_and!202633 () Bool)

(assert (=> b!2752515 (= tp!869663 b_and!202633)))

(declare-fun b!2752506 () Bool)

(declare-fun b_free!77897 () Bool)

(declare-fun b_next!78601 () Bool)

(assert (=> b!2752506 (= b_free!77897 (not b_next!78601))))

(declare-fun tp!869667 () Bool)

(declare-fun b_and!202635 () Bool)

(assert (=> b!2752506 (= tp!869667 b_and!202635)))

(declare-fun b!2752518 () Bool)

(declare-fun b_free!77899 () Bool)

(declare-fun b_next!78603 () Bool)

(assert (=> b!2752518 (= b_free!77899 (not b_next!78603))))

(declare-fun tp!869670 () Bool)

(declare-fun b_and!202637 () Bool)

(assert (=> b!2752518 (= tp!869670 b_and!202637)))

(declare-fun bm!177845 () Bool)

(declare-datatypes ((Unit!45626 0))(
  ( (Unit!45627) )
))
(declare-fun call!177856 () Unit!45626)

(declare-datatypes ((C!16264 0))(
  ( (C!16265 (val!10066 Int)) )
))
(declare-datatypes ((List!31959 0))(
  ( (Nil!31859) (Cons!31859 (h!37279 C!16264) (t!228063 List!31959)) )
))
(declare-fun lt!974166 () List!31959)

(declare-fun lemmaIsPrefixRefl!1655 (List!31959 List!31959) Unit!45626)

(assert (=> bm!177845 (= call!177856 (lemmaIsPrefixRefl!1655 lt!974166 lt!974166))))

(declare-fun b!2752478 () Bool)

(declare-fun res!1153886 () Bool)

(declare-fun e!1735419 () Bool)

(assert (=> b!2752478 (=> (not res!1153886) (not e!1735419))))

(declare-datatypes ((Regex!8053 0))(
  ( (ElementMatch!8053 (c!445360 C!16264)) (Concat!13141 (regOne!16618 Regex!8053) (regTwo!16618 Regex!8053)) (EmptyExpr!8053) (Star!8053 (reg!8382 Regex!8053)) (EmptyLang!8053) (Union!8053 (regOne!16619 Regex!8053) (regTwo!16619 Regex!8053)) )
))
(declare-datatypes ((List!31960 0))(
  ( (Nil!31860) (Cons!31860 (h!37280 Regex!8053) (t!228064 List!31960)) )
))
(declare-datatypes ((Context!4542 0))(
  ( (Context!4543 (exprs!2771 List!31960)) )
))
(declare-datatypes ((tuple2!31848 0))(
  ( (tuple2!31849 (_1!18702 Context!4542) (_2!18702 C!16264)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31850 0))(
  ( (tuple2!31851 (_1!18703 tuple2!31848) (_2!18703 (InoxSet Context!4542))) )
))
(declare-datatypes ((List!31961 0))(
  ( (Nil!31861) (Cons!31861 (h!37281 tuple2!31850) (t!228065 List!31961)) )
))
(declare-datatypes ((Hashable!3630 0))(
  ( (HashableExt!3629 (__x!20792 Int)) )
))
(declare-datatypes ((array!13216 0))(
  ( (array!13217 (arr!5900 (Array (_ BitVec 32) List!31961)) (size!24621 (_ BitVec 32))) )
))
(declare-datatypes ((array!13218 0))(
  ( (array!13219 (arr!5901 (Array (_ BitVec 32) (_ BitVec 64))) (size!24622 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7428 0))(
  ( (LongMapFixedSize!7429 (defaultEntry!4099 Int) (mask!9477 (_ BitVec 32)) (extraKeys!3963 (_ BitVec 32)) (zeroValue!3973 List!31961) (minValue!3973 List!31961) (_size!7471 (_ BitVec 32)) (_keys!4014 array!13218) (_values!3995 array!13216) (_vacant!3775 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14665 0))(
  ( (Cell!14666 (v!33469 LongMapFixedSize!7428)) )
))
(declare-datatypes ((MutLongMap!3714 0))(
  ( (LongMap!3714 (underlying!7631 Cell!14665)) (MutLongMapExt!3713 (__x!20793 Int)) )
))
(declare-datatypes ((Cell!14667 0))(
  ( (Cell!14668 (v!33470 MutLongMap!3714)) )
))
(declare-datatypes ((MutableMap!3620 0))(
  ( (MutableMapExt!3619 (__x!20794 Int)) (HashMap!3620 (underlying!7632 Cell!14667) (hashF!5662 Hashable!3630) (_size!7472 (_ BitVec 32)) (defaultValue!3791 Int)) )
))
(declare-datatypes ((CacheUp!2326 0))(
  ( (CacheUp!2327 (cache!3763 MutableMap!3620)) )
))
(declare-datatypes ((tuple3!4616 0))(
  ( (tuple3!4617 (_1!18704 Regex!8053) (_2!18704 Context!4542) (_3!2778 C!16264)) )
))
(declare-datatypes ((tuple2!31852 0))(
  ( (tuple2!31853 (_1!18705 tuple3!4616) (_2!18705 (InoxSet Context!4542))) )
))
(declare-datatypes ((List!31962 0))(
  ( (Nil!31862) (Cons!31862 (h!37282 tuple2!31852) (t!228066 List!31962)) )
))
(declare-datatypes ((array!13220 0))(
  ( (array!13221 (arr!5902 (Array (_ BitVec 32) List!31962)) (size!24623 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7430 0))(
  ( (LongMapFixedSize!7431 (defaultEntry!4100 Int) (mask!9478 (_ BitVec 32)) (extraKeys!3964 (_ BitVec 32)) (zeroValue!3974 List!31962) (minValue!3974 List!31962) (_size!7473 (_ BitVec 32)) (_keys!4015 array!13218) (_values!3996 array!13220) (_vacant!3776 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14669 0))(
  ( (Cell!14670 (v!33471 LongMapFixedSize!7430)) )
))
(declare-datatypes ((MutLongMap!3715 0))(
  ( (LongMap!3715 (underlying!7633 Cell!14669)) (MutLongMapExt!3714 (__x!20795 Int)) )
))
(declare-datatypes ((Cell!14671 0))(
  ( (Cell!14672 (v!33472 MutLongMap!3715)) )
))
(declare-datatypes ((Hashable!3631 0))(
  ( (HashableExt!3630 (__x!20796 Int)) )
))
(declare-datatypes ((MutableMap!3621 0))(
  ( (MutableMapExt!3620 (__x!20797 Int)) (HashMap!3621 (underlying!7634 Cell!14671) (hashF!5663 Hashable!3631) (_size!7474 (_ BitVec 32)) (defaultValue!3792 Int)) )
))
(declare-datatypes ((CacheDown!2446 0))(
  ( (CacheDown!2447 (cache!3764 MutableMap!3621)) )
))
(declare-datatypes ((tuple3!4618 0))(
  ( (tuple3!4619 (_1!18706 Int) (_2!18706 CacheUp!2326) (_3!2779 CacheDown!2446)) )
))
(declare-fun lt!974183 () tuple3!4618)

(declare-fun valid!2882 (CacheDown!2446) Bool)

(assert (=> b!2752478 (= res!1153886 (valid!2882 (_3!2779 lt!974183)))))

(declare-fun b!2752479 () Bool)

(declare-datatypes ((tuple3!4620 0))(
  ( (tuple3!4621 (_1!18707 Int) (_2!18707 CacheDown!2446) (_3!2780 CacheUp!2326)) )
))
(declare-fun e!1735400 () tuple3!4620)

(declare-fun e!1735404 () tuple3!4620)

(assert (=> b!2752479 (= e!1735400 e!1735404)))

(declare-fun c!445359 () Bool)

(declare-fun lt!974163 () Int)

(assert (=> b!2752479 (= c!445359 (= 0 lt!974163))))

(declare-fun b!2752480 () Bool)

(declare-fun res!1153892 () Bool)

(declare-fun call!177855 () Bool)

(assert (=> b!2752480 (= res!1153892 call!177855)))

(declare-fun e!1735414 () Bool)

(assert (=> b!2752480 (=> (not res!1153892) (not e!1735414))))

(declare-fun b!2752481 () Bool)

(declare-fun e!1735402 () Bool)

(declare-fun e!1735412 () Bool)

(declare-fun lt!974200 () MutLongMap!3714)

(get-info :version)

(assert (=> b!2752481 (= e!1735402 (and e!1735412 ((_ is LongMap!3714) lt!974200)))))

(declare-fun cacheUp!820 () CacheUp!2326)

(assert (=> b!2752481 (= lt!974200 (v!33470 (underlying!7632 (cache!3763 cacheUp!820))))))

(declare-fun b!2752482 () Bool)

(declare-fun e!1735410 () Bool)

(declare-fun lt!974165 () Int)

(declare-fun e!1735417 () Int)

(assert (=> b!2752482 (= e!1735410 (= lt!974165 e!1735417))))

(declare-fun c!445356 () Bool)

(assert (=> b!2752482 (= c!445356 (= 0 lt!974163))))

(declare-fun b!2752483 () Bool)

(declare-fun e!1735416 () Bool)

(declare-fun e!1735391 () Bool)

(assert (=> b!2752483 (= e!1735416 e!1735391)))

(declare-fun b!2752484 () Bool)

(declare-fun res!1153891 () Bool)

(assert (=> b!2752484 (= res!1153891 call!177855)))

(declare-fun e!1735403 () Bool)

(assert (=> b!2752484 (=> (not res!1153891) (not e!1735403))))

(declare-fun bm!177846 () Bool)

(declare-fun call!177852 () Unit!45626)

(declare-fun lemmaIsPrefixSameLengthThenSameList!436 (List!31959 List!31959 List!31959) Unit!45626)

(assert (=> bm!177846 (= call!177852 (lemmaIsPrefixSameLengthThenSameList!436 lt!974166 Nil!31859 lt!974166))))

(declare-fun b!2752485 () Bool)

(declare-fun res!1153887 () Bool)

(declare-fun e!1735393 () Bool)

(assert (=> b!2752485 (=> (not res!1153887) (not e!1735393))))

(declare-fun cacheDown!939 () CacheDown!2446)

(assert (=> b!2752485 (= res!1153887 (valid!2882 cacheDown!939))))

(declare-fun b!2752486 () Bool)

(declare-fun e!1735418 () tuple3!4620)

(declare-fun lt!974174 () tuple3!4618)

(assert (=> b!2752486 (= e!1735418 (tuple3!4621 (_1!18706 lt!974174) (_3!2779 lt!974174) (_2!18706 lt!974174)))))

(declare-datatypes ((tuple3!4622 0))(
  ( (tuple3!4623 (_1!18708 (InoxSet Context!4542)) (_2!18708 CacheUp!2326) (_3!2781 CacheDown!2446)) )
))
(declare-fun lt!974189 () tuple3!4622)

(declare-fun call!177851 () tuple3!4622)

(assert (=> b!2752486 (= lt!974189 call!177851)))

(declare-fun call!177850 () tuple3!4618)

(assert (=> b!2752486 (= lt!974174 call!177850)))

(declare-fun res!1153888 () Bool)

(declare-fun call!177863 () Bool)

(assert (=> b!2752486 (= res!1153888 call!177863)))

(assert (=> b!2752486 (=> (not res!1153888) (not e!1735414))))

(assert (=> b!2752486 e!1735414))

(declare-fun b!2752487 () Bool)

(declare-fun e!1735395 () Bool)

(declare-fun e!1735413 () Bool)

(declare-fun lt!974210 () MutLongMap!3715)

(assert (=> b!2752487 (= e!1735395 (and e!1735413 ((_ is LongMap!3715) lt!974210)))))

(assert (=> b!2752487 (= lt!974210 (v!33472 (underlying!7634 (cache!3764 cacheDown!939))))))

(declare-fun b!2752488 () Bool)

(declare-fun c!445355 () Bool)

(declare-fun call!177857 () Bool)

(assert (=> b!2752488 (= c!445355 call!177857)))

(declare-fun lt!974181 () List!31959)

(declare-fun lt!974184 () List!31959)

(declare-fun ++!7889 (List!31959 List!31959) List!31959)

(assert (=> b!2752488 (= (++!7889 lt!974181 lt!974184) lt!974166)))

(declare-fun lt!974192 () C!16264)

(assert (=> b!2752488 (= lt!974181 (++!7889 Nil!31859 (Cons!31859 lt!974192 Nil!31859)))))

(declare-fun lt!974202 () Unit!45626)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!846 (List!31959 C!16264 List!31959 List!31959) Unit!45626)

(assert (=> b!2752488 (= lt!974202 (lemmaMoveElementToOtherListKeepsConcatEq!846 Nil!31859 lt!974192 lt!974184 lt!974166))))

(declare-fun tail!4363 (List!31959) List!31959)

(assert (=> b!2752488 (= lt!974184 (tail!4363 lt!974166))))

(declare-datatypes ((IArray!19875 0))(
  ( (IArray!19876 (innerList!9995 List!31959)) )
))
(declare-datatypes ((Conc!9935 0))(
  ( (Node!9935 (left!24323 Conc!9935) (right!24653 Conc!9935) (csize!20100 Int) (cheight!10146 Int)) (Leaf!15130 (xs!13042 IArray!19875) (csize!20101 Int)) (Empty!9935) )
))
(declare-datatypes ((BalanceConc!19484 0))(
  ( (BalanceConc!19485 (c!445361 Conc!9935)) )
))
(declare-fun input!5495 () BalanceConc!19484)

(declare-fun apply!7445 (BalanceConc!19484 Int) C!16264)

(assert (=> b!2752488 (= lt!974192 (apply!7445 input!5495 0))))

(declare-fun lt!974211 () List!31959)

(declare-fun isPrefix!2529 (List!31959 List!31959) Bool)

(declare-fun head!6125 (List!31959) C!16264)

(assert (=> b!2752488 (isPrefix!2529 (++!7889 Nil!31859 (Cons!31859 (head!6125 lt!974211) Nil!31859)) lt!974166)))

(declare-fun lt!974198 () Unit!45626)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!434 (List!31959 List!31959) Unit!45626)

(assert (=> b!2752488 (= lt!974198 (lemmaAddHeadSuffixToPrefixStillPrefix!434 Nil!31859 lt!974166))))

(declare-fun lt!974186 () Unit!45626)

(declare-fun e!1735401 () Unit!45626)

(assert (=> b!2752488 (= lt!974186 e!1735401)))

(declare-fun c!445352 () Bool)

(declare-fun lt!974162 () Int)

(assert (=> b!2752488 (= c!445352 (= lt!974162 lt!974163))))

(declare-fun size!24624 (List!31959) Int)

(assert (=> b!2752488 (<= lt!974162 (size!24624 lt!974166))))

(assert (=> b!2752488 (= lt!974162 (size!24624 Nil!31859))))

(declare-fun lt!974187 () Unit!45626)

(declare-fun lemmaIsPrefixThenSmallerEqSize!237 (List!31959 List!31959) Unit!45626)

(assert (=> b!2752488 (= lt!974187 (lemmaIsPrefixThenSmallerEqSize!237 Nil!31859 lt!974166))))

(declare-fun drop!1684 (List!31959 Int) List!31959)

(declare-fun apply!7446 (List!31959 Int) C!16264)

(assert (=> b!2752488 (= (head!6125 (drop!1684 lt!974166 0)) (apply!7446 lt!974166 0))))

(declare-fun lt!974178 () Unit!45626)

(declare-fun lemmaDropApply!890 (List!31959 Int) Unit!45626)

(assert (=> b!2752488 (= lt!974178 (lemmaDropApply!890 lt!974166 0))))

(declare-fun lt!974175 () List!31959)

(declare-fun lt!974160 () List!31959)

(assert (=> b!2752488 (and (= lt!974175 Nil!31859) (= lt!974160 lt!974166))))

(declare-fun lt!974191 () Unit!45626)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!316 (List!31959 List!31959 List!31959 List!31959) Unit!45626)

(assert (=> b!2752488 (= lt!974191 (lemmaConcatSameAndSameSizesThenSameLists!316 lt!974175 lt!974160 Nil!31859 lt!974166))))

(declare-datatypes ((tuple2!31854 0))(
  ( (tuple2!31855 (_1!18709 BalanceConc!19484) (_2!18709 BalanceConc!19484)) )
))
(declare-fun lt!974164 () tuple2!31854)

(declare-fun list!12036 (BalanceConc!19484) List!31959)

(assert (=> b!2752488 (= lt!974160 (list!12036 (_2!18709 lt!974164)))))

(assert (=> b!2752488 (= lt!974175 (list!12036 (_1!18709 lt!974164)))))

(declare-fun splitAt!81 (BalanceConc!19484 Int) tuple2!31854)

(assert (=> b!2752488 (= lt!974164 (splitAt!81 input!5495 0))))

(declare-fun e!1735394 () Int)

(assert (=> b!2752488 (= e!1735417 e!1735394)))

(declare-fun b!2752489 () Bool)

(assert (=> b!2752489 (= e!1735410 (= lt!974165 0))))

(declare-fun mapIsEmpty!16885 () Bool)

(declare-fun mapRes!16885 () Bool)

(assert (=> mapIsEmpty!16885 mapRes!16885))

(declare-fun bm!177847 () Bool)

(declare-fun lt!974206 () List!31959)

(declare-fun lt!974194 () tuple3!4622)

(declare-fun c!445354 () Bool)

(declare-fun call!177864 () Int)

(declare-fun lt!974195 () List!31959)

(declare-fun findLongestMatchInnerZipperFast!11 ((InoxSet Context!4542) List!31959 Int List!31959 BalanceConc!19484 Int) Int)

(assert (=> bm!177847 (= call!177864 (findLongestMatchInnerZipperFast!11 (ite c!445354 (_1!18708 lt!974194) (_1!18708 lt!974189)) lt!974206 1 lt!974195 input!5495 lt!974163))))

(declare-fun bm!177848 () Bool)

(declare-fun call!177862 () (InoxSet Context!4542))

(declare-fun z!3597 () (InoxSet Context!4542))

(declare-fun derivationStepZipper!345 ((InoxSet Context!4542) C!16264) (InoxSet Context!4542))

(assert (=> bm!177848 (= call!177862 (derivationStepZipper!345 z!3597 lt!974192))))

(declare-fun bm!177849 () Bool)

(declare-fun call!177861 () Unit!45626)

(assert (=> bm!177849 (= call!177861 (lemmaIsPrefixSameLengthThenSameList!436 lt!974166 Nil!31859 lt!974166))))

(declare-fun bm!177850 () Bool)

(declare-fun call!177854 () Bool)

(declare-fun nullableZipper!608 ((InoxSet Context!4542)) Bool)

(assert (=> bm!177850 (= call!177854 (nullableZipper!608 z!3597))))

(declare-fun b!2752490 () Bool)

(declare-fun e!1735392 () Bool)

(declare-fun tp!869662 () Bool)

(declare-fun mapRes!16886 () Bool)

(assert (=> b!2752490 (= e!1735392 (and tp!869662 mapRes!16886))))

(declare-fun condMapEmpty!16886 () Bool)

(declare-fun mapDefault!16886 () List!31962)

(assert (=> b!2752490 (= condMapEmpty!16886 (= (arr!5902 (_values!3996 (v!33471 (underlying!7633 (v!33472 (underlying!7634 (cache!3764 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!31962)) mapDefault!16886)))))

(declare-fun b!2752491 () Bool)

(assert (=> b!2752491 (= e!1735414 (= (_1!18706 lt!974174) call!177864))))

(declare-fun b!2752492 () Bool)

(assert (=> b!2752492 (= e!1735413 e!1735416)))

(declare-fun mapIsEmpty!16886 () Bool)

(assert (=> mapIsEmpty!16886 mapRes!16886))

(declare-fun lt!974201 () tuple3!4618)

(declare-fun lt!974190 () C!16264)

(declare-fun bm!177851 () Bool)

(declare-fun derivationStepZipperMem!76 ((InoxSet Context!4542) C!16264 CacheUp!2326 CacheDown!2446) tuple3!4622)

(assert (=> bm!177851 (= call!177851 (derivationStepZipperMem!76 z!3597 lt!974190 (_2!18706 lt!974201) (_3!2779 lt!974201)))))

(declare-fun bm!177852 () Bool)

(declare-fun call!177860 () Bool)

(assert (=> bm!177852 (= call!177860 (isPrefix!2529 lt!974166 lt!974166))))

(declare-fun b!2752493 () Bool)

(declare-fun call!177858 () Int)

(assert (=> b!2752493 (= e!1735394 call!177858)))

(declare-fun b!2752494 () Bool)

(declare-fun e!1735399 () Bool)

(declare-fun tp!869675 () Bool)

(assert (=> b!2752494 (= e!1735399 (and tp!869675 mapRes!16885))))

(declare-fun condMapEmpty!16885 () Bool)

(declare-fun mapDefault!16885 () List!31961)

(assert (=> b!2752494 (= condMapEmpty!16885 (= (arr!5900 (_values!3995 (v!33469 (underlying!7631 (v!33470 (underlying!7632 (cache!3763 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!31961)) mapDefault!16885)))))

(declare-fun e!1735408 () Bool)

(declare-fun b!2752495 () Bool)

(assert (=> b!2752495 (= e!1735408 (= (_1!18706 lt!974201) (findLongestMatchInnerZipperFast!11 z!3597 Nil!31859 0 lt!974166 input!5495 lt!974163)))))

(declare-fun mapNonEmpty!16885 () Bool)

(declare-fun tp!869668 () Bool)

(declare-fun tp!869673 () Bool)

(assert (=> mapNonEmpty!16885 (= mapRes!16886 (and tp!869668 tp!869673))))

(declare-fun mapKey!16885 () (_ BitVec 32))

(declare-fun mapValue!16886 () List!31962)

(declare-fun mapRest!16885 () (Array (_ BitVec 32) List!31962))

(assert (=> mapNonEmpty!16885 (= (arr!5902 (_values!3996 (v!33471 (underlying!7633 (v!33472 (underlying!7634 (cache!3764 cacheDown!939))))))) (store mapRest!16885 mapKey!16885 mapValue!16886))))

(declare-fun b!2752496 () Bool)

(declare-fun e!1735397 () Bool)

(declare-fun e!1735398 () Bool)

(assert (=> b!2752496 (= e!1735397 e!1735398)))

(declare-fun b!2752497 () Bool)

(assert (=> b!2752497 (= e!1735400 (tuple3!4621 0 (_3!2779 lt!974201) (_2!18706 lt!974201)))))

(declare-fun b!2752498 () Bool)

(declare-fun lt!974193 () Bool)

(assert (=> b!2752498 (= lt!974193 call!177857)))

(assert (=> b!2752498 (= lt!974166 Nil!31859)))

(declare-fun lt!974196 () Unit!45626)

(assert (=> b!2752498 (= lt!974196 call!177852)))

(declare-fun call!177853 () Bool)

(assert (=> b!2752498 call!177853))

(declare-fun lt!974167 () Unit!45626)

(declare-fun call!177859 () Unit!45626)

(assert (=> b!2752498 (= lt!974167 call!177859)))

(assert (=> b!2752498 (= e!1735417 0)))

(declare-fun b!2752499 () Bool)

(declare-fun lt!974205 () Bool)

(assert (=> b!2752499 (= lt!974205 call!177854)))

(assert (=> b!2752499 (= lt!974166 Nil!31859)))

(declare-fun lt!974209 () Unit!45626)

(assert (=> b!2752499 (= lt!974209 call!177861)))

(assert (=> b!2752499 call!177860))

(declare-fun lt!974177 () Unit!45626)

(assert (=> b!2752499 (= lt!974177 call!177856)))

(assert (=> b!2752499 (= e!1735404 (tuple3!4621 0 (_3!2779 lt!974201) (_2!18706 lt!974201)))))

(declare-fun bm!177853 () Bool)

(declare-fun lt!974188 () tuple3!4618)

(declare-fun valid!2883 (CacheUp!2326) Bool)

(assert (=> bm!177853 (= call!177863 (valid!2883 (ite c!445354 (_2!18706 lt!974188) (_2!18706 lt!974174))))))

(declare-fun setIsEmpty!22008 () Bool)

(declare-fun setRes!22008 () Bool)

(assert (=> setIsEmpty!22008 setRes!22008))

(declare-fun b!2752500 () Bool)

(declare-fun e!1735411 () Bool)

(assert (=> b!2752500 (= e!1735412 e!1735411)))

(declare-fun b!2752501 () Bool)

(declare-fun lt!974172 () Int)

(assert (=> b!2752501 (= e!1735394 (ite (= lt!974172 0) 0 lt!974172))))

(assert (=> b!2752501 (= lt!974172 call!177858)))

(declare-fun b!2752502 () Bool)

(declare-fun Unit!45628 () Unit!45626)

(assert (=> b!2752502 (= e!1735401 Unit!45628)))

(declare-fun lt!974176 () Unit!45626)

(assert (=> b!2752502 (= lt!974176 call!177859)))

(assert (=> b!2752502 call!177853))

(declare-fun lt!974169 () Unit!45626)

(assert (=> b!2752502 (= lt!974169 call!177852)))

(assert (=> b!2752502 false))

(declare-fun b!2752503 () Bool)

(declare-fun e!1735421 () Bool)

(declare-fun e!1735407 () Bool)

(assert (=> b!2752503 (= e!1735421 e!1735407)))

(declare-fun b!2752504 () Bool)

(declare-fun e!1735405 () Bool)

(declare-fun tp!869672 () Bool)

(declare-fun inv!43259 (Conc!9935) Bool)

(assert (=> b!2752504 (= e!1735405 (and (inv!43259 (c!445361 input!5495)) tp!869672))))

(declare-fun b!2752505 () Bool)

(declare-fun e!1735420 () Unit!45626)

(declare-fun Unit!45629 () Unit!45626)

(assert (=> b!2752505 (= e!1735420 Unit!45629)))

(declare-fun tp!869676 () Bool)

(declare-fun tp!869674 () Bool)

(declare-fun array_inv!4219 (array!13218) Bool)

(declare-fun array_inv!4220 (array!13220) Bool)

(assert (=> b!2752506 (= e!1735391 (and tp!869667 tp!869676 tp!869674 (array_inv!4219 (_keys!4015 (v!33471 (underlying!7633 (v!33472 (underlying!7634 (cache!3764 cacheDown!939))))))) (array_inv!4220 (_values!3996 (v!33471 (underlying!7633 (v!33472 (underlying!7634 (cache!3764 cacheDown!939))))))) e!1735392))))

(declare-fun b!2752507 () Bool)

(assert (=> b!2752507 (= e!1735419 (= (_1!18706 lt!974183) (findLongestMatchInnerZipperFast!11 z!3597 Nil!31859 0 lt!974166 input!5495 lt!974163)))))

(declare-fun mapNonEmpty!16886 () Bool)

(declare-fun tp!869665 () Bool)

(declare-fun tp!869661 () Bool)

(assert (=> mapNonEmpty!16886 (= mapRes!16885 (and tp!869665 tp!869661))))

(declare-fun mapValue!16885 () List!31961)

(declare-fun mapKey!16886 () (_ BitVec 32))

(declare-fun mapRest!16886 () (Array (_ BitVec 32) List!31961))

(assert (=> mapNonEmpty!16886 (= (arr!5900 (_values!3995 (v!33469 (underlying!7631 (v!33470 (underlying!7632 (cache!3763 cacheUp!820))))))) (store mapRest!16886 mapKey!16886 mapValue!16885))))

(declare-fun b!2752508 () Bool)

(declare-fun Unit!45630 () Unit!45626)

(assert (=> b!2752508 (= e!1735420 Unit!45630)))

(declare-fun lt!974161 () Unit!45626)

(assert (=> b!2752508 (= lt!974161 call!177856)))

(assert (=> b!2752508 call!177860))

(declare-fun lt!974185 () Unit!45626)

(assert (=> b!2752508 (= lt!974185 call!177861)))

(assert (=> b!2752508 false))

(declare-fun b!2752509 () Bool)

(declare-fun res!1153893 () Bool)

(assert (=> b!2752509 (=> (not res!1153893) (not e!1735408))))

(assert (=> b!2752509 (= res!1153893 (valid!2882 (_3!2779 lt!974201)))))

(declare-fun tp!869669 () Bool)

(declare-fun tp!869660 () Bool)

(declare-fun e!1735409 () Bool)

(declare-fun array_inv!4221 (array!13216) Bool)

(assert (=> b!2752510 (= e!1735409 (and tp!869671 tp!869660 tp!869669 (array_inv!4219 (_keys!4014 (v!33469 (underlying!7631 (v!33470 (underlying!7632 (cache!3763 cacheUp!820))))))) (array_inv!4221 (_values!3995 (v!33469 (underlying!7631 (v!33470 (underlying!7632 (cache!3763 cacheUp!820))))))) e!1735399))))

(declare-fun b!2752511 () Bool)

(declare-fun lt!974170 () List!31959)

(assert (=> b!2752511 (= e!1735393 (not (= lt!974170 lt!974166)))))

(assert (=> b!2752511 e!1735410))

(declare-fun c!445353 () Bool)

(declare-fun lt!974204 () Bool)

(assert (=> b!2752511 (= c!445353 lt!974204)))

(assert (=> b!2752511 (= lt!974165 (findLongestMatchInnerZipperFast!11 z!3597 Nil!31859 0 lt!974166 input!5495 lt!974163))))

(declare-fun lt!974171 () tuple3!4620)

(assert (=> b!2752511 (= lt!974183 (tuple3!4619 (_1!18707 lt!974171) (_3!2780 lt!974171) (_2!18707 lt!974171)))))

(assert (=> b!2752511 (= lt!974171 e!1735400)))

(declare-fun c!445357 () Bool)

(assert (=> b!2752511 (= c!445357 lt!974204)))

(declare-fun lostCauseZipper!419 ((InoxSet Context!4542)) Bool)

(assert (=> b!2752511 (= lt!974204 (lostCauseZipper!419 z!3597))))

(assert (=> b!2752511 (and (= lt!974166 lt!974211) (= lt!974211 lt!974166))))

(declare-fun lt!974197 () Unit!45626)

(declare-fun lemmaSamePrefixThenSameSuffix!1117 (List!31959 List!31959 List!31959 List!31959 List!31959) Unit!45626)

(assert (=> b!2752511 (= lt!974197 (lemmaSamePrefixThenSameSuffix!1117 Nil!31859 lt!974166 Nil!31859 lt!974211 lt!974166))))

(declare-fun getSuffix!1215 (List!31959 List!31959) List!31959)

(assert (=> b!2752511 (= lt!974211 (getSuffix!1215 lt!974166 Nil!31859))))

(assert (=> b!2752511 (isPrefix!2529 Nil!31859 lt!974170)))

(assert (=> b!2752511 (= lt!974170 (++!7889 Nil!31859 lt!974166))))

(declare-fun lt!974179 () Unit!45626)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1643 (List!31959 List!31959) Unit!45626)

(assert (=> b!2752511 (= lt!974179 (lemmaConcatTwoListThenFirstIsPrefix!1643 Nil!31859 lt!974166))))

(assert (=> b!2752511 e!1735419))

(declare-fun res!1153889 () Bool)

(assert (=> b!2752511 (=> (not res!1153889) (not e!1735419))))

(assert (=> b!2752511 (= res!1153889 (valid!2883 (_2!18706 lt!974183)))))

(declare-fun findLongestMatchInnerZipperFastMem!9 (CacheUp!2326 CacheDown!2446 (InoxSet Context!4542) List!31959 Int List!31959 BalanceConc!19484 Int) tuple3!4618)

(assert (=> b!2752511 (= lt!974183 (findLongestMatchInnerZipperFastMem!9 (_2!18706 lt!974201) (_3!2779 lt!974201) z!3597 Nil!31859 0 lt!974166 input!5495 lt!974163))))

(assert (=> b!2752511 e!1735408))

(declare-fun res!1153884 () Bool)

(assert (=> b!2752511 (=> (not res!1153884) (not e!1735408))))

(assert (=> b!2752511 (= res!1153884 (valid!2883 (_2!18706 lt!974201)))))

(assert (=> b!2752511 (= lt!974201 (findLongestMatchInnerZipperFastMem!9 cacheUp!820 cacheDown!939 z!3597 Nil!31859 0 lt!974166 input!5495 lt!974163))))

(declare-fun size!24625 (BalanceConc!19484) Int)

(assert (=> b!2752511 (= lt!974163 (size!24625 input!5495))))

(assert (=> b!2752511 (= lt!974166 (list!12036 input!5495))))

(declare-fun bm!177854 () Bool)

(assert (=> bm!177854 (= call!177857 (nullableZipper!608 z!3597))))

(declare-fun b!2752512 () Bool)

(assert (=> b!2752512 (= e!1735411 e!1735409)))

(declare-fun setNonEmpty!22008 () Bool)

(declare-fun tp!869666 () Bool)

(declare-fun e!1735396 () Bool)

(declare-fun setElem!22008 () Context!4542)

(declare-fun inv!43260 (Context!4542) Bool)

(assert (=> setNonEmpty!22008 (= setRes!22008 (and tp!869666 (inv!43260 setElem!22008) e!1735396))))

(declare-fun setRest!22008 () (InoxSet Context!4542))

(assert (=> setNonEmpty!22008 (= z!3597 ((_ map or) (store ((as const (Array Context!4542 Bool)) false) setElem!22008 true) setRest!22008))))

(declare-fun b!2752513 () Bool)

(assert (=> b!2752513 (= c!445354 call!177854)))

(assert (=> b!2752513 (= (++!7889 lt!974206 lt!974195) lt!974166)))

(assert (=> b!2752513 (= lt!974206 (++!7889 Nil!31859 (Cons!31859 lt!974190 Nil!31859)))))

(declare-fun lt!974212 () Unit!45626)

(assert (=> b!2752513 (= lt!974212 (lemmaMoveElementToOtherListKeepsConcatEq!846 Nil!31859 lt!974190 lt!974195 lt!974166))))

(assert (=> b!2752513 (= lt!974195 (tail!4363 lt!974166))))

(assert (=> b!2752513 (= lt!974190 (apply!7445 input!5495 0))))

(assert (=> b!2752513 (isPrefix!2529 (++!7889 Nil!31859 (Cons!31859 (head!6125 lt!974211) Nil!31859)) lt!974166)))

(declare-fun lt!974203 () Unit!45626)

(assert (=> b!2752513 (= lt!974203 (lemmaAddHeadSuffixToPrefixStillPrefix!434 Nil!31859 lt!974166))))

(declare-fun lt!974180 () Unit!45626)

(assert (=> b!2752513 (= lt!974180 e!1735420)))

(declare-fun c!445358 () Bool)

(declare-fun lt!974173 () Int)

(assert (=> b!2752513 (= c!445358 (= lt!974173 lt!974163))))

(assert (=> b!2752513 (<= lt!974173 (size!24624 lt!974166))))

(assert (=> b!2752513 (= lt!974173 (size!24624 Nil!31859))))

(declare-fun lt!974199 () Unit!45626)

(assert (=> b!2752513 (= lt!974199 (lemmaIsPrefixThenSmallerEqSize!237 Nil!31859 lt!974166))))

(assert (=> b!2752513 (= (head!6125 (drop!1684 lt!974166 0)) (apply!7446 lt!974166 0))))

(declare-fun lt!974159 () Unit!45626)

(assert (=> b!2752513 (= lt!974159 (lemmaDropApply!890 lt!974166 0))))

(declare-fun lt!974168 () List!31959)

(declare-fun lt!974208 () List!31959)

(assert (=> b!2752513 (and (= lt!974168 Nil!31859) (= lt!974208 lt!974166))))

(declare-fun lt!974207 () Unit!45626)

(assert (=> b!2752513 (= lt!974207 (lemmaConcatSameAndSameSizesThenSameLists!316 lt!974168 lt!974208 Nil!31859 lt!974166))))

(declare-fun lt!974182 () tuple2!31854)

(assert (=> b!2752513 (= lt!974208 (list!12036 (_2!18709 lt!974182)))))

(assert (=> b!2752513 (= lt!974168 (list!12036 (_1!18709 lt!974182)))))

(assert (=> b!2752513 (= lt!974182 (splitAt!81 input!5495 0))))

(assert (=> b!2752513 (= e!1735404 e!1735418)))

(declare-fun b!2752514 () Bool)

(declare-fun tp!869664 () Bool)

(assert (=> b!2752514 (= e!1735396 tp!869664)))

(assert (=> b!2752515 (= e!1735407 (and e!1735395 tp!869663))))

(declare-fun b!2752516 () Bool)

(assert (=> b!2752516 (= e!1735403 (= (_1!18706 lt!974188) call!177864))))

(declare-fun bm!177855 () Bool)

(assert (=> bm!177855 (= call!177853 (isPrefix!2529 lt!974166 lt!974166))))

(declare-fun b!2752517 () Bool)

(declare-fun Unit!45631 () Unit!45626)

(assert (=> b!2752517 (= e!1735401 Unit!45631)))

(declare-fun bm!177856 () Bool)

(assert (=> bm!177856 (= call!177855 (valid!2882 (ite c!445354 (_3!2779 lt!974188) (_3!2779 lt!974174))))))

(assert (=> b!2752518 (= e!1735398 (and e!1735402 tp!869670))))

(declare-fun res!1153890 () Bool)

(assert (=> start!266800 (=> (not res!1153890) (not e!1735393))))

(assert (=> start!266800 (= res!1153890 (valid!2883 cacheUp!820))))

(assert (=> start!266800 e!1735393))

(declare-fun inv!43261 (CacheUp!2326) Bool)

(assert (=> start!266800 (and (inv!43261 cacheUp!820) e!1735397)))

(declare-fun inv!43262 (CacheDown!2446) Bool)

(assert (=> start!266800 (and (inv!43262 cacheDown!939) e!1735421)))

(declare-fun condSetEmpty!22008 () Bool)

(assert (=> start!266800 (= condSetEmpty!22008 (= z!3597 ((as const (Array Context!4542 Bool)) false)))))

(assert (=> start!266800 setRes!22008))

(declare-fun inv!43263 (BalanceConc!19484) Bool)

(assert (=> start!266800 (and (inv!43263 input!5495) e!1735405)))

(declare-fun b!2752519 () Bool)

(assert (=> b!2752519 (= e!1735418 (tuple3!4621 (ite (= (_1!18706 lt!974188) 0) 0 (_1!18706 lt!974188)) (_3!2779 lt!974188) (_2!18706 lt!974188)))))

(assert (=> b!2752519 (= lt!974194 call!177851)))

(assert (=> b!2752519 (= lt!974188 call!177850)))

(declare-fun res!1153885 () Bool)

(assert (=> b!2752519 (= res!1153885 call!177863)))

(assert (=> b!2752519 (=> (not res!1153885) (not e!1735403))))

(assert (=> b!2752519 e!1735403))

(declare-fun bm!177857 () Bool)

(assert (=> bm!177857 (= call!177850 (findLongestMatchInnerZipperFastMem!9 (ite c!445354 (_2!18708 lt!974194) (_2!18708 lt!974189)) (ite c!445354 (_3!2781 lt!974194) (_3!2781 lt!974189)) (ite c!445354 (_1!18708 lt!974194) (_1!18708 lt!974189)) lt!974206 1 lt!974195 input!5495 lt!974163))))

(declare-fun bm!177858 () Bool)

(assert (=> bm!177858 (= call!177859 (lemmaIsPrefixRefl!1655 lt!974166 lt!974166))))

(declare-fun bm!177859 () Bool)

(assert (=> bm!177859 (= call!177858 (findLongestMatchInnerZipperFast!11 call!177862 lt!974181 1 lt!974184 input!5495 lt!974163))))

(assert (= (and start!266800 res!1153890) b!2752485))

(assert (= (and b!2752485 res!1153887) b!2752511))

(assert (= (and b!2752511 res!1153884) b!2752509))

(assert (= (and b!2752509 res!1153893) b!2752495))

(assert (= (and b!2752511 res!1153889) b!2752478))

(assert (= (and b!2752478 res!1153886) b!2752507))

(assert (= (and b!2752511 c!445357) b!2752497))

(assert (= (and b!2752511 (not c!445357)) b!2752479))

(assert (= (and b!2752479 c!445359) b!2752499))

(assert (= (and b!2752479 (not c!445359)) b!2752513))

(assert (= (and b!2752513 c!445358) b!2752508))

(assert (= (and b!2752513 (not c!445358)) b!2752505))

(assert (= (and b!2752513 c!445354) b!2752519))

(assert (= (and b!2752513 (not c!445354)) b!2752486))

(assert (= (and b!2752519 res!1153885) b!2752484))

(assert (= (and b!2752484 res!1153891) b!2752516))

(assert (= (and b!2752486 res!1153888) b!2752480))

(assert (= (and b!2752480 res!1153892) b!2752491))

(assert (= (or b!2752484 b!2752480) bm!177856))

(assert (= (or b!2752519 b!2752486) bm!177853))

(assert (= (or b!2752519 b!2752486) bm!177857))

(assert (= (or b!2752519 b!2752486) bm!177851))

(assert (= (or b!2752516 b!2752491) bm!177847))

(assert (= (or b!2752499 b!2752513) bm!177850))

(assert (= (or b!2752499 b!2752508) bm!177845))

(assert (= (or b!2752499 b!2752508) bm!177849))

(assert (= (or b!2752499 b!2752508) bm!177852))

(assert (= (and b!2752511 c!445353) b!2752489))

(assert (= (and b!2752511 (not c!445353)) b!2752482))

(assert (= (and b!2752482 c!445356) b!2752498))

(assert (= (and b!2752482 (not c!445356)) b!2752488))

(assert (= (and b!2752488 c!445352) b!2752502))

(assert (= (and b!2752488 (not c!445352)) b!2752517))

(assert (= (and b!2752488 c!445355) b!2752501))

(assert (= (and b!2752488 (not c!445355)) b!2752493))

(assert (= (or b!2752501 b!2752493) bm!177848))

(assert (= (or b!2752501 b!2752493) bm!177859))

(assert (= (or b!2752498 b!2752488) bm!177854))

(assert (= (or b!2752498 b!2752502) bm!177858))

(assert (= (or b!2752498 b!2752502) bm!177846))

(assert (= (or b!2752498 b!2752502) bm!177855))

(assert (= (and b!2752494 condMapEmpty!16885) mapIsEmpty!16885))

(assert (= (and b!2752494 (not condMapEmpty!16885)) mapNonEmpty!16886))

(assert (= b!2752510 b!2752494))

(assert (= b!2752512 b!2752510))

(assert (= b!2752500 b!2752512))

(assert (= (and b!2752481 ((_ is LongMap!3714) (v!33470 (underlying!7632 (cache!3763 cacheUp!820))))) b!2752500))

(assert (= b!2752518 b!2752481))

(assert (= (and b!2752496 ((_ is HashMap!3620) (cache!3763 cacheUp!820))) b!2752518))

(assert (= start!266800 b!2752496))

(assert (= (and b!2752490 condMapEmpty!16886) mapIsEmpty!16886))

(assert (= (and b!2752490 (not condMapEmpty!16886)) mapNonEmpty!16885))

(assert (= b!2752506 b!2752490))

(assert (= b!2752483 b!2752506))

(assert (= b!2752492 b!2752483))

(assert (= (and b!2752487 ((_ is LongMap!3715) (v!33472 (underlying!7634 (cache!3764 cacheDown!939))))) b!2752492))

(assert (= b!2752515 b!2752487))

(assert (= (and b!2752503 ((_ is HashMap!3621) (cache!3764 cacheDown!939))) b!2752515))

(assert (= start!266800 b!2752503))

(assert (= (and start!266800 condSetEmpty!22008) setIsEmpty!22008))

(assert (= (and start!266800 (not condSetEmpty!22008)) setNonEmpty!22008))

(assert (= setNonEmpty!22008 b!2752514))

(assert (= start!266800 b!2752504))

(declare-fun m!3167467 () Bool)

(assert (=> bm!177848 m!3167467))

(declare-fun m!3167469 () Bool)

(assert (=> b!2752495 m!3167469))

(declare-fun m!3167471 () Bool)

(assert (=> bm!177852 m!3167471))

(declare-fun m!3167473 () Bool)

(assert (=> b!2752509 m!3167473))

(declare-fun m!3167475 () Bool)

(assert (=> bm!177849 m!3167475))

(declare-fun m!3167477 () Bool)

(assert (=> bm!177857 m!3167477))

(declare-fun m!3167479 () Bool)

(assert (=> bm!177853 m!3167479))

(declare-fun m!3167481 () Bool)

(assert (=> b!2752506 m!3167481))

(declare-fun m!3167483 () Bool)

(assert (=> b!2752506 m!3167483))

(declare-fun m!3167485 () Bool)

(assert (=> bm!177858 m!3167485))

(declare-fun m!3167487 () Bool)

(assert (=> start!266800 m!3167487))

(declare-fun m!3167489 () Bool)

(assert (=> start!266800 m!3167489))

(declare-fun m!3167491 () Bool)

(assert (=> start!266800 m!3167491))

(declare-fun m!3167493 () Bool)

(assert (=> start!266800 m!3167493))

(declare-fun m!3167495 () Bool)

(assert (=> b!2752513 m!3167495))

(declare-fun m!3167497 () Bool)

(assert (=> b!2752513 m!3167497))

(declare-fun m!3167499 () Bool)

(assert (=> b!2752513 m!3167499))

(declare-fun m!3167501 () Bool)

(assert (=> b!2752513 m!3167501))

(declare-fun m!3167503 () Bool)

(assert (=> b!2752513 m!3167503))

(declare-fun m!3167505 () Bool)

(assert (=> b!2752513 m!3167505))

(declare-fun m!3167507 () Bool)

(assert (=> b!2752513 m!3167507))

(declare-fun m!3167509 () Bool)

(assert (=> b!2752513 m!3167509))

(declare-fun m!3167511 () Bool)

(assert (=> b!2752513 m!3167511))

(declare-fun m!3167513 () Bool)

(assert (=> b!2752513 m!3167513))

(declare-fun m!3167515 () Bool)

(assert (=> b!2752513 m!3167515))

(assert (=> b!2752513 m!3167509))

(declare-fun m!3167517 () Bool)

(assert (=> b!2752513 m!3167517))

(declare-fun m!3167519 () Bool)

(assert (=> b!2752513 m!3167519))

(declare-fun m!3167521 () Bool)

(assert (=> b!2752513 m!3167521))

(declare-fun m!3167523 () Bool)

(assert (=> b!2752513 m!3167523))

(declare-fun m!3167525 () Bool)

(assert (=> b!2752513 m!3167525))

(declare-fun m!3167527 () Bool)

(assert (=> b!2752513 m!3167527))

(declare-fun m!3167529 () Bool)

(assert (=> b!2752513 m!3167529))

(declare-fun m!3167531 () Bool)

(assert (=> b!2752513 m!3167531))

(assert (=> b!2752513 m!3167511))

(declare-fun m!3167533 () Bool)

(assert (=> b!2752513 m!3167533))

(declare-fun m!3167535 () Bool)

(assert (=> bm!177847 m!3167535))

(declare-fun m!3167537 () Bool)

(assert (=> setNonEmpty!22008 m!3167537))

(assert (=> b!2752507 m!3167469))

(declare-fun m!3167539 () Bool)

(assert (=> bm!177856 m!3167539))

(declare-fun m!3167541 () Bool)

(assert (=> mapNonEmpty!16886 m!3167541))

(declare-fun m!3167543 () Bool)

(assert (=> b!2752478 m!3167543))

(assert (=> bm!177845 m!3167485))

(declare-fun m!3167545 () Bool)

(assert (=> b!2752504 m!3167545))

(declare-fun m!3167547 () Bool)

(assert (=> bm!177859 m!3167547))

(declare-fun m!3167549 () Bool)

(assert (=> b!2752510 m!3167549))

(declare-fun m!3167551 () Bool)

(assert (=> b!2752510 m!3167551))

(declare-fun m!3167553 () Bool)

(assert (=> bm!177854 m!3167553))

(assert (=> b!2752488 m!3167495))

(assert (=> b!2752488 m!3167499))

(assert (=> b!2752488 m!3167503))

(declare-fun m!3167555 () Bool)

(assert (=> b!2752488 m!3167555))

(assert (=> b!2752488 m!3167505))

(declare-fun m!3167557 () Bool)

(assert (=> b!2752488 m!3167557))

(declare-fun m!3167559 () Bool)

(assert (=> b!2752488 m!3167559))

(declare-fun m!3167561 () Bool)

(assert (=> b!2752488 m!3167561))

(assert (=> b!2752488 m!3167509))

(declare-fun m!3167563 () Bool)

(assert (=> b!2752488 m!3167563))

(assert (=> b!2752488 m!3167511))

(assert (=> b!2752488 m!3167513))

(assert (=> b!2752488 m!3167515))

(assert (=> b!2752488 m!3167509))

(assert (=> b!2752488 m!3167517))

(assert (=> b!2752488 m!3167519))

(assert (=> b!2752488 m!3167511))

(declare-fun m!3167565 () Bool)

(assert (=> b!2752488 m!3167565))

(assert (=> b!2752488 m!3167521))

(assert (=> b!2752488 m!3167523))

(assert (=> b!2752488 m!3167529))

(assert (=> b!2752488 m!3167531))

(declare-fun m!3167567 () Bool)

(assert (=> b!2752511 m!3167567))

(declare-fun m!3167569 () Bool)

(assert (=> b!2752511 m!3167569))

(declare-fun m!3167571 () Bool)

(assert (=> b!2752511 m!3167571))

(declare-fun m!3167573 () Bool)

(assert (=> b!2752511 m!3167573))

(declare-fun m!3167575 () Bool)

(assert (=> b!2752511 m!3167575))

(declare-fun m!3167577 () Bool)

(assert (=> b!2752511 m!3167577))

(declare-fun m!3167579 () Bool)

(assert (=> b!2752511 m!3167579))

(declare-fun m!3167581 () Bool)

(assert (=> b!2752511 m!3167581))

(declare-fun m!3167583 () Bool)

(assert (=> b!2752511 m!3167583))

(declare-fun m!3167585 () Bool)

(assert (=> b!2752511 m!3167585))

(declare-fun m!3167587 () Bool)

(assert (=> b!2752511 m!3167587))

(declare-fun m!3167589 () Bool)

(assert (=> b!2752511 m!3167589))

(assert (=> b!2752511 m!3167469))

(declare-fun m!3167591 () Bool)

(assert (=> bm!177851 m!3167591))

(declare-fun m!3167593 () Bool)

(assert (=> mapNonEmpty!16885 m!3167593))

(declare-fun m!3167595 () Bool)

(assert (=> b!2752485 m!3167595))

(assert (=> bm!177846 m!3167475))

(assert (=> bm!177850 m!3167553))

(assert (=> bm!177855 m!3167471))

(check-sat (not b!2752495) (not b!2752507) (not bm!177846) (not mapNonEmpty!16885) b_and!202637 (not bm!177856) (not b!2752511) (not bm!177853) (not b_next!78603) (not bm!177849) (not bm!177848) (not bm!177854) (not bm!177859) (not bm!177857) (not b_next!78599) (not bm!177847) (not bm!177850) (not setNonEmpty!22008) (not b_next!78597) (not b!2752478) (not b_next!78601) (not bm!177845) (not bm!177855) (not bm!177852) (not b!2752510) (not b!2752494) (not b!2752506) (not mapNonEmpty!16886) (not b!2752490) b_and!202635 (not b!2752485) (not start!266800) b_and!202631 (not b!2752514) (not bm!177851) (not b!2752513) (not b!2752509) b_and!202633 (not bm!177858) (not b!2752488) (not b!2752504))
(check-sat (not b_next!78599) (not b_next!78597) (not b_next!78601) b_and!202635 b_and!202631 b_and!202637 (not b_next!78603) b_and!202633)
(get-model)

(declare-fun d!796681 () Bool)

(declare-fun lambda!100923 () Int)

(declare-fun exists!949 ((InoxSet Context!4542) Int) Bool)

(assert (=> d!796681 (= (nullableZipper!608 z!3597) (exists!949 z!3597 lambda!100923))))

(declare-fun bs!490450 () Bool)

(assert (= bs!490450 d!796681))

(declare-fun m!3167597 () Bool)

(assert (=> bs!490450 m!3167597))

(assert (=> bm!177854 d!796681))

(declare-fun call!177886 () Unit!45626)

(declare-fun c!445380 () Bool)

(declare-fun lt!974310 () List!31959)

(declare-fun lt!974326 () List!31959)

(declare-fun lt!974306 () List!31959)

(declare-fun bm!177880 () Bool)

(declare-fun lt!974336 () List!31959)

(assert (=> bm!177880 (= call!177886 (lemmaIsPrefixRefl!1655 (ite c!445380 lt!974310 lt!974326) (ite c!445380 lt!974306 lt!974336)))))

(declare-fun b!2752544 () Bool)

(declare-fun e!1735437 () Int)

(assert (=> b!2752544 (= e!1735437 0)))

(declare-fun bm!177881 () Bool)

(declare-fun call!177888 () List!31959)

(declare-fun call!177889 () C!16264)

(assert (=> bm!177881 (= call!177888 (++!7889 Nil!31859 (Cons!31859 call!177889 Nil!31859)))))

(declare-fun b!2752545 () Bool)

(assert (=> b!2752545 (= e!1735437 0)))

(declare-fun b!2752546 () Bool)

(declare-fun e!1735436 () Unit!45626)

(declare-fun Unit!45632 () Unit!45626)

(assert (=> b!2752546 (= e!1735436 Unit!45632)))

(declare-fun bm!177882 () Bool)

(declare-fun call!177892 () Bool)

(assert (=> bm!177882 (= call!177892 (nullableZipper!608 z!3597))))

(declare-fun b!2752547 () Bool)

(declare-fun e!1735438 () Int)

(declare-fun lt!974320 () Int)

(assert (=> b!2752547 (= e!1735438 (ite (= lt!974320 0) 0 lt!974320))))

(declare-fun call!177891 () Int)

(assert (=> b!2752547 (= lt!974320 call!177891)))

(declare-fun bm!177884 () Bool)

(assert (=> bm!177884 (= call!177889 (apply!7445 input!5495 0))))

(declare-fun b!2752548 () Bool)

(declare-fun e!1735435 () List!31959)

(declare-fun call!177885 () List!31959)

(assert (=> b!2752548 (= e!1735435 call!177885)))

(declare-fun b!2752549 () Bool)

(assert (=> b!2752549 (= e!1735435 (list!12036 input!5495))))

(declare-fun bm!177885 () Bool)

(declare-fun call!177893 () List!31959)

(assert (=> bm!177885 (= call!177893 (tail!4363 lt!974166))))

(declare-fun b!2752550 () Bool)

(declare-fun Unit!45633 () Unit!45626)

(assert (=> b!2752550 (= e!1735436 Unit!45633)))

(assert (=> b!2752550 (= lt!974326 (list!12036 input!5495))))

(assert (=> b!2752550 (= lt!974336 (list!12036 input!5495))))

(declare-fun lt!974302 () Unit!45626)

(assert (=> b!2752550 (= lt!974302 call!177886)))

(declare-fun call!177887 () Bool)

(assert (=> b!2752550 call!177887))

(declare-fun lt!974321 () Unit!45626)

(assert (=> b!2752550 (= lt!974321 lt!974302)))

(declare-fun lt!974315 () List!31959)

(assert (=> b!2752550 (= lt!974315 (list!12036 input!5495))))

(declare-fun lt!974311 () Unit!45626)

(declare-fun call!177890 () Unit!45626)

(assert (=> b!2752550 (= lt!974311 call!177890)))

(assert (=> b!2752550 (= lt!974315 Nil!31859)))

(declare-fun lt!974317 () Unit!45626)

(assert (=> b!2752550 (= lt!974317 lt!974311)))

(assert (=> b!2752550 false))

(declare-fun bm!177886 () Bool)

(assert (=> bm!177886 (= call!177887 (isPrefix!2529 (ite c!445380 lt!974310 lt!974326) (ite c!445380 lt!974306 lt!974336)))))

(declare-fun bm!177887 () Bool)

(declare-fun lt!974298 () tuple2!31854)

(assert (=> bm!177887 (= call!177885 (list!12036 (ite c!445380 input!5495 (_2!18709 lt!974298))))))

(declare-fun b!2752551 () Bool)

(assert (=> b!2752551 (= e!1735438 call!177891)))

(declare-fun bm!177888 () Bool)

(declare-fun call!177894 () (InoxSet Context!4542))

(assert (=> bm!177888 (= call!177894 (derivationStepZipper!345 z!3597 call!177889))))

(declare-fun bm!177889 () Bool)

(declare-fun c!445381 () Bool)

(assert (=> bm!177889 (= c!445381 c!445380)))

(declare-fun lt!974323 () List!31959)

(assert (=> bm!177889 (= call!177890 (lemmaIsPrefixSameLengthThenSameList!436 (ite c!445380 lt!974323 lt!974315) Nil!31859 e!1735435))))

(declare-fun b!2752552 () Bool)

(declare-fun c!445377 () Bool)

(assert (=> b!2752552 (= c!445377 call!177892)))

(declare-fun lt!974300 () Unit!45626)

(declare-fun lt!974318 () Unit!45626)

(assert (=> b!2752552 (= lt!974300 lt!974318)))

(declare-fun lt!974297 () C!16264)

(declare-fun lt!974305 () List!31959)

(declare-fun lt!974324 () List!31959)

(assert (=> b!2752552 (= (++!7889 (++!7889 Nil!31859 (Cons!31859 lt!974297 Nil!31859)) lt!974305) lt!974324)))

(assert (=> b!2752552 (= lt!974318 (lemmaMoveElementToOtherListKeepsConcatEq!846 Nil!31859 lt!974297 lt!974305 lt!974324))))

(assert (=> b!2752552 (= lt!974324 (list!12036 input!5495))))

(assert (=> b!2752552 (= lt!974305 (tail!4363 lt!974166))))

(assert (=> b!2752552 (= lt!974297 (apply!7445 input!5495 0))))

(declare-fun lt!974333 () Unit!45626)

(declare-fun lt!974332 () Unit!45626)

(assert (=> b!2752552 (= lt!974333 lt!974332)))

(declare-fun lt!974309 () List!31959)

(assert (=> b!2752552 (isPrefix!2529 (++!7889 Nil!31859 (Cons!31859 (head!6125 (getSuffix!1215 lt!974309 Nil!31859)) Nil!31859)) lt!974309)))

(assert (=> b!2752552 (= lt!974332 (lemmaAddHeadSuffixToPrefixStillPrefix!434 Nil!31859 lt!974309))))

(assert (=> b!2752552 (= lt!974309 (list!12036 input!5495))))

(declare-fun lt!974314 () Unit!45626)

(assert (=> b!2752552 (= lt!974314 e!1735436)))

(declare-fun c!445379 () Bool)

(assert (=> b!2752552 (= c!445379 (= (size!24624 Nil!31859) (size!24625 input!5495)))))

(declare-fun lt!974329 () Unit!45626)

(declare-fun lt!974338 () Unit!45626)

(assert (=> b!2752552 (= lt!974329 lt!974338)))

(declare-fun lt!974330 () List!31959)

(assert (=> b!2752552 (<= (size!24624 Nil!31859) (size!24624 lt!974330))))

(assert (=> b!2752552 (= lt!974338 (lemmaIsPrefixThenSmallerEqSize!237 Nil!31859 lt!974330))))

(assert (=> b!2752552 (= lt!974330 (list!12036 input!5495))))

(declare-fun lt!974334 () Unit!45626)

(declare-fun lt!974308 () Unit!45626)

(assert (=> b!2752552 (= lt!974334 lt!974308)))

(declare-fun lt!974304 () List!31959)

(assert (=> b!2752552 (= (head!6125 (drop!1684 lt!974304 0)) (apply!7446 lt!974304 0))))

(assert (=> b!2752552 (= lt!974308 (lemmaDropApply!890 lt!974304 0))))

(assert (=> b!2752552 (= lt!974304 (list!12036 input!5495))))

(declare-fun lt!974331 () Unit!45626)

(declare-fun lt!974299 () Unit!45626)

(assert (=> b!2752552 (= lt!974331 lt!974299)))

(declare-fun lt!974312 () List!31959)

(declare-fun lt!974327 () List!31959)

(assert (=> b!2752552 (and (= lt!974312 Nil!31859) (= lt!974327 lt!974166))))

(assert (=> b!2752552 (= lt!974299 (lemmaConcatSameAndSameSizesThenSameLists!316 lt!974312 lt!974327 Nil!31859 lt!974166))))

(assert (=> b!2752552 (= lt!974327 call!177885)))

(assert (=> b!2752552 (= lt!974312 (list!12036 (_1!18709 lt!974298)))))

(assert (=> b!2752552 (= lt!974298 (splitAt!81 input!5495 0))))

(declare-fun e!1735434 () Int)

(assert (=> b!2752552 (= e!1735434 e!1735438)))

(declare-fun b!2752553 () Bool)

(declare-fun e!1735439 () Int)

(assert (=> b!2752553 (= e!1735439 0)))

(declare-fun bm!177883 () Bool)

(assert (=> bm!177883 (= call!177891 (findLongestMatchInnerZipperFast!11 call!177894 call!177888 (+ 0 1) call!177893 input!5495 lt!974163))))

(declare-fun lt!974313 () Int)

(declare-fun d!796683 () Bool)

(declare-datatypes ((tuple2!31856 0))(
  ( (tuple2!31857 (_1!18710 List!31959) (_2!18710 List!31959)) )
))
(declare-fun findLongestMatchInnerZipper!3 ((InoxSet Context!4542) List!31959 Int List!31959 List!31959 Int) tuple2!31856)

(assert (=> d!796683 (= (size!24624 (_1!18710 (findLongestMatchInnerZipper!3 z!3597 Nil!31859 0 lt!974166 (list!12036 input!5495) lt!974163))) lt!974313)))

(assert (=> d!796683 (= lt!974313 e!1735439)))

(declare-fun c!445376 () Bool)

(assert (=> d!796683 (= c!445376 (lostCauseZipper!419 z!3597))))

(declare-fun lt!974307 () Unit!45626)

(declare-fun Unit!45634 () Unit!45626)

(assert (=> d!796683 (= lt!974307 Unit!45634)))

(assert (=> d!796683 (= (getSuffix!1215 (list!12036 input!5495) Nil!31859) lt!974166)))

(declare-fun lt!974328 () Unit!45626)

(declare-fun lt!974319 () Unit!45626)

(assert (=> d!796683 (= lt!974328 lt!974319)))

(declare-fun lt!974316 () List!31959)

(assert (=> d!796683 (= lt!974166 lt!974316)))

(assert (=> d!796683 (= lt!974319 (lemmaSamePrefixThenSameSuffix!1117 Nil!31859 lt!974166 Nil!31859 lt!974316 (list!12036 input!5495)))))

(assert (=> d!796683 (= lt!974316 (getSuffix!1215 (list!12036 input!5495) Nil!31859))))

(declare-fun lt!974301 () Unit!45626)

(declare-fun lt!974325 () Unit!45626)

(assert (=> d!796683 (= lt!974301 lt!974325)))

(assert (=> d!796683 (isPrefix!2529 Nil!31859 (++!7889 Nil!31859 lt!974166))))

(assert (=> d!796683 (= lt!974325 (lemmaConcatTwoListThenFirstIsPrefix!1643 Nil!31859 lt!974166))))

(assert (=> d!796683 (= (++!7889 Nil!31859 lt!974166) (list!12036 input!5495))))

(assert (=> d!796683 (= (findLongestMatchInnerZipperFast!11 z!3597 Nil!31859 0 lt!974166 input!5495 lt!974163) lt!974313)))

(declare-fun b!2752554 () Bool)

(declare-fun c!445378 () Bool)

(assert (=> b!2752554 (= c!445378 call!177892)))

(declare-fun lt!974303 () Unit!45626)

(declare-fun lt!974322 () Unit!45626)

(assert (=> b!2752554 (= lt!974303 lt!974322)))

(assert (=> b!2752554 (= lt!974323 Nil!31859)))

(assert (=> b!2752554 (= lt!974322 call!177890)))

(assert (=> b!2752554 (= lt!974323 call!177885)))

(declare-fun lt!974335 () Unit!45626)

(declare-fun lt!974337 () Unit!45626)

(assert (=> b!2752554 (= lt!974335 lt!974337)))

(assert (=> b!2752554 call!177887))

(assert (=> b!2752554 (= lt!974337 call!177886)))

(assert (=> b!2752554 (= lt!974306 call!177885)))

(assert (=> b!2752554 (= lt!974310 call!177885)))

(assert (=> b!2752554 (= e!1735434 e!1735437)))

(declare-fun b!2752555 () Bool)

(assert (=> b!2752555 (= e!1735439 e!1735434)))

(assert (=> b!2752555 (= c!445380 (= 0 lt!974163))))

(assert (= (and d!796683 c!445376) b!2752553))

(assert (= (and d!796683 (not c!445376)) b!2752555))

(assert (= (and b!2752555 c!445380) b!2752554))

(assert (= (and b!2752555 (not c!445380)) b!2752552))

(assert (= (and b!2752554 c!445378) b!2752545))

(assert (= (and b!2752554 (not c!445378)) b!2752544))

(assert (= (and b!2752552 c!445379) b!2752550))

(assert (= (and b!2752552 (not c!445379)) b!2752546))

(assert (= (and b!2752552 c!445377) b!2752547))

(assert (= (and b!2752552 (not c!445377)) b!2752551))

(assert (= (or b!2752547 b!2752551) bm!177885))

(assert (= (or b!2752547 b!2752551) bm!177884))

(assert (= (or b!2752547 b!2752551) bm!177888))

(assert (= (or b!2752547 b!2752551) bm!177881))

(assert (= (or b!2752547 b!2752551) bm!177883))

(assert (= (or b!2752554 b!2752550) bm!177880))

(assert (= (or b!2752554 b!2752552) bm!177887))

(assert (= (or b!2752554 b!2752552) bm!177882))

(assert (= (or b!2752554 b!2752550) bm!177886))

(assert (= (or b!2752554 b!2752550) bm!177889))

(assert (= (and bm!177889 c!445381) b!2752548))

(assert (= (and bm!177889 (not c!445381)) b!2752549))

(assert (=> bm!177885 m!3167515))

(declare-fun m!3167599 () Bool)

(assert (=> bm!177887 m!3167599))

(assert (=> b!2752550 m!3167571))

(declare-fun m!3167601 () Bool)

(assert (=> bm!177889 m!3167601))

(assert (=> d!796683 m!3167583))

(assert (=> d!796683 m!3167571))

(declare-fun m!3167603 () Bool)

(assert (=> d!796683 m!3167603))

(assert (=> d!796683 m!3167571))

(declare-fun m!3167605 () Bool)

(assert (=> d!796683 m!3167605))

(assert (=> d!796683 m!3167581))

(declare-fun m!3167607 () Bool)

(assert (=> d!796683 m!3167607))

(assert (=> d!796683 m!3167581))

(assert (=> d!796683 m!3167571))

(declare-fun m!3167609 () Bool)

(assert (=> d!796683 m!3167609))

(assert (=> d!796683 m!3167575))

(assert (=> d!796683 m!3167571))

(declare-fun m!3167611 () Bool)

(assert (=> d!796683 m!3167611))

(assert (=> bm!177882 m!3167553))

(declare-fun m!3167613 () Bool)

(assert (=> bm!177888 m!3167613))

(assert (=> b!2752549 m!3167571))

(declare-fun m!3167615 () Bool)

(assert (=> bm!177881 m!3167615))

(assert (=> bm!177884 m!3167529))

(assert (=> b!2752552 m!3167519))

(declare-fun m!3167617 () Bool)

(assert (=> b!2752552 m!3167617))

(declare-fun m!3167619 () Bool)

(assert (=> b!2752552 m!3167619))

(assert (=> b!2752552 m!3167505))

(declare-fun m!3167621 () Bool)

(assert (=> b!2752552 m!3167621))

(assert (=> b!2752552 m!3167529))

(assert (=> b!2752552 m!3167571))

(assert (=> b!2752552 m!3167573))

(declare-fun m!3167623 () Bool)

(assert (=> b!2752552 m!3167623))

(declare-fun m!3167625 () Bool)

(assert (=> b!2752552 m!3167625))

(declare-fun m!3167627 () Bool)

(assert (=> b!2752552 m!3167627))

(declare-fun m!3167629 () Bool)

(assert (=> b!2752552 m!3167629))

(declare-fun m!3167631 () Bool)

(assert (=> b!2752552 m!3167631))

(declare-fun m!3167633 () Bool)

(assert (=> b!2752552 m!3167633))

(declare-fun m!3167635 () Bool)

(assert (=> b!2752552 m!3167635))

(declare-fun m!3167637 () Bool)

(assert (=> b!2752552 m!3167637))

(assert (=> b!2752552 m!3167629))

(declare-fun m!3167639 () Bool)

(assert (=> b!2752552 m!3167639))

(declare-fun m!3167641 () Bool)

(assert (=> b!2752552 m!3167641))

(assert (=> b!2752552 m!3167515))

(assert (=> b!2752552 m!3167617))

(assert (=> b!2752552 m!3167627))

(declare-fun m!3167643 () Bool)

(assert (=> b!2752552 m!3167643))

(declare-fun m!3167645 () Bool)

(assert (=> b!2752552 m!3167645))

(assert (=> b!2752552 m!3167625))

(declare-fun m!3167647 () Bool)

(assert (=> b!2752552 m!3167647))

(declare-fun m!3167649 () Bool)

(assert (=> bm!177880 m!3167649))

(declare-fun m!3167651 () Bool)

(assert (=> bm!177886 m!3167651))

(declare-fun m!3167653 () Bool)

(assert (=> bm!177883 m!3167653))

(assert (=> b!2752495 d!796683))

(declare-fun d!796685 () Bool)

(assert (=> d!796685 (= (array_inv!4219 (_keys!4014 (v!33469 (underlying!7631 (v!33470 (underlying!7632 (cache!3763 cacheUp!820))))))) (bvsge (size!24622 (_keys!4014 (v!33469 (underlying!7631 (v!33470 (underlying!7632 (cache!3763 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2752510 d!796685))

(declare-fun d!796687 () Bool)

(assert (=> d!796687 (= (array_inv!4221 (_values!3995 (v!33469 (underlying!7631 (v!33470 (underlying!7632 (cache!3763 cacheUp!820))))))) (bvsge (size!24621 (_values!3995 (v!33469 (underlying!7631 (v!33470 (underlying!7632 (cache!3763 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2752510 d!796687))

(declare-fun d!796689 () Bool)

(declare-fun validCacheMapUp!351 (MutableMap!3620) Bool)

(assert (=> d!796689 (= (valid!2883 (_2!18706 lt!974183)) (validCacheMapUp!351 (cache!3763 (_2!18706 lt!974183))))))

(declare-fun bs!490451 () Bool)

(assert (= bs!490451 d!796689))

(declare-fun m!3167655 () Bool)

(assert (=> bs!490451 m!3167655))

(assert (=> b!2752511 d!796689))

(declare-fun d!796691 () Bool)

(assert (=> d!796691 (isPrefix!2529 Nil!31859 (++!7889 Nil!31859 lt!974166))))

(declare-fun lt!974341 () Unit!45626)

(declare-fun choose!16105 (List!31959 List!31959) Unit!45626)

(assert (=> d!796691 (= lt!974341 (choose!16105 Nil!31859 lt!974166))))

(assert (=> d!796691 (= (lemmaConcatTwoListThenFirstIsPrefix!1643 Nil!31859 lt!974166) lt!974341)))

(declare-fun bs!490452 () Bool)

(assert (= bs!490452 d!796691))

(assert (=> bs!490452 m!3167581))

(assert (=> bs!490452 m!3167581))

(assert (=> bs!490452 m!3167607))

(declare-fun m!3167657 () Bool)

(assert (=> bs!490452 m!3167657))

(assert (=> b!2752511 d!796691))

(declare-fun bs!490453 () Bool)

(declare-fun d!796693 () Bool)

(assert (= bs!490453 (and d!796693 d!796681)))

(declare-fun lambda!100936 () Int)

(assert (=> bs!490453 (not (= lambda!100936 lambda!100923))))

(declare-fun bs!490454 () Bool)

(declare-fun b!2752560 () Bool)

(assert (= bs!490454 (and b!2752560 d!796681)))

(declare-fun lambda!100937 () Int)

(assert (=> bs!490454 (not (= lambda!100937 lambda!100923))))

(declare-fun bs!490455 () Bool)

(assert (= bs!490455 (and b!2752560 d!796693)))

(assert (=> bs!490455 (not (= lambda!100937 lambda!100936))))

(declare-fun bs!490456 () Bool)

(declare-fun b!2752561 () Bool)

(assert (= bs!490456 (and b!2752561 d!796681)))

(declare-fun lambda!100938 () Int)

(assert (=> bs!490456 (not (= lambda!100938 lambda!100923))))

(declare-fun bs!490457 () Bool)

(assert (= bs!490457 (and b!2752561 d!796693)))

(assert (=> bs!490457 (not (= lambda!100938 lambda!100936))))

(declare-fun bs!490458 () Bool)

(assert (= bs!490458 (and b!2752561 b!2752560)))

(assert (=> bs!490458 (= lambda!100938 lambda!100937)))

(declare-fun e!1735446 () Unit!45626)

(declare-fun Unit!45635 () Unit!45626)

(assert (=> b!2752560 (= e!1735446 Unit!45635)))

(declare-datatypes ((List!31963 0))(
  ( (Nil!31863) (Cons!31863 (h!37283 Context!4542) (t!228067 List!31963)) )
))
(declare-fun lt!974363 () List!31963)

(declare-fun call!177900 () List!31963)

(assert (=> b!2752560 (= lt!974363 call!177900)))

(declare-fun lt!974360 () Unit!45626)

(declare-fun lemmaNotForallThenExists!72 (List!31963 Int) Unit!45626)

(assert (=> b!2752560 (= lt!974360 (lemmaNotForallThenExists!72 lt!974363 lambda!100936))))

(declare-fun call!177899 () Bool)

(assert (=> b!2752560 call!177899))

(declare-fun lt!974358 () Unit!45626)

(assert (=> b!2752560 (= lt!974358 lt!974360)))

(declare-fun bm!177895 () Bool)

(declare-fun toList!1817 ((InoxSet Context!4542)) List!31963)

(assert (=> bm!177895 (= call!177900 (toList!1817 z!3597))))

(declare-fun lt!974365 () Bool)

(declare-datatypes ((Option!6250 0))(
  ( (None!6249) (Some!6249 (v!33473 List!31959)) )
))
(declare-fun isEmpty!18065 (Option!6250) Bool)

(declare-fun getLanguageWitness!171 ((InoxSet Context!4542)) Option!6250)

(assert (=> d!796693 (= lt!974365 (isEmpty!18065 (getLanguageWitness!171 z!3597)))))

(declare-fun forall!6588 ((InoxSet Context!4542) Int) Bool)

(assert (=> d!796693 (= lt!974365 (forall!6588 z!3597 lambda!100936))))

(declare-fun lt!974361 () Unit!45626)

(assert (=> d!796693 (= lt!974361 e!1735446)))

(declare-fun c!445392 () Bool)

(assert (=> d!796693 (= c!445392 (not (forall!6588 z!3597 lambda!100936)))))

(assert (=> d!796693 (= (lostCauseZipper!419 z!3597) lt!974365)))

(declare-fun Unit!45636 () Unit!45626)

(assert (=> b!2752561 (= e!1735446 Unit!45636)))

(declare-fun lt!974362 () List!31963)

(assert (=> b!2752561 (= lt!974362 call!177900)))

(declare-fun lt!974364 () Unit!45626)

(declare-fun lemmaForallThenNotExists!72 (List!31963 Int) Unit!45626)

(assert (=> b!2752561 (= lt!974364 (lemmaForallThenNotExists!72 lt!974362 lambda!100936))))

(assert (=> b!2752561 (not call!177899)))

(declare-fun lt!974359 () Unit!45626)

(assert (=> b!2752561 (= lt!974359 lt!974364)))

(declare-fun bm!177894 () Bool)

(declare-fun exists!950 (List!31963 Int) Bool)

(assert (=> bm!177894 (= call!177899 (exists!950 (ite c!445392 lt!974363 lt!974362) (ite c!445392 lambda!100937 lambda!100938)))))

(assert (= (and d!796693 c!445392) b!2752560))

(assert (= (and d!796693 (not c!445392)) b!2752561))

(assert (= (or b!2752560 b!2752561) bm!177894))

(assert (= (or b!2752560 b!2752561) bm!177895))

(declare-fun m!3167659 () Bool)

(assert (=> b!2752560 m!3167659))

(declare-fun m!3167661 () Bool)

(assert (=> bm!177895 m!3167661))

(declare-fun m!3167663 () Bool)

(assert (=> b!2752561 m!3167663))

(declare-fun m!3167665 () Bool)

(assert (=> bm!177894 m!3167665))

(declare-fun m!3167667 () Bool)

(assert (=> d!796693 m!3167667))

(assert (=> d!796693 m!3167667))

(declare-fun m!3167669 () Bool)

(assert (=> d!796693 m!3167669))

(declare-fun m!3167671 () Bool)

(assert (=> d!796693 m!3167671))

(assert (=> d!796693 m!3167671))

(assert (=> b!2752511 d!796693))

(declare-fun d!796695 () Bool)

(declare-fun list!12037 (Conc!9935) List!31959)

(assert (=> d!796695 (= (list!12036 input!5495) (list!12037 (c!445361 input!5495)))))

(declare-fun bs!490459 () Bool)

(assert (= bs!490459 d!796695))

(declare-fun m!3167673 () Bool)

(assert (=> bs!490459 m!3167673))

(assert (=> b!2752511 d!796695))

(assert (=> b!2752511 d!796683))

(declare-fun d!796697 () Bool)

(declare-fun lt!974368 () Int)

(assert (=> d!796697 (= lt!974368 (size!24624 (list!12036 input!5495)))))

(declare-fun size!24626 (Conc!9935) Int)

(assert (=> d!796697 (= lt!974368 (size!24626 (c!445361 input!5495)))))

(assert (=> d!796697 (= (size!24625 input!5495) lt!974368)))

(declare-fun bs!490460 () Bool)

(assert (= bs!490460 d!796697))

(assert (=> bs!490460 m!3167571))

(assert (=> bs!490460 m!3167571))

(declare-fun m!3167675 () Bool)

(assert (=> bs!490460 m!3167675))

(declare-fun m!3167677 () Bool)

(assert (=> bs!490460 m!3167677))

(assert (=> b!2752511 d!796697))

(declare-fun b!2752570 () Bool)

(declare-fun e!1735451 () List!31959)

(assert (=> b!2752570 (= e!1735451 lt!974166)))

(declare-fun b!2752573 () Bool)

(declare-fun e!1735452 () Bool)

(declare-fun lt!974371 () List!31959)

(assert (=> b!2752573 (= e!1735452 (or (not (= lt!974166 Nil!31859)) (= lt!974371 Nil!31859)))))

(declare-fun b!2752572 () Bool)

(declare-fun res!1153898 () Bool)

(assert (=> b!2752572 (=> (not res!1153898) (not e!1735452))))

(assert (=> b!2752572 (= res!1153898 (= (size!24624 lt!974371) (+ (size!24624 Nil!31859) (size!24624 lt!974166))))))

(declare-fun d!796699 () Bool)

(assert (=> d!796699 e!1735452))

(declare-fun res!1153899 () Bool)

(assert (=> d!796699 (=> (not res!1153899) (not e!1735452))))

(declare-fun content!4487 (List!31959) (InoxSet C!16264))

(assert (=> d!796699 (= res!1153899 (= (content!4487 lt!974371) ((_ map or) (content!4487 Nil!31859) (content!4487 lt!974166))))))

(assert (=> d!796699 (= lt!974371 e!1735451)))

(declare-fun c!445395 () Bool)

(assert (=> d!796699 (= c!445395 ((_ is Nil!31859) Nil!31859))))

(assert (=> d!796699 (= (++!7889 Nil!31859 lt!974166) lt!974371)))

(declare-fun b!2752571 () Bool)

(assert (=> b!2752571 (= e!1735451 (Cons!31859 (h!37279 Nil!31859) (++!7889 (t!228063 Nil!31859) lt!974166)))))

(assert (= (and d!796699 c!445395) b!2752570))

(assert (= (and d!796699 (not c!445395)) b!2752571))

(assert (= (and d!796699 res!1153899) b!2752572))

(assert (= (and b!2752572 res!1153898) b!2752573))

(declare-fun m!3167679 () Bool)

(assert (=> b!2752572 m!3167679))

(assert (=> b!2752572 m!3167519))

(assert (=> b!2752572 m!3167521))

(declare-fun m!3167681 () Bool)

(assert (=> d!796699 m!3167681))

(declare-fun m!3167683 () Bool)

(assert (=> d!796699 m!3167683))

(declare-fun m!3167685 () Bool)

(assert (=> d!796699 m!3167685))

(declare-fun m!3167687 () Bool)

(assert (=> b!2752571 m!3167687))

(assert (=> b!2752511 d!796699))

(declare-fun b!2752584 () Bool)

(declare-fun e!1735459 () Bool)

(assert (=> b!2752584 (= e!1735459 (isPrefix!2529 (tail!4363 Nil!31859) (tail!4363 lt!974170)))))

(declare-fun b!2752582 () Bool)

(declare-fun e!1735460 () Bool)

(assert (=> b!2752582 (= e!1735460 e!1735459)))

(declare-fun res!1153910 () Bool)

(assert (=> b!2752582 (=> (not res!1153910) (not e!1735459))))

(assert (=> b!2752582 (= res!1153910 (not ((_ is Nil!31859) lt!974170)))))

(declare-fun b!2752585 () Bool)

(declare-fun e!1735461 () Bool)

(assert (=> b!2752585 (= e!1735461 (>= (size!24624 lt!974170) (size!24624 Nil!31859)))))

(declare-fun b!2752583 () Bool)

(declare-fun res!1153908 () Bool)

(assert (=> b!2752583 (=> (not res!1153908) (not e!1735459))))

(assert (=> b!2752583 (= res!1153908 (= (head!6125 Nil!31859) (head!6125 lt!974170)))))

(declare-fun d!796701 () Bool)

(assert (=> d!796701 e!1735461))

(declare-fun res!1153911 () Bool)

(assert (=> d!796701 (=> res!1153911 e!1735461)))

(declare-fun lt!974374 () Bool)

(assert (=> d!796701 (= res!1153911 (not lt!974374))))

(assert (=> d!796701 (= lt!974374 e!1735460)))

(declare-fun res!1153909 () Bool)

(assert (=> d!796701 (=> res!1153909 e!1735460)))

(assert (=> d!796701 (= res!1153909 ((_ is Nil!31859) Nil!31859))))

(assert (=> d!796701 (= (isPrefix!2529 Nil!31859 lt!974170) lt!974374)))

(assert (= (and d!796701 (not res!1153909)) b!2752582))

(assert (= (and b!2752582 res!1153910) b!2752583))

(assert (= (and b!2752583 res!1153908) b!2752584))

(assert (= (and d!796701 (not res!1153911)) b!2752585))

(declare-fun m!3167689 () Bool)

(assert (=> b!2752584 m!3167689))

(declare-fun m!3167691 () Bool)

(assert (=> b!2752584 m!3167691))

(assert (=> b!2752584 m!3167689))

(assert (=> b!2752584 m!3167691))

(declare-fun m!3167693 () Bool)

(assert (=> b!2752584 m!3167693))

(declare-fun m!3167695 () Bool)

(assert (=> b!2752585 m!3167695))

(assert (=> b!2752585 m!3167519))

(declare-fun m!3167697 () Bool)

(assert (=> b!2752583 m!3167697))

(declare-fun m!3167699 () Bool)

(assert (=> b!2752583 m!3167699))

(assert (=> b!2752511 d!796701))

(declare-fun d!796703 () Bool)

(declare-fun e!1735464 () Bool)

(assert (=> d!796703 e!1735464))

(declare-fun res!1153916 () Bool)

(assert (=> d!796703 (=> (not res!1153916) (not e!1735464))))

(declare-fun lt!974377 () tuple3!4618)

(assert (=> d!796703 (= res!1153916 (valid!2883 (_2!18706 lt!974377)))))

(declare-fun choose!16106 (CacheUp!2326 CacheDown!2446 (InoxSet Context!4542) List!31959 Int List!31959 BalanceConc!19484 Int) tuple3!4618)

(assert (=> d!796703 (= lt!974377 (choose!16106 (_2!18706 lt!974201) (_3!2779 lt!974201) z!3597 Nil!31859 0 lt!974166 input!5495 lt!974163))))

(assert (=> d!796703 (= (++!7889 Nil!31859 lt!974166) (list!12036 input!5495))))

(assert (=> d!796703 (= (findLongestMatchInnerZipperFastMem!9 (_2!18706 lt!974201) (_3!2779 lt!974201) z!3597 Nil!31859 0 lt!974166 input!5495 lt!974163) lt!974377)))

(declare-fun b!2752590 () Bool)

(declare-fun res!1153917 () Bool)

(assert (=> b!2752590 (=> (not res!1153917) (not e!1735464))))

(assert (=> b!2752590 (= res!1153917 (valid!2882 (_3!2779 lt!974377)))))

(declare-fun b!2752591 () Bool)

(assert (=> b!2752591 (= e!1735464 (= (_1!18706 lt!974377) (findLongestMatchInnerZipperFast!11 z!3597 Nil!31859 0 lt!974166 input!5495 lt!974163)))))

(assert (= (and d!796703 res!1153916) b!2752590))

(assert (= (and b!2752590 res!1153917) b!2752591))

(declare-fun m!3167701 () Bool)

(assert (=> d!796703 m!3167701))

(declare-fun m!3167703 () Bool)

(assert (=> d!796703 m!3167703))

(assert (=> d!796703 m!3167581))

(assert (=> d!796703 m!3167571))

(declare-fun m!3167705 () Bool)

(assert (=> b!2752590 m!3167705))

(assert (=> b!2752591 m!3167469))

(assert (=> b!2752511 d!796703))

(declare-fun d!796705 () Bool)

(assert (=> d!796705 (= lt!974166 lt!974211)))

(declare-fun lt!974380 () Unit!45626)

(declare-fun choose!16107 (List!31959 List!31959 List!31959 List!31959 List!31959) Unit!45626)

(assert (=> d!796705 (= lt!974380 (choose!16107 Nil!31859 lt!974166 Nil!31859 lt!974211 lt!974166))))

(assert (=> d!796705 (isPrefix!2529 Nil!31859 lt!974166)))

(assert (=> d!796705 (= (lemmaSamePrefixThenSameSuffix!1117 Nil!31859 lt!974166 Nil!31859 lt!974211 lt!974166) lt!974380)))

(declare-fun bs!490461 () Bool)

(assert (= bs!490461 d!796705))

(declare-fun m!3167707 () Bool)

(assert (=> bs!490461 m!3167707))

(declare-fun m!3167709 () Bool)

(assert (=> bs!490461 m!3167709))

(assert (=> b!2752511 d!796705))

(declare-fun d!796707 () Bool)

(declare-fun lt!974383 () List!31959)

(assert (=> d!796707 (= (++!7889 Nil!31859 lt!974383) lt!974166)))

(declare-fun e!1735467 () List!31959)

(assert (=> d!796707 (= lt!974383 e!1735467)))

(declare-fun c!445398 () Bool)

(assert (=> d!796707 (= c!445398 ((_ is Cons!31859) Nil!31859))))

(assert (=> d!796707 (>= (size!24624 lt!974166) (size!24624 Nil!31859))))

(assert (=> d!796707 (= (getSuffix!1215 lt!974166 Nil!31859) lt!974383)))

(declare-fun b!2752596 () Bool)

(assert (=> b!2752596 (= e!1735467 (getSuffix!1215 (tail!4363 lt!974166) (t!228063 Nil!31859)))))

(declare-fun b!2752597 () Bool)

(assert (=> b!2752597 (= e!1735467 lt!974166)))

(assert (= (and d!796707 c!445398) b!2752596))

(assert (= (and d!796707 (not c!445398)) b!2752597))

(declare-fun m!3167711 () Bool)

(assert (=> d!796707 m!3167711))

(assert (=> d!796707 m!3167521))

(assert (=> d!796707 m!3167519))

(assert (=> b!2752596 m!3167515))

(assert (=> b!2752596 m!3167515))

(declare-fun m!3167713 () Bool)

(assert (=> b!2752596 m!3167713))

(assert (=> b!2752511 d!796707))

(declare-fun d!796709 () Bool)

(assert (=> d!796709 (= (valid!2883 (_2!18706 lt!974201)) (validCacheMapUp!351 (cache!3763 (_2!18706 lt!974201))))))

(declare-fun bs!490462 () Bool)

(assert (= bs!490462 d!796709))

(declare-fun m!3167715 () Bool)

(assert (=> bs!490462 m!3167715))

(assert (=> b!2752511 d!796709))

(declare-fun d!796711 () Bool)

(declare-fun e!1735468 () Bool)

(assert (=> d!796711 e!1735468))

(declare-fun res!1153918 () Bool)

(assert (=> d!796711 (=> (not res!1153918) (not e!1735468))))

(declare-fun lt!974384 () tuple3!4618)

(assert (=> d!796711 (= res!1153918 (valid!2883 (_2!18706 lt!974384)))))

(assert (=> d!796711 (= lt!974384 (choose!16106 cacheUp!820 cacheDown!939 z!3597 Nil!31859 0 lt!974166 input!5495 lt!974163))))

(assert (=> d!796711 (= (++!7889 Nil!31859 lt!974166) (list!12036 input!5495))))

(assert (=> d!796711 (= (findLongestMatchInnerZipperFastMem!9 cacheUp!820 cacheDown!939 z!3597 Nil!31859 0 lt!974166 input!5495 lt!974163) lt!974384)))

(declare-fun b!2752598 () Bool)

(declare-fun res!1153919 () Bool)

(assert (=> b!2752598 (=> (not res!1153919) (not e!1735468))))

(assert (=> b!2752598 (= res!1153919 (valid!2882 (_3!2779 lt!974384)))))

(declare-fun b!2752599 () Bool)

(assert (=> b!2752599 (= e!1735468 (= (_1!18706 lt!974384) (findLongestMatchInnerZipperFast!11 z!3597 Nil!31859 0 lt!974166 input!5495 lt!974163)))))

(assert (= (and d!796711 res!1153918) b!2752598))

(assert (= (and b!2752598 res!1153919) b!2752599))

(declare-fun m!3167717 () Bool)

(assert (=> d!796711 m!3167717))

(declare-fun m!3167719 () Bool)

(assert (=> d!796711 m!3167719))

(assert (=> d!796711 m!3167581))

(assert (=> d!796711 m!3167571))

(declare-fun m!3167721 () Bool)

(assert (=> b!2752598 m!3167721))

(assert (=> b!2752599 m!3167469))

(assert (=> b!2752511 d!796711))

(declare-fun d!796713 () Bool)

(declare-fun lambda!100941 () Int)

(declare-fun forall!6589 (List!31960 Int) Bool)

(assert (=> d!796713 (= (inv!43260 setElem!22008) (forall!6589 (exprs!2771 setElem!22008) lambda!100941))))

(declare-fun bs!490463 () Bool)

(assert (= bs!490463 d!796713))

(declare-fun m!3167723 () Bool)

(assert (=> bs!490463 m!3167723))

(assert (=> setNonEmpty!22008 d!796713))

(declare-fun d!796715 () Bool)

(assert (=> d!796715 (= lt!974166 Nil!31859)))

(declare-fun lt!974387 () Unit!45626)

(declare-fun choose!16108 (List!31959 List!31959 List!31959) Unit!45626)

(assert (=> d!796715 (= lt!974387 (choose!16108 lt!974166 Nil!31859 lt!974166))))

(assert (=> d!796715 (isPrefix!2529 lt!974166 lt!974166)))

(assert (=> d!796715 (= (lemmaIsPrefixSameLengthThenSameList!436 lt!974166 Nil!31859 lt!974166) lt!974387)))

(declare-fun bs!490464 () Bool)

(assert (= bs!490464 d!796715))

(declare-fun m!3167725 () Bool)

(assert (=> bs!490464 m!3167725))

(assert (=> bs!490464 m!3167471))

(assert (=> bm!177846 d!796715))

(declare-fun b!2752602 () Bool)

(declare-fun e!1735469 () Bool)

(assert (=> b!2752602 (= e!1735469 (isPrefix!2529 (tail!4363 (++!7889 Nil!31859 (Cons!31859 (head!6125 lt!974211) Nil!31859))) (tail!4363 lt!974166)))))

(declare-fun b!2752600 () Bool)

(declare-fun e!1735470 () Bool)

(assert (=> b!2752600 (= e!1735470 e!1735469)))

(declare-fun res!1153922 () Bool)

(assert (=> b!2752600 (=> (not res!1153922) (not e!1735469))))

(assert (=> b!2752600 (= res!1153922 (not ((_ is Nil!31859) lt!974166)))))

(declare-fun b!2752603 () Bool)

(declare-fun e!1735471 () Bool)

(assert (=> b!2752603 (= e!1735471 (>= (size!24624 lt!974166) (size!24624 (++!7889 Nil!31859 (Cons!31859 (head!6125 lt!974211) Nil!31859)))))))

(declare-fun b!2752601 () Bool)

(declare-fun res!1153920 () Bool)

(assert (=> b!2752601 (=> (not res!1153920) (not e!1735469))))

(assert (=> b!2752601 (= res!1153920 (= (head!6125 (++!7889 Nil!31859 (Cons!31859 (head!6125 lt!974211) Nil!31859))) (head!6125 lt!974166)))))

(declare-fun d!796717 () Bool)

(assert (=> d!796717 e!1735471))

(declare-fun res!1153923 () Bool)

(assert (=> d!796717 (=> res!1153923 e!1735471)))

(declare-fun lt!974388 () Bool)

(assert (=> d!796717 (= res!1153923 (not lt!974388))))

(assert (=> d!796717 (= lt!974388 e!1735470)))

(declare-fun res!1153921 () Bool)

(assert (=> d!796717 (=> res!1153921 e!1735470)))

(assert (=> d!796717 (= res!1153921 ((_ is Nil!31859) (++!7889 Nil!31859 (Cons!31859 (head!6125 lt!974211) Nil!31859))))))

(assert (=> d!796717 (= (isPrefix!2529 (++!7889 Nil!31859 (Cons!31859 (head!6125 lt!974211) Nil!31859)) lt!974166) lt!974388)))

(assert (= (and d!796717 (not res!1153921)) b!2752600))

(assert (= (and b!2752600 res!1153922) b!2752601))

(assert (= (and b!2752601 res!1153920) b!2752602))

(assert (= (and d!796717 (not res!1153923)) b!2752603))

(assert (=> b!2752602 m!3167509))

(declare-fun m!3167727 () Bool)

(assert (=> b!2752602 m!3167727))

(assert (=> b!2752602 m!3167515))

(assert (=> b!2752602 m!3167727))

(assert (=> b!2752602 m!3167515))

(declare-fun m!3167729 () Bool)

(assert (=> b!2752602 m!3167729))

(assert (=> b!2752603 m!3167521))

(assert (=> b!2752603 m!3167509))

(declare-fun m!3167731 () Bool)

(assert (=> b!2752603 m!3167731))

(assert (=> b!2752601 m!3167509))

(declare-fun m!3167733 () Bool)

(assert (=> b!2752601 m!3167733))

(declare-fun m!3167735 () Bool)

(assert (=> b!2752601 m!3167735))

(assert (=> b!2752513 d!796717))

(declare-fun d!796719 () Bool)

(assert (=> d!796719 (= (head!6125 lt!974211) (h!37279 lt!974211))))

(assert (=> b!2752513 d!796719))

(declare-fun d!796721 () Bool)

(assert (=> d!796721 (<= (size!24624 Nil!31859) (size!24624 lt!974166))))

(declare-fun lt!974391 () Unit!45626)

(declare-fun choose!16109 (List!31959 List!31959) Unit!45626)

(assert (=> d!796721 (= lt!974391 (choose!16109 Nil!31859 lt!974166))))

(assert (=> d!796721 (isPrefix!2529 Nil!31859 lt!974166)))

(assert (=> d!796721 (= (lemmaIsPrefixThenSmallerEqSize!237 Nil!31859 lt!974166) lt!974391)))

(declare-fun bs!490465 () Bool)

(assert (= bs!490465 d!796721))

(assert (=> bs!490465 m!3167519))

(assert (=> bs!490465 m!3167521))

(declare-fun m!3167737 () Bool)

(assert (=> bs!490465 m!3167737))

(assert (=> bs!490465 m!3167709))

(assert (=> b!2752513 d!796721))

(declare-fun d!796723 () Bool)

(declare-fun lt!974394 () C!16264)

(assert (=> d!796723 (= lt!974394 (apply!7446 (list!12036 input!5495) 0))))

(declare-fun apply!7447 (Conc!9935 Int) C!16264)

(assert (=> d!796723 (= lt!974394 (apply!7447 (c!445361 input!5495) 0))))

(declare-fun e!1735474 () Bool)

(assert (=> d!796723 e!1735474))

(declare-fun res!1153926 () Bool)

(assert (=> d!796723 (=> (not res!1153926) (not e!1735474))))

(assert (=> d!796723 (= res!1153926 (<= 0 0))))

(assert (=> d!796723 (= (apply!7445 input!5495 0) lt!974394)))

(declare-fun b!2752606 () Bool)

(assert (=> b!2752606 (= e!1735474 (< 0 (size!24625 input!5495)))))

(assert (= (and d!796723 res!1153926) b!2752606))

(assert (=> d!796723 m!3167571))

(assert (=> d!796723 m!3167571))

(declare-fun m!3167739 () Bool)

(assert (=> d!796723 m!3167739))

(declare-fun m!3167741 () Bool)

(assert (=> d!796723 m!3167741))

(assert (=> b!2752606 m!3167573))

(assert (=> b!2752513 d!796723))

(declare-fun d!796725 () Bool)

(assert (=> d!796725 (= (tail!4363 lt!974166) (t!228063 lt!974166))))

(assert (=> b!2752513 d!796725))

(declare-fun d!796727 () Bool)

(declare-fun e!1735477 () Bool)

(assert (=> d!796727 e!1735477))

(declare-fun res!1153932 () Bool)

(assert (=> d!796727 (=> (not res!1153932) (not e!1735477))))

(declare-fun lt!974399 () tuple2!31854)

(declare-fun isBalanced!3024 (Conc!9935) Bool)

(assert (=> d!796727 (= res!1153932 (isBalanced!3024 (c!445361 (_1!18709 lt!974399))))))

(declare-datatypes ((tuple2!31858 0))(
  ( (tuple2!31859 (_1!18711 Conc!9935) (_2!18711 Conc!9935)) )
))
(declare-fun lt!974400 () tuple2!31858)

(assert (=> d!796727 (= lt!974399 (tuple2!31855 (BalanceConc!19485 (_1!18711 lt!974400)) (BalanceConc!19485 (_2!18711 lt!974400))))))

(declare-fun splitAt!82 (Conc!9935 Int) tuple2!31858)

(assert (=> d!796727 (= lt!974400 (splitAt!82 (c!445361 input!5495) 0))))

(assert (=> d!796727 (isBalanced!3024 (c!445361 input!5495))))

(assert (=> d!796727 (= (splitAt!81 input!5495 0) lt!974399)))

(declare-fun b!2752611 () Bool)

(declare-fun res!1153931 () Bool)

(assert (=> b!2752611 (=> (not res!1153931) (not e!1735477))))

(assert (=> b!2752611 (= res!1153931 (isBalanced!3024 (c!445361 (_2!18709 lt!974399))))))

(declare-fun b!2752612 () Bool)

(declare-fun splitAtIndex!40 (List!31959 Int) tuple2!31856)

(assert (=> b!2752612 (= e!1735477 (= (tuple2!31857 (list!12036 (_1!18709 lt!974399)) (list!12036 (_2!18709 lt!974399))) (splitAtIndex!40 (list!12036 input!5495) 0)))))

(assert (= (and d!796727 res!1153932) b!2752611))

(assert (= (and b!2752611 res!1153931) b!2752612))

(declare-fun m!3167743 () Bool)

(assert (=> d!796727 m!3167743))

(declare-fun m!3167745 () Bool)

(assert (=> d!796727 m!3167745))

(declare-fun m!3167747 () Bool)

(assert (=> d!796727 m!3167747))

(declare-fun m!3167749 () Bool)

(assert (=> b!2752611 m!3167749))

(declare-fun m!3167751 () Bool)

(assert (=> b!2752612 m!3167751))

(declare-fun m!3167753 () Bool)

(assert (=> b!2752612 m!3167753))

(assert (=> b!2752612 m!3167571))

(assert (=> b!2752612 m!3167571))

(declare-fun m!3167755 () Bool)

(assert (=> b!2752612 m!3167755))

(assert (=> b!2752513 d!796727))

(declare-fun d!796729 () Bool)

(assert (=> d!796729 (= (head!6125 (drop!1684 lt!974166 0)) (h!37279 (drop!1684 lt!974166 0)))))

(assert (=> b!2752513 d!796729))

(declare-fun d!796731 () Bool)

(declare-fun lt!974403 () C!16264)

(declare-fun contains!5981 (List!31959 C!16264) Bool)

(assert (=> d!796731 (contains!5981 lt!974166 lt!974403)))

(declare-fun e!1735483 () C!16264)

(assert (=> d!796731 (= lt!974403 e!1735483)))

(declare-fun c!445401 () Bool)

(assert (=> d!796731 (= c!445401 (= 0 0))))

(declare-fun e!1735482 () Bool)

(assert (=> d!796731 e!1735482))

(declare-fun res!1153935 () Bool)

(assert (=> d!796731 (=> (not res!1153935) (not e!1735482))))

(assert (=> d!796731 (= res!1153935 (<= 0 0))))

(assert (=> d!796731 (= (apply!7446 lt!974166 0) lt!974403)))

(declare-fun b!2752619 () Bool)

(assert (=> b!2752619 (= e!1735482 (< 0 (size!24624 lt!974166)))))

(declare-fun b!2752620 () Bool)

(assert (=> b!2752620 (= e!1735483 (head!6125 lt!974166))))

(declare-fun b!2752621 () Bool)

(assert (=> b!2752621 (= e!1735483 (apply!7446 (tail!4363 lt!974166) (- 0 1)))))

(assert (= (and d!796731 res!1153935) b!2752619))

(assert (= (and d!796731 c!445401) b!2752620))

(assert (= (and d!796731 (not c!445401)) b!2752621))

(declare-fun m!3167757 () Bool)

(assert (=> d!796731 m!3167757))

(assert (=> b!2752619 m!3167521))

(assert (=> b!2752620 m!3167735))

(assert (=> b!2752621 m!3167515))

(assert (=> b!2752621 m!3167515))

(declare-fun m!3167759 () Bool)

(assert (=> b!2752621 m!3167759))

(assert (=> b!2752513 d!796731))

(declare-fun d!796733 () Bool)

(assert (=> d!796733 (= (head!6125 (drop!1684 lt!974166 0)) (apply!7446 lt!974166 0))))

(declare-fun lt!974406 () Unit!45626)

(declare-fun choose!16110 (List!31959 Int) Unit!45626)

(assert (=> d!796733 (= lt!974406 (choose!16110 lt!974166 0))))

(declare-fun e!1735486 () Bool)

(assert (=> d!796733 e!1735486))

(declare-fun res!1153938 () Bool)

(assert (=> d!796733 (=> (not res!1153938) (not e!1735486))))

(assert (=> d!796733 (= res!1153938 (>= 0 0))))

(assert (=> d!796733 (= (lemmaDropApply!890 lt!974166 0) lt!974406)))

(declare-fun b!2752624 () Bool)

(assert (=> b!2752624 (= e!1735486 (< 0 (size!24624 lt!974166)))))

(assert (= (and d!796733 res!1153938) b!2752624))

(assert (=> d!796733 m!3167511))

(assert (=> d!796733 m!3167511))

(assert (=> d!796733 m!3167513))

(assert (=> d!796733 m!3167523))

(declare-fun m!3167761 () Bool)

(assert (=> d!796733 m!3167761))

(assert (=> b!2752624 m!3167521))

(assert (=> b!2752513 d!796733))

(declare-fun d!796735 () Bool)

(declare-fun lt!974409 () Int)

(assert (=> d!796735 (>= lt!974409 0)))

(declare-fun e!1735489 () Int)

(assert (=> d!796735 (= lt!974409 e!1735489)))

(declare-fun c!445404 () Bool)

(assert (=> d!796735 (= c!445404 ((_ is Nil!31859) lt!974166))))

(assert (=> d!796735 (= (size!24624 lt!974166) lt!974409)))

(declare-fun b!2752629 () Bool)

(assert (=> b!2752629 (= e!1735489 0)))

(declare-fun b!2752630 () Bool)

(assert (=> b!2752630 (= e!1735489 (+ 1 (size!24624 (t!228063 lt!974166))))))

(assert (= (and d!796735 c!445404) b!2752629))

(assert (= (and d!796735 (not c!445404)) b!2752630))

(declare-fun m!3167763 () Bool)

(assert (=> b!2752630 m!3167763))

(assert (=> b!2752513 d!796735))

(declare-fun d!796737 () Bool)

(assert (=> d!796737 (isPrefix!2529 (++!7889 Nil!31859 (Cons!31859 (head!6125 (getSuffix!1215 lt!974166 Nil!31859)) Nil!31859)) lt!974166)))

(declare-fun lt!974412 () Unit!45626)

(declare-fun choose!16111 (List!31959 List!31959) Unit!45626)

(assert (=> d!796737 (= lt!974412 (choose!16111 Nil!31859 lt!974166))))

(assert (=> d!796737 (isPrefix!2529 Nil!31859 lt!974166)))

(assert (=> d!796737 (= (lemmaAddHeadSuffixToPrefixStillPrefix!434 Nil!31859 lt!974166) lt!974412)))

(declare-fun bs!490466 () Bool)

(assert (= bs!490466 d!796737))

(declare-fun m!3167765 () Bool)

(assert (=> bs!490466 m!3167765))

(assert (=> bs!490466 m!3167765))

(declare-fun m!3167767 () Bool)

(assert (=> bs!490466 m!3167767))

(assert (=> bs!490466 m!3167589))

(declare-fun m!3167769 () Bool)

(assert (=> bs!490466 m!3167769))

(declare-fun m!3167771 () Bool)

(assert (=> bs!490466 m!3167771))

(assert (=> bs!490466 m!3167589))

(assert (=> bs!490466 m!3167709))

(assert (=> b!2752513 d!796737))

(declare-fun d!796739 () Bool)

(assert (=> d!796739 (= (++!7889 (++!7889 Nil!31859 (Cons!31859 lt!974190 Nil!31859)) lt!974195) lt!974166)))

(declare-fun lt!974415 () Unit!45626)

(declare-fun choose!16112 (List!31959 C!16264 List!31959 List!31959) Unit!45626)

(assert (=> d!796739 (= lt!974415 (choose!16112 Nil!31859 lt!974190 lt!974195 lt!974166))))

(assert (=> d!796739 (= (++!7889 Nil!31859 (Cons!31859 lt!974190 lt!974195)) lt!974166)))

(assert (=> d!796739 (= (lemmaMoveElementToOtherListKeepsConcatEq!846 Nil!31859 lt!974190 lt!974195 lt!974166) lt!974415)))

(declare-fun bs!490467 () Bool)

(assert (= bs!490467 d!796739))

(assert (=> bs!490467 m!3167507))

(assert (=> bs!490467 m!3167507))

(declare-fun m!3167773 () Bool)

(assert (=> bs!490467 m!3167773))

(declare-fun m!3167775 () Bool)

(assert (=> bs!490467 m!3167775))

(declare-fun m!3167777 () Bool)

(assert (=> bs!490467 m!3167777))

(assert (=> b!2752513 d!796739))

(declare-fun b!2752631 () Bool)

(declare-fun e!1735490 () List!31959)

(assert (=> b!2752631 (= e!1735490 lt!974195)))

(declare-fun e!1735491 () Bool)

(declare-fun b!2752634 () Bool)

(declare-fun lt!974416 () List!31959)

(assert (=> b!2752634 (= e!1735491 (or (not (= lt!974195 Nil!31859)) (= lt!974416 lt!974206)))))

(declare-fun b!2752633 () Bool)

(declare-fun res!1153939 () Bool)

(assert (=> b!2752633 (=> (not res!1153939) (not e!1735491))))

(assert (=> b!2752633 (= res!1153939 (= (size!24624 lt!974416) (+ (size!24624 lt!974206) (size!24624 lt!974195))))))

(declare-fun d!796741 () Bool)

(assert (=> d!796741 e!1735491))

(declare-fun res!1153940 () Bool)

(assert (=> d!796741 (=> (not res!1153940) (not e!1735491))))

(assert (=> d!796741 (= res!1153940 (= (content!4487 lt!974416) ((_ map or) (content!4487 lt!974206) (content!4487 lt!974195))))))

(assert (=> d!796741 (= lt!974416 e!1735490)))

(declare-fun c!445405 () Bool)

(assert (=> d!796741 (= c!445405 ((_ is Nil!31859) lt!974206))))

(assert (=> d!796741 (= (++!7889 lt!974206 lt!974195) lt!974416)))

(declare-fun b!2752632 () Bool)

(assert (=> b!2752632 (= e!1735490 (Cons!31859 (h!37279 lt!974206) (++!7889 (t!228063 lt!974206) lt!974195)))))

(assert (= (and d!796741 c!445405) b!2752631))

(assert (= (and d!796741 (not c!445405)) b!2752632))

(assert (= (and d!796741 res!1153940) b!2752633))

(assert (= (and b!2752633 res!1153939) b!2752634))

(declare-fun m!3167779 () Bool)

(assert (=> b!2752633 m!3167779))

(declare-fun m!3167781 () Bool)

(assert (=> b!2752633 m!3167781))

(declare-fun m!3167783 () Bool)

(assert (=> b!2752633 m!3167783))

(declare-fun m!3167785 () Bool)

(assert (=> d!796741 m!3167785))

(declare-fun m!3167787 () Bool)

(assert (=> d!796741 m!3167787))

(declare-fun m!3167789 () Bool)

(assert (=> d!796741 m!3167789))

(declare-fun m!3167791 () Bool)

(assert (=> b!2752632 m!3167791))

(assert (=> b!2752513 d!796741))

(declare-fun d!796743 () Bool)

(assert (=> d!796743 (= (list!12036 (_2!18709 lt!974182)) (list!12037 (c!445361 (_2!18709 lt!974182))))))

(declare-fun bs!490468 () Bool)

(assert (= bs!490468 d!796743))

(declare-fun m!3167793 () Bool)

(assert (=> bs!490468 m!3167793))

(assert (=> b!2752513 d!796743))

(declare-fun d!796745 () Bool)

(assert (=> d!796745 (and (= lt!974168 Nil!31859) (= lt!974208 lt!974166))))

(declare-fun lt!974419 () Unit!45626)

(declare-fun choose!16113 (List!31959 List!31959 List!31959 List!31959) Unit!45626)

(assert (=> d!796745 (= lt!974419 (choose!16113 lt!974168 lt!974208 Nil!31859 lt!974166))))

(assert (=> d!796745 (= (++!7889 lt!974168 lt!974208) (++!7889 Nil!31859 lt!974166))))

(assert (=> d!796745 (= (lemmaConcatSameAndSameSizesThenSameLists!316 lt!974168 lt!974208 Nil!31859 lt!974166) lt!974419)))

(declare-fun bs!490469 () Bool)

(assert (= bs!490469 d!796745))

(declare-fun m!3167795 () Bool)

(assert (=> bs!490469 m!3167795))

(declare-fun m!3167797 () Bool)

(assert (=> bs!490469 m!3167797))

(assert (=> bs!490469 m!3167581))

(assert (=> b!2752513 d!796745))

(declare-fun b!2752653 () Bool)

(declare-fun e!1735504 () List!31959)

(assert (=> b!2752653 (= e!1735504 (drop!1684 (t!228063 lt!974166) (- 0 1)))))

(declare-fun bm!177898 () Bool)

(declare-fun call!177903 () Int)

(assert (=> bm!177898 (= call!177903 (size!24624 lt!974166))))

(declare-fun d!796747 () Bool)

(declare-fun e!1735506 () Bool)

(assert (=> d!796747 e!1735506))

(declare-fun res!1153943 () Bool)

(assert (=> d!796747 (=> (not res!1153943) (not e!1735506))))

(declare-fun lt!974422 () List!31959)

(assert (=> d!796747 (= res!1153943 (= ((_ map implies) (content!4487 lt!974422) (content!4487 lt!974166)) ((as const (InoxSet C!16264)) true)))))

(declare-fun e!1735505 () List!31959)

(assert (=> d!796747 (= lt!974422 e!1735505)))

(declare-fun c!445415 () Bool)

(assert (=> d!796747 (= c!445415 ((_ is Nil!31859) lt!974166))))

(assert (=> d!796747 (= (drop!1684 lt!974166 0) lt!974422)))

(declare-fun b!2752654 () Bool)

(declare-fun e!1735503 () Int)

(assert (=> b!2752654 (= e!1735506 (= (size!24624 lt!974422) e!1735503))))

(declare-fun c!445414 () Bool)

(assert (=> b!2752654 (= c!445414 (<= 0 0))))

(declare-fun b!2752655 () Bool)

(assert (=> b!2752655 (= e!1735503 call!177903)))

(declare-fun b!2752656 () Bool)

(declare-fun e!1735502 () Int)

(assert (=> b!2752656 (= e!1735502 0)))

(declare-fun b!2752657 () Bool)

(assert (=> b!2752657 (= e!1735502 (- call!177903 0))))

(declare-fun b!2752658 () Bool)

(assert (=> b!2752658 (= e!1735505 Nil!31859)))

(declare-fun b!2752659 () Bool)

(assert (=> b!2752659 (= e!1735503 e!1735502)))

(declare-fun c!445417 () Bool)

(assert (=> b!2752659 (= c!445417 (>= 0 call!177903))))

(declare-fun b!2752660 () Bool)

(assert (=> b!2752660 (= e!1735505 e!1735504)))

(declare-fun c!445416 () Bool)

(assert (=> b!2752660 (= c!445416 (<= 0 0))))

(declare-fun b!2752661 () Bool)

(assert (=> b!2752661 (= e!1735504 lt!974166)))

(assert (= (and d!796747 c!445415) b!2752658))

(assert (= (and d!796747 (not c!445415)) b!2752660))

(assert (= (and b!2752660 c!445416) b!2752661))

(assert (= (and b!2752660 (not c!445416)) b!2752653))

(assert (= (and d!796747 res!1153943) b!2752654))

(assert (= (and b!2752654 c!445414) b!2752655))

(assert (= (and b!2752654 (not c!445414)) b!2752659))

(assert (= (and b!2752659 c!445417) b!2752656))

(assert (= (and b!2752659 (not c!445417)) b!2752657))

(assert (= (or b!2752655 b!2752659 b!2752657) bm!177898))

(declare-fun m!3167799 () Bool)

(assert (=> b!2752653 m!3167799))

(assert (=> bm!177898 m!3167521))

(declare-fun m!3167801 () Bool)

(assert (=> d!796747 m!3167801))

(assert (=> d!796747 m!3167685))

(declare-fun m!3167803 () Bool)

(assert (=> b!2752654 m!3167803))

(assert (=> b!2752513 d!796747))

(declare-fun b!2752662 () Bool)

(declare-fun e!1735507 () List!31959)

(assert (=> b!2752662 (= e!1735507 (Cons!31859 lt!974190 Nil!31859))))

(declare-fun b!2752665 () Bool)

(declare-fun e!1735508 () Bool)

(declare-fun lt!974423 () List!31959)

(assert (=> b!2752665 (= e!1735508 (or (not (= (Cons!31859 lt!974190 Nil!31859) Nil!31859)) (= lt!974423 Nil!31859)))))

(declare-fun b!2752664 () Bool)

(declare-fun res!1153944 () Bool)

(assert (=> b!2752664 (=> (not res!1153944) (not e!1735508))))

(assert (=> b!2752664 (= res!1153944 (= (size!24624 lt!974423) (+ (size!24624 Nil!31859) (size!24624 (Cons!31859 lt!974190 Nil!31859)))))))

(declare-fun d!796749 () Bool)

(assert (=> d!796749 e!1735508))

(declare-fun res!1153945 () Bool)

(assert (=> d!796749 (=> (not res!1153945) (not e!1735508))))

(assert (=> d!796749 (= res!1153945 (= (content!4487 lt!974423) ((_ map or) (content!4487 Nil!31859) (content!4487 (Cons!31859 lt!974190 Nil!31859)))))))

(assert (=> d!796749 (= lt!974423 e!1735507)))

(declare-fun c!445418 () Bool)

(assert (=> d!796749 (= c!445418 ((_ is Nil!31859) Nil!31859))))

(assert (=> d!796749 (= (++!7889 Nil!31859 (Cons!31859 lt!974190 Nil!31859)) lt!974423)))

(declare-fun b!2752663 () Bool)

(assert (=> b!2752663 (= e!1735507 (Cons!31859 (h!37279 Nil!31859) (++!7889 (t!228063 Nil!31859) (Cons!31859 lt!974190 Nil!31859))))))

(assert (= (and d!796749 c!445418) b!2752662))

(assert (= (and d!796749 (not c!445418)) b!2752663))

(assert (= (and d!796749 res!1153945) b!2752664))

(assert (= (and b!2752664 res!1153944) b!2752665))

(declare-fun m!3167805 () Bool)

(assert (=> b!2752664 m!3167805))

(assert (=> b!2752664 m!3167519))

(declare-fun m!3167807 () Bool)

(assert (=> b!2752664 m!3167807))

(declare-fun m!3167809 () Bool)

(assert (=> d!796749 m!3167809))

(assert (=> d!796749 m!3167683))

(declare-fun m!3167811 () Bool)

(assert (=> d!796749 m!3167811))

(declare-fun m!3167813 () Bool)

(assert (=> b!2752663 m!3167813))

(assert (=> b!2752513 d!796749))

(declare-fun d!796751 () Bool)

(assert (=> d!796751 (= (list!12036 (_1!18709 lt!974182)) (list!12037 (c!445361 (_1!18709 lt!974182))))))

(declare-fun bs!490470 () Bool)

(assert (= bs!490470 d!796751))

(declare-fun m!3167815 () Bool)

(assert (=> bs!490470 m!3167815))

(assert (=> b!2752513 d!796751))

(declare-fun b!2752666 () Bool)

(declare-fun e!1735509 () List!31959)

(assert (=> b!2752666 (= e!1735509 (Cons!31859 (head!6125 lt!974211) Nil!31859))))

(declare-fun b!2752669 () Bool)

(declare-fun e!1735510 () Bool)

(declare-fun lt!974424 () List!31959)

(assert (=> b!2752669 (= e!1735510 (or (not (= (Cons!31859 (head!6125 lt!974211) Nil!31859) Nil!31859)) (= lt!974424 Nil!31859)))))

(declare-fun b!2752668 () Bool)

(declare-fun res!1153946 () Bool)

(assert (=> b!2752668 (=> (not res!1153946) (not e!1735510))))

(assert (=> b!2752668 (= res!1153946 (= (size!24624 lt!974424) (+ (size!24624 Nil!31859) (size!24624 (Cons!31859 (head!6125 lt!974211) Nil!31859)))))))

(declare-fun d!796753 () Bool)

(assert (=> d!796753 e!1735510))

(declare-fun res!1153947 () Bool)

(assert (=> d!796753 (=> (not res!1153947) (not e!1735510))))

(assert (=> d!796753 (= res!1153947 (= (content!4487 lt!974424) ((_ map or) (content!4487 Nil!31859) (content!4487 (Cons!31859 (head!6125 lt!974211) Nil!31859)))))))

(assert (=> d!796753 (= lt!974424 e!1735509)))

(declare-fun c!445419 () Bool)

(assert (=> d!796753 (= c!445419 ((_ is Nil!31859) Nil!31859))))

(assert (=> d!796753 (= (++!7889 Nil!31859 (Cons!31859 (head!6125 lt!974211) Nil!31859)) lt!974424)))

(declare-fun b!2752667 () Bool)

(assert (=> b!2752667 (= e!1735509 (Cons!31859 (h!37279 Nil!31859) (++!7889 (t!228063 Nil!31859) (Cons!31859 (head!6125 lt!974211) Nil!31859))))))

(assert (= (and d!796753 c!445419) b!2752666))

(assert (= (and d!796753 (not c!445419)) b!2752667))

(assert (= (and d!796753 res!1153947) b!2752668))

(assert (= (and b!2752668 res!1153946) b!2752669))

(declare-fun m!3167817 () Bool)

(assert (=> b!2752668 m!3167817))

(assert (=> b!2752668 m!3167519))

(declare-fun m!3167819 () Bool)

(assert (=> b!2752668 m!3167819))

(declare-fun m!3167821 () Bool)

(assert (=> d!796753 m!3167821))

(assert (=> d!796753 m!3167683))

(declare-fun m!3167823 () Bool)

(assert (=> d!796753 m!3167823))

(declare-fun m!3167825 () Bool)

(assert (=> b!2752667 m!3167825))

(assert (=> b!2752513 d!796753))

(declare-fun d!796755 () Bool)

(declare-fun lt!974425 () Int)

(assert (=> d!796755 (>= lt!974425 0)))

(declare-fun e!1735511 () Int)

(assert (=> d!796755 (= lt!974425 e!1735511)))

(declare-fun c!445420 () Bool)

(assert (=> d!796755 (= c!445420 ((_ is Nil!31859) Nil!31859))))

(assert (=> d!796755 (= (size!24624 Nil!31859) lt!974425)))

(declare-fun b!2752670 () Bool)

(assert (=> b!2752670 (= e!1735511 0)))

(declare-fun b!2752671 () Bool)

(assert (=> b!2752671 (= e!1735511 (+ 1 (size!24624 (t!228063 Nil!31859))))))

(assert (= (and d!796755 c!445420) b!2752670))

(assert (= (and d!796755 (not c!445420)) b!2752671))

(declare-fun m!3167827 () Bool)

(assert (=> b!2752671 m!3167827))

(assert (=> b!2752513 d!796755))

(declare-fun d!796757 () Bool)

(declare-fun validCacheMapDown!382 (MutableMap!3621) Bool)

(assert (=> d!796757 (= (valid!2882 cacheDown!939) (validCacheMapDown!382 (cache!3764 cacheDown!939)))))

(declare-fun bs!490471 () Bool)

(assert (= bs!490471 d!796757))

(declare-fun m!3167829 () Bool)

(assert (=> bs!490471 m!3167829))

(assert (=> b!2752485 d!796757))

(declare-fun d!796759 () Bool)

(assert (=> d!796759 (= (valid!2883 (ite c!445354 (_2!18706 lt!974188) (_2!18706 lt!974174))) (validCacheMapUp!351 (cache!3763 (ite c!445354 (_2!18706 lt!974188) (_2!18706 lt!974174)))))))

(declare-fun bs!490472 () Bool)

(assert (= bs!490472 d!796759))

(declare-fun m!3167831 () Bool)

(assert (=> bs!490472 m!3167831))

(assert (=> bm!177853 d!796759))

(declare-fun b!2752672 () Bool)

(declare-fun e!1735512 () List!31959)

(assert (=> b!2752672 (= e!1735512 (Cons!31859 lt!974192 Nil!31859))))

(declare-fun b!2752675 () Bool)

(declare-fun e!1735513 () Bool)

(declare-fun lt!974426 () List!31959)

(assert (=> b!2752675 (= e!1735513 (or (not (= (Cons!31859 lt!974192 Nil!31859) Nil!31859)) (= lt!974426 Nil!31859)))))

(declare-fun b!2752674 () Bool)

(declare-fun res!1153948 () Bool)

(assert (=> b!2752674 (=> (not res!1153948) (not e!1735513))))

(assert (=> b!2752674 (= res!1153948 (= (size!24624 lt!974426) (+ (size!24624 Nil!31859) (size!24624 (Cons!31859 lt!974192 Nil!31859)))))))

(declare-fun d!796761 () Bool)

(assert (=> d!796761 e!1735513))

(declare-fun res!1153949 () Bool)

(assert (=> d!796761 (=> (not res!1153949) (not e!1735513))))

(assert (=> d!796761 (= res!1153949 (= (content!4487 lt!974426) ((_ map or) (content!4487 Nil!31859) (content!4487 (Cons!31859 lt!974192 Nil!31859)))))))

(assert (=> d!796761 (= lt!974426 e!1735512)))

(declare-fun c!445421 () Bool)

(assert (=> d!796761 (= c!445421 ((_ is Nil!31859) Nil!31859))))

(assert (=> d!796761 (= (++!7889 Nil!31859 (Cons!31859 lt!974192 Nil!31859)) lt!974426)))

(declare-fun b!2752673 () Bool)

(assert (=> b!2752673 (= e!1735512 (Cons!31859 (h!37279 Nil!31859) (++!7889 (t!228063 Nil!31859) (Cons!31859 lt!974192 Nil!31859))))))

(assert (= (and d!796761 c!445421) b!2752672))

(assert (= (and d!796761 (not c!445421)) b!2752673))

(assert (= (and d!796761 res!1153949) b!2752674))

(assert (= (and b!2752674 res!1153948) b!2752675))

(declare-fun m!3167833 () Bool)

(assert (=> b!2752674 m!3167833))

(assert (=> b!2752674 m!3167519))

(declare-fun m!3167835 () Bool)

(assert (=> b!2752674 m!3167835))

(declare-fun m!3167837 () Bool)

(assert (=> d!796761 m!3167837))

(assert (=> d!796761 m!3167683))

(declare-fun m!3167839 () Bool)

(assert (=> d!796761 m!3167839))

(declare-fun m!3167841 () Bool)

(assert (=> b!2752673 m!3167841))

(assert (=> b!2752488 d!796761))

(assert (=> b!2752488 d!796717))

(declare-fun d!796763 () Bool)

(assert (=> d!796763 (= (list!12036 (_1!18709 lt!974164)) (list!12037 (c!445361 (_1!18709 lt!974164))))))

(declare-fun bs!490473 () Bool)

(assert (= bs!490473 d!796763))

(declare-fun m!3167843 () Bool)

(assert (=> bs!490473 m!3167843))

(assert (=> b!2752488 d!796763))

(assert (=> b!2752488 d!796721))

(assert (=> b!2752488 d!796725))

(assert (=> b!2752488 d!796747))

(assert (=> b!2752488 d!796729))

(assert (=> b!2752488 d!796733))

(assert (=> b!2752488 d!796719))

(declare-fun d!796765 () Bool)

(assert (=> d!796765 (and (= lt!974175 Nil!31859) (= lt!974160 lt!974166))))

(declare-fun lt!974427 () Unit!45626)

(assert (=> d!796765 (= lt!974427 (choose!16113 lt!974175 lt!974160 Nil!31859 lt!974166))))

(assert (=> d!796765 (= (++!7889 lt!974175 lt!974160) (++!7889 Nil!31859 lt!974166))))

(assert (=> d!796765 (= (lemmaConcatSameAndSameSizesThenSameLists!316 lt!974175 lt!974160 Nil!31859 lt!974166) lt!974427)))

(declare-fun bs!490474 () Bool)

(assert (= bs!490474 d!796765))

(declare-fun m!3167845 () Bool)

(assert (=> bs!490474 m!3167845))

(declare-fun m!3167847 () Bool)

(assert (=> bs!490474 m!3167847))

(assert (=> bs!490474 m!3167581))

(assert (=> b!2752488 d!796765))

(assert (=> b!2752488 d!796735))

(assert (=> b!2752488 d!796737))

(declare-fun d!796767 () Bool)

(assert (=> d!796767 (= (++!7889 (++!7889 Nil!31859 (Cons!31859 lt!974192 Nil!31859)) lt!974184) lt!974166)))

(declare-fun lt!974428 () Unit!45626)

(assert (=> d!796767 (= lt!974428 (choose!16112 Nil!31859 lt!974192 lt!974184 lt!974166))))

(assert (=> d!796767 (= (++!7889 Nil!31859 (Cons!31859 lt!974192 lt!974184)) lt!974166)))

(assert (=> d!796767 (= (lemmaMoveElementToOtherListKeepsConcatEq!846 Nil!31859 lt!974192 lt!974184 lt!974166) lt!974428)))

(declare-fun bs!490475 () Bool)

(assert (= bs!490475 d!796767))

(assert (=> bs!490475 m!3167555))

(assert (=> bs!490475 m!3167555))

(declare-fun m!3167849 () Bool)

(assert (=> bs!490475 m!3167849))

(declare-fun m!3167851 () Bool)

(assert (=> bs!490475 m!3167851))

(declare-fun m!3167853 () Bool)

(assert (=> bs!490475 m!3167853))

(assert (=> b!2752488 d!796767))

(assert (=> b!2752488 d!796723))

(declare-fun d!796769 () Bool)

(assert (=> d!796769 (= (list!12036 (_2!18709 lt!974164)) (list!12037 (c!445361 (_2!18709 lt!974164))))))

(declare-fun bs!490476 () Bool)

(assert (= bs!490476 d!796769))

(declare-fun m!3167855 () Bool)

(assert (=> bs!490476 m!3167855))

(assert (=> b!2752488 d!796769))

(assert (=> b!2752488 d!796727))

(assert (=> b!2752488 d!796753))

(assert (=> b!2752488 d!796755))

(declare-fun b!2752676 () Bool)

(declare-fun e!1735514 () List!31959)

(assert (=> b!2752676 (= e!1735514 lt!974184)))

(declare-fun b!2752679 () Bool)

(declare-fun e!1735515 () Bool)

(declare-fun lt!974429 () List!31959)

(assert (=> b!2752679 (= e!1735515 (or (not (= lt!974184 Nil!31859)) (= lt!974429 lt!974181)))))

(declare-fun b!2752678 () Bool)

(declare-fun res!1153950 () Bool)

(assert (=> b!2752678 (=> (not res!1153950) (not e!1735515))))

(assert (=> b!2752678 (= res!1153950 (= (size!24624 lt!974429) (+ (size!24624 lt!974181) (size!24624 lt!974184))))))

(declare-fun d!796771 () Bool)

(assert (=> d!796771 e!1735515))

(declare-fun res!1153951 () Bool)

(assert (=> d!796771 (=> (not res!1153951) (not e!1735515))))

(assert (=> d!796771 (= res!1153951 (= (content!4487 lt!974429) ((_ map or) (content!4487 lt!974181) (content!4487 lt!974184))))))

(assert (=> d!796771 (= lt!974429 e!1735514)))

(declare-fun c!445422 () Bool)

(assert (=> d!796771 (= c!445422 ((_ is Nil!31859) lt!974181))))

(assert (=> d!796771 (= (++!7889 lt!974181 lt!974184) lt!974429)))

(declare-fun b!2752677 () Bool)

(assert (=> b!2752677 (= e!1735514 (Cons!31859 (h!37279 lt!974181) (++!7889 (t!228063 lt!974181) lt!974184)))))

(assert (= (and d!796771 c!445422) b!2752676))

(assert (= (and d!796771 (not c!445422)) b!2752677))

(assert (= (and d!796771 res!1153951) b!2752678))

(assert (= (and b!2752678 res!1153950) b!2752679))

(declare-fun m!3167857 () Bool)

(assert (=> b!2752678 m!3167857))

(declare-fun m!3167859 () Bool)

(assert (=> b!2752678 m!3167859))

(declare-fun m!3167861 () Bool)

(assert (=> b!2752678 m!3167861))

(declare-fun m!3167863 () Bool)

(assert (=> d!796771 m!3167863))

(declare-fun m!3167865 () Bool)

(assert (=> d!796771 m!3167865))

(declare-fun m!3167867 () Bool)

(assert (=> d!796771 m!3167867))

(declare-fun m!3167869 () Bool)

(assert (=> b!2752677 m!3167869))

(assert (=> b!2752488 d!796771))

(assert (=> b!2752488 d!796731))

(declare-fun b!2752682 () Bool)

(declare-fun e!1735516 () Bool)

(assert (=> b!2752682 (= e!1735516 (isPrefix!2529 (tail!4363 lt!974166) (tail!4363 lt!974166)))))

(declare-fun b!2752680 () Bool)

(declare-fun e!1735517 () Bool)

(assert (=> b!2752680 (= e!1735517 e!1735516)))

(declare-fun res!1153954 () Bool)

(assert (=> b!2752680 (=> (not res!1153954) (not e!1735516))))

(assert (=> b!2752680 (= res!1153954 (not ((_ is Nil!31859) lt!974166)))))

(declare-fun b!2752683 () Bool)

(declare-fun e!1735518 () Bool)

(assert (=> b!2752683 (= e!1735518 (>= (size!24624 lt!974166) (size!24624 lt!974166)))))

(declare-fun b!2752681 () Bool)

(declare-fun res!1153952 () Bool)

(assert (=> b!2752681 (=> (not res!1153952) (not e!1735516))))

(assert (=> b!2752681 (= res!1153952 (= (head!6125 lt!974166) (head!6125 lt!974166)))))

(declare-fun d!796773 () Bool)

(assert (=> d!796773 e!1735518))

(declare-fun res!1153955 () Bool)

(assert (=> d!796773 (=> res!1153955 e!1735518)))

(declare-fun lt!974430 () Bool)

(assert (=> d!796773 (= res!1153955 (not lt!974430))))

(assert (=> d!796773 (= lt!974430 e!1735517)))

(declare-fun res!1153953 () Bool)

(assert (=> d!796773 (=> res!1153953 e!1735517)))

(assert (=> d!796773 (= res!1153953 ((_ is Nil!31859) lt!974166))))

(assert (=> d!796773 (= (isPrefix!2529 lt!974166 lt!974166) lt!974430)))

(assert (= (and d!796773 (not res!1153953)) b!2752680))

(assert (= (and b!2752680 res!1153954) b!2752681))

(assert (= (and b!2752681 res!1153952) b!2752682))

(assert (= (and d!796773 (not res!1153955)) b!2752683))

(assert (=> b!2752682 m!3167515))

(assert (=> b!2752682 m!3167515))

(assert (=> b!2752682 m!3167515))

(assert (=> b!2752682 m!3167515))

(declare-fun m!3167871 () Bool)

(assert (=> b!2752682 m!3167871))

(assert (=> b!2752683 m!3167521))

(assert (=> b!2752683 m!3167521))

(assert (=> b!2752681 m!3167735))

(assert (=> b!2752681 m!3167735))

(assert (=> bm!177855 d!796773))

(declare-fun d!796775 () Bool)

(assert (=> d!796775 true))

(declare-fun lambda!100944 () Int)

(declare-fun flatMap!174 ((InoxSet Context!4542) Int) (InoxSet Context!4542))

(assert (=> d!796775 (= (derivationStepZipper!345 z!3597 lt!974192) (flatMap!174 z!3597 lambda!100944))))

(declare-fun bs!490477 () Bool)

(assert (= bs!490477 d!796775))

(declare-fun m!3167873 () Bool)

(assert (=> bs!490477 m!3167873))

(assert (=> bm!177848 d!796775))

(declare-fun d!796777 () Bool)

(assert (=> d!796777 (= (valid!2882 (ite c!445354 (_3!2779 lt!974188) (_3!2779 lt!974174))) (validCacheMapDown!382 (cache!3764 (ite c!445354 (_3!2779 lt!974188) (_3!2779 lt!974174)))))))

(declare-fun bs!490478 () Bool)

(assert (= bs!490478 d!796777))

(declare-fun m!3167875 () Bool)

(assert (=> bs!490478 m!3167875))

(assert (=> bm!177856 d!796777))

(declare-fun bm!177899 () Bool)

(declare-fun c!445429 () Bool)

(declare-fun lt!974470 () List!31959)

(declare-fun lt!974440 () List!31959)

(declare-fun lt!974444 () List!31959)

(declare-fun lt!974460 () List!31959)

(declare-fun call!177905 () Unit!45626)

(assert (=> bm!177899 (= call!177905 (lemmaIsPrefixRefl!1655 (ite c!445429 lt!974444 lt!974460) (ite c!445429 lt!974440 lt!974470)))))

(declare-fun b!2752686 () Bool)

(declare-fun e!1735522 () Int)

(assert (=> b!2752686 (= e!1735522 0)))

(declare-fun bm!177900 () Bool)

(declare-fun call!177907 () List!31959)

(declare-fun call!177908 () C!16264)

(assert (=> bm!177900 (= call!177907 (++!7889 lt!974206 (Cons!31859 call!177908 Nil!31859)))))

(declare-fun b!2752687 () Bool)

(assert (=> b!2752687 (= e!1735522 1)))

(declare-fun b!2752688 () Bool)

(declare-fun e!1735521 () Unit!45626)

(declare-fun Unit!45637 () Unit!45626)

(assert (=> b!2752688 (= e!1735521 Unit!45637)))

(declare-fun bm!177901 () Bool)

(declare-fun call!177911 () Bool)

(assert (=> bm!177901 (= call!177911 (nullableZipper!608 (ite c!445354 (_1!18708 lt!974194) (_1!18708 lt!974189))))))

(declare-fun b!2752689 () Bool)

(declare-fun e!1735523 () Int)

(declare-fun lt!974454 () Int)

(assert (=> b!2752689 (= e!1735523 (ite (= lt!974454 0) 1 lt!974454))))

(declare-fun call!177910 () Int)

(assert (=> b!2752689 (= lt!974454 call!177910)))

(declare-fun bm!177903 () Bool)

(assert (=> bm!177903 (= call!177908 (apply!7445 input!5495 1))))

(declare-fun b!2752690 () Bool)

(declare-fun e!1735520 () List!31959)

(declare-fun call!177904 () List!31959)

(assert (=> b!2752690 (= e!1735520 call!177904)))

(declare-fun b!2752691 () Bool)

(assert (=> b!2752691 (= e!1735520 (list!12036 input!5495))))

(declare-fun bm!177904 () Bool)

(declare-fun call!177912 () List!31959)

(assert (=> bm!177904 (= call!177912 (tail!4363 lt!974195))))

(declare-fun b!2752692 () Bool)

(declare-fun Unit!45638 () Unit!45626)

(assert (=> b!2752692 (= e!1735521 Unit!45638)))

(assert (=> b!2752692 (= lt!974460 (list!12036 input!5495))))

(assert (=> b!2752692 (= lt!974470 (list!12036 input!5495))))

(declare-fun lt!974436 () Unit!45626)

(assert (=> b!2752692 (= lt!974436 call!177905)))

(declare-fun call!177906 () Bool)

(assert (=> b!2752692 call!177906))

(declare-fun lt!974455 () Unit!45626)

(assert (=> b!2752692 (= lt!974455 lt!974436)))

(declare-fun lt!974449 () List!31959)

(assert (=> b!2752692 (= lt!974449 (list!12036 input!5495))))

(declare-fun lt!974445 () Unit!45626)

(declare-fun call!177909 () Unit!45626)

(assert (=> b!2752692 (= lt!974445 call!177909)))

(assert (=> b!2752692 (= lt!974449 lt!974206)))

(declare-fun lt!974451 () Unit!45626)

(assert (=> b!2752692 (= lt!974451 lt!974445)))

(assert (=> b!2752692 false))

(declare-fun bm!177905 () Bool)

(assert (=> bm!177905 (= call!177906 (isPrefix!2529 (ite c!445429 lt!974444 lt!974460) (ite c!445429 lt!974440 lt!974470)))))

(declare-fun bm!177906 () Bool)

(declare-fun lt!974432 () tuple2!31854)

(assert (=> bm!177906 (= call!177904 (list!12036 (ite c!445429 input!5495 (_2!18709 lt!974432))))))

(declare-fun b!2752693 () Bool)

(assert (=> b!2752693 (= e!1735523 call!177910)))

(declare-fun bm!177907 () Bool)

(declare-fun call!177913 () (InoxSet Context!4542))

(assert (=> bm!177907 (= call!177913 (derivationStepZipper!345 (ite c!445354 (_1!18708 lt!974194) (_1!18708 lt!974189)) call!177908))))

(declare-fun bm!177908 () Bool)

(declare-fun c!445430 () Bool)

(assert (=> bm!177908 (= c!445430 c!445429)))

(declare-fun lt!974457 () List!31959)

(assert (=> bm!177908 (= call!177909 (lemmaIsPrefixSameLengthThenSameList!436 (ite c!445429 lt!974457 lt!974449) lt!974206 e!1735520))))

(declare-fun b!2752694 () Bool)

(declare-fun c!445426 () Bool)

(assert (=> b!2752694 (= c!445426 call!177911)))

(declare-fun lt!974434 () Unit!45626)

(declare-fun lt!974452 () Unit!45626)

(assert (=> b!2752694 (= lt!974434 lt!974452)))

(declare-fun lt!974439 () List!31959)

(declare-fun lt!974431 () C!16264)

(declare-fun lt!974458 () List!31959)

(assert (=> b!2752694 (= (++!7889 (++!7889 lt!974206 (Cons!31859 lt!974431 Nil!31859)) lt!974439) lt!974458)))

(assert (=> b!2752694 (= lt!974452 (lemmaMoveElementToOtherListKeepsConcatEq!846 lt!974206 lt!974431 lt!974439 lt!974458))))

(assert (=> b!2752694 (= lt!974458 (list!12036 input!5495))))

(assert (=> b!2752694 (= lt!974439 (tail!4363 lt!974195))))

(assert (=> b!2752694 (= lt!974431 (apply!7445 input!5495 1))))

(declare-fun lt!974467 () Unit!45626)

(declare-fun lt!974466 () Unit!45626)

(assert (=> b!2752694 (= lt!974467 lt!974466)))

(declare-fun lt!974443 () List!31959)

(assert (=> b!2752694 (isPrefix!2529 (++!7889 lt!974206 (Cons!31859 (head!6125 (getSuffix!1215 lt!974443 lt!974206)) Nil!31859)) lt!974443)))

(assert (=> b!2752694 (= lt!974466 (lemmaAddHeadSuffixToPrefixStillPrefix!434 lt!974206 lt!974443))))

(assert (=> b!2752694 (= lt!974443 (list!12036 input!5495))))

(declare-fun lt!974448 () Unit!45626)

(assert (=> b!2752694 (= lt!974448 e!1735521)))

(declare-fun c!445428 () Bool)

(assert (=> b!2752694 (= c!445428 (= (size!24624 lt!974206) (size!24625 input!5495)))))

(declare-fun lt!974463 () Unit!45626)

(declare-fun lt!974472 () Unit!45626)

(assert (=> b!2752694 (= lt!974463 lt!974472)))

(declare-fun lt!974464 () List!31959)

(assert (=> b!2752694 (<= (size!24624 lt!974206) (size!24624 lt!974464))))

(assert (=> b!2752694 (= lt!974472 (lemmaIsPrefixThenSmallerEqSize!237 lt!974206 lt!974464))))

(assert (=> b!2752694 (= lt!974464 (list!12036 input!5495))))

(declare-fun lt!974468 () Unit!45626)

(declare-fun lt!974442 () Unit!45626)

(assert (=> b!2752694 (= lt!974468 lt!974442)))

(declare-fun lt!974438 () List!31959)

(assert (=> b!2752694 (= (head!6125 (drop!1684 lt!974438 1)) (apply!7446 lt!974438 1))))

(assert (=> b!2752694 (= lt!974442 (lemmaDropApply!890 lt!974438 1))))

(assert (=> b!2752694 (= lt!974438 (list!12036 input!5495))))

(declare-fun lt!974465 () Unit!45626)

(declare-fun lt!974433 () Unit!45626)

(assert (=> b!2752694 (= lt!974465 lt!974433)))

(declare-fun lt!974446 () List!31959)

(declare-fun lt!974461 () List!31959)

(assert (=> b!2752694 (and (= lt!974446 lt!974206) (= lt!974461 lt!974195))))

(assert (=> b!2752694 (= lt!974433 (lemmaConcatSameAndSameSizesThenSameLists!316 lt!974446 lt!974461 lt!974206 lt!974195))))

(assert (=> b!2752694 (= lt!974461 call!177904)))

(assert (=> b!2752694 (= lt!974446 (list!12036 (_1!18709 lt!974432)))))

(assert (=> b!2752694 (= lt!974432 (splitAt!81 input!5495 1))))

(declare-fun e!1735519 () Int)

(assert (=> b!2752694 (= e!1735519 e!1735523)))

(declare-fun b!2752695 () Bool)

(declare-fun e!1735524 () Int)

(assert (=> b!2752695 (= e!1735524 0)))

(declare-fun bm!177902 () Bool)

(assert (=> bm!177902 (= call!177910 (findLongestMatchInnerZipperFast!11 call!177913 call!177907 (+ 1 1) call!177912 input!5495 lt!974163))))

(declare-fun d!796779 () Bool)

(declare-fun lt!974447 () Int)

(assert (=> d!796779 (= (size!24624 (_1!18710 (findLongestMatchInnerZipper!3 (ite c!445354 (_1!18708 lt!974194) (_1!18708 lt!974189)) lt!974206 1 lt!974195 (list!12036 input!5495) lt!974163))) lt!974447)))

(assert (=> d!796779 (= lt!974447 e!1735524)))

(declare-fun c!445425 () Bool)

(assert (=> d!796779 (= c!445425 (lostCauseZipper!419 (ite c!445354 (_1!18708 lt!974194) (_1!18708 lt!974189))))))

(declare-fun lt!974441 () Unit!45626)

(declare-fun Unit!45639 () Unit!45626)

(assert (=> d!796779 (= lt!974441 Unit!45639)))

(assert (=> d!796779 (= (getSuffix!1215 (list!12036 input!5495) lt!974206) lt!974195)))

(declare-fun lt!974462 () Unit!45626)

(declare-fun lt!974453 () Unit!45626)

(assert (=> d!796779 (= lt!974462 lt!974453)))

(declare-fun lt!974450 () List!31959)

(assert (=> d!796779 (= lt!974195 lt!974450)))

(assert (=> d!796779 (= lt!974453 (lemmaSamePrefixThenSameSuffix!1117 lt!974206 lt!974195 lt!974206 lt!974450 (list!12036 input!5495)))))

(assert (=> d!796779 (= lt!974450 (getSuffix!1215 (list!12036 input!5495) lt!974206))))

(declare-fun lt!974435 () Unit!45626)

(declare-fun lt!974459 () Unit!45626)

(assert (=> d!796779 (= lt!974435 lt!974459)))

(assert (=> d!796779 (isPrefix!2529 lt!974206 (++!7889 lt!974206 lt!974195))))

(assert (=> d!796779 (= lt!974459 (lemmaConcatTwoListThenFirstIsPrefix!1643 lt!974206 lt!974195))))

(assert (=> d!796779 (= (++!7889 lt!974206 lt!974195) (list!12036 input!5495))))

(assert (=> d!796779 (= (findLongestMatchInnerZipperFast!11 (ite c!445354 (_1!18708 lt!974194) (_1!18708 lt!974189)) lt!974206 1 lt!974195 input!5495 lt!974163) lt!974447)))

(declare-fun b!2752696 () Bool)

(declare-fun c!445427 () Bool)

(assert (=> b!2752696 (= c!445427 call!177911)))

(declare-fun lt!974437 () Unit!45626)

(declare-fun lt!974456 () Unit!45626)

(assert (=> b!2752696 (= lt!974437 lt!974456)))

(assert (=> b!2752696 (= lt!974457 lt!974206)))

(assert (=> b!2752696 (= lt!974456 call!177909)))

(assert (=> b!2752696 (= lt!974457 call!177904)))

(declare-fun lt!974469 () Unit!45626)

(declare-fun lt!974471 () Unit!45626)

(assert (=> b!2752696 (= lt!974469 lt!974471)))

(assert (=> b!2752696 call!177906))

(assert (=> b!2752696 (= lt!974471 call!177905)))

(assert (=> b!2752696 (= lt!974440 call!177904)))

(assert (=> b!2752696 (= lt!974444 call!177904)))

(assert (=> b!2752696 (= e!1735519 e!1735522)))

(declare-fun b!2752697 () Bool)

(assert (=> b!2752697 (= e!1735524 e!1735519)))

(assert (=> b!2752697 (= c!445429 (= 1 lt!974163))))

(assert (= (and d!796779 c!445425) b!2752695))

(assert (= (and d!796779 (not c!445425)) b!2752697))

(assert (= (and b!2752697 c!445429) b!2752696))

(assert (= (and b!2752697 (not c!445429)) b!2752694))

(assert (= (and b!2752696 c!445427) b!2752687))

(assert (= (and b!2752696 (not c!445427)) b!2752686))

(assert (= (and b!2752694 c!445428) b!2752692))

(assert (= (and b!2752694 (not c!445428)) b!2752688))

(assert (= (and b!2752694 c!445426) b!2752689))

(assert (= (and b!2752694 (not c!445426)) b!2752693))

(assert (= (or b!2752689 b!2752693) bm!177904))

(assert (= (or b!2752689 b!2752693) bm!177903))

(assert (= (or b!2752689 b!2752693) bm!177907))

(assert (= (or b!2752689 b!2752693) bm!177900))

(assert (= (or b!2752689 b!2752693) bm!177902))

(assert (= (or b!2752696 b!2752692) bm!177899))

(assert (= (or b!2752696 b!2752694) bm!177906))

(assert (= (or b!2752696 b!2752694) bm!177901))

(assert (= (or b!2752696 b!2752692) bm!177905))

(assert (= (or b!2752696 b!2752692) bm!177908))

(assert (= (and bm!177908 c!445430) b!2752690))

(assert (= (and bm!177908 (not c!445430)) b!2752691))

(declare-fun m!3167877 () Bool)

(assert (=> bm!177904 m!3167877))

(declare-fun m!3167879 () Bool)

(assert (=> bm!177906 m!3167879))

(assert (=> b!2752692 m!3167571))

(declare-fun m!3167881 () Bool)

(assert (=> bm!177908 m!3167881))

(declare-fun m!3167883 () Bool)

(assert (=> d!796779 m!3167883))

(assert (=> d!796779 m!3167571))

(declare-fun m!3167885 () Bool)

(assert (=> d!796779 m!3167885))

(assert (=> d!796779 m!3167571))

(declare-fun m!3167887 () Bool)

(assert (=> d!796779 m!3167887))

(assert (=> d!796779 m!3167527))

(declare-fun m!3167889 () Bool)

(assert (=> d!796779 m!3167889))

(assert (=> d!796779 m!3167527))

(assert (=> d!796779 m!3167571))

(declare-fun m!3167891 () Bool)

(assert (=> d!796779 m!3167891))

(declare-fun m!3167893 () Bool)

(assert (=> d!796779 m!3167893))

(assert (=> d!796779 m!3167571))

(declare-fun m!3167895 () Bool)

(assert (=> d!796779 m!3167895))

(declare-fun m!3167897 () Bool)

(assert (=> bm!177901 m!3167897))

(declare-fun m!3167899 () Bool)

(assert (=> bm!177907 m!3167899))

(assert (=> b!2752691 m!3167571))

(declare-fun m!3167901 () Bool)

(assert (=> bm!177900 m!3167901))

(declare-fun m!3167903 () Bool)

(assert (=> bm!177903 m!3167903))

(assert (=> b!2752694 m!3167781))

(declare-fun m!3167905 () Bool)

(assert (=> b!2752694 m!3167905))

(declare-fun m!3167907 () Bool)

(assert (=> b!2752694 m!3167907))

(declare-fun m!3167909 () Bool)

(assert (=> b!2752694 m!3167909))

(declare-fun m!3167911 () Bool)

(assert (=> b!2752694 m!3167911))

(assert (=> b!2752694 m!3167903))

(assert (=> b!2752694 m!3167571))

(assert (=> b!2752694 m!3167573))

(declare-fun m!3167913 () Bool)

(assert (=> b!2752694 m!3167913))

(declare-fun m!3167915 () Bool)

(assert (=> b!2752694 m!3167915))

(declare-fun m!3167917 () Bool)

(assert (=> b!2752694 m!3167917))

(declare-fun m!3167919 () Bool)

(assert (=> b!2752694 m!3167919))

(declare-fun m!3167921 () Bool)

(assert (=> b!2752694 m!3167921))

(declare-fun m!3167923 () Bool)

(assert (=> b!2752694 m!3167923))

(declare-fun m!3167925 () Bool)

(assert (=> b!2752694 m!3167925))

(declare-fun m!3167927 () Bool)

(assert (=> b!2752694 m!3167927))

(assert (=> b!2752694 m!3167919))

(declare-fun m!3167929 () Bool)

(assert (=> b!2752694 m!3167929))

(declare-fun m!3167931 () Bool)

(assert (=> b!2752694 m!3167931))

(assert (=> b!2752694 m!3167877))

(assert (=> b!2752694 m!3167905))

(assert (=> b!2752694 m!3167917))

(declare-fun m!3167933 () Bool)

(assert (=> b!2752694 m!3167933))

(declare-fun m!3167935 () Bool)

(assert (=> b!2752694 m!3167935))

(assert (=> b!2752694 m!3167915))

(declare-fun m!3167937 () Bool)

(assert (=> b!2752694 m!3167937))

(declare-fun m!3167939 () Bool)

(assert (=> bm!177899 m!3167939))

(declare-fun m!3167941 () Bool)

(assert (=> bm!177905 m!3167941))

(declare-fun m!3167943 () Bool)

(assert (=> bm!177902 m!3167943))

(assert (=> bm!177847 d!796779))

(assert (=> bm!177850 d!796681))

(declare-fun d!796781 () Bool)

(assert (=> d!796781 (isPrefix!2529 lt!974166 lt!974166)))

(declare-fun lt!974475 () Unit!45626)

(declare-fun choose!16114 (List!31959 List!31959) Unit!45626)

(assert (=> d!796781 (= lt!974475 (choose!16114 lt!974166 lt!974166))))

(assert (=> d!796781 (= (lemmaIsPrefixRefl!1655 lt!974166 lt!974166) lt!974475)))

(declare-fun bs!490479 () Bool)

(assert (= bs!490479 d!796781))

(assert (=> bs!490479 m!3167471))

(declare-fun m!3167945 () Bool)

(assert (=> bs!490479 m!3167945))

(assert (=> bm!177858 d!796781))

(assert (=> bm!177849 d!796715))

(declare-fun d!796783 () Bool)

(declare-fun e!1735525 () Bool)

(assert (=> d!796783 e!1735525))

(declare-fun res!1153956 () Bool)

(assert (=> d!796783 (=> (not res!1153956) (not e!1735525))))

(declare-fun lt!974476 () tuple3!4618)

(assert (=> d!796783 (= res!1153956 (valid!2883 (_2!18706 lt!974476)))))

(assert (=> d!796783 (= lt!974476 (choose!16106 (ite c!445354 (_2!18708 lt!974194) (_2!18708 lt!974189)) (ite c!445354 (_3!2781 lt!974194) (_3!2781 lt!974189)) (ite c!445354 (_1!18708 lt!974194) (_1!18708 lt!974189)) lt!974206 1 lt!974195 input!5495 lt!974163))))

(assert (=> d!796783 (= (++!7889 lt!974206 lt!974195) (list!12036 input!5495))))

(assert (=> d!796783 (= (findLongestMatchInnerZipperFastMem!9 (ite c!445354 (_2!18708 lt!974194) (_2!18708 lt!974189)) (ite c!445354 (_3!2781 lt!974194) (_3!2781 lt!974189)) (ite c!445354 (_1!18708 lt!974194) (_1!18708 lt!974189)) lt!974206 1 lt!974195 input!5495 lt!974163) lt!974476)))

(declare-fun b!2752698 () Bool)

(declare-fun res!1153957 () Bool)

(assert (=> b!2752698 (=> (not res!1153957) (not e!1735525))))

(assert (=> b!2752698 (= res!1153957 (valid!2882 (_3!2779 lt!974476)))))

(declare-fun b!2752699 () Bool)

(assert (=> b!2752699 (= e!1735525 (= (_1!18706 lt!974476) (findLongestMatchInnerZipperFast!11 (ite c!445354 (_1!18708 lt!974194) (_1!18708 lt!974189)) lt!974206 1 lt!974195 input!5495 lt!974163)))))

(assert (= (and d!796783 res!1153956) b!2752698))

(assert (= (and b!2752698 res!1153957) b!2752699))

(declare-fun m!3167947 () Bool)

(assert (=> d!796783 m!3167947))

(declare-fun m!3167949 () Bool)

(assert (=> d!796783 m!3167949))

(assert (=> d!796783 m!3167527))

(assert (=> d!796783 m!3167571))

(declare-fun m!3167951 () Bool)

(assert (=> b!2752698 m!3167951))

(assert (=> b!2752699 m!3167535))

(assert (=> bm!177857 d!796783))

(declare-fun d!796785 () Bool)

(assert (=> d!796785 (= (valid!2883 cacheUp!820) (validCacheMapUp!351 (cache!3763 cacheUp!820)))))

(declare-fun bs!490480 () Bool)

(assert (= bs!490480 d!796785))

(declare-fun m!3167953 () Bool)

(assert (=> bs!490480 m!3167953))

(assert (=> start!266800 d!796785))

(declare-fun d!796787 () Bool)

(declare-fun res!1153960 () Bool)

(declare-fun e!1735528 () Bool)

(assert (=> d!796787 (=> (not res!1153960) (not e!1735528))))

(assert (=> d!796787 (= res!1153960 ((_ is HashMap!3620) (cache!3763 cacheUp!820)))))

(assert (=> d!796787 (= (inv!43261 cacheUp!820) e!1735528)))

(declare-fun b!2752702 () Bool)

(assert (=> b!2752702 (= e!1735528 (validCacheMapUp!351 (cache!3763 cacheUp!820)))))

(assert (= (and d!796787 res!1153960) b!2752702))

(assert (=> b!2752702 m!3167953))

(assert (=> start!266800 d!796787))

(declare-fun d!796789 () Bool)

(declare-fun res!1153963 () Bool)

(declare-fun e!1735531 () Bool)

(assert (=> d!796789 (=> (not res!1153963) (not e!1735531))))

(assert (=> d!796789 (= res!1153963 ((_ is HashMap!3621) (cache!3764 cacheDown!939)))))

(assert (=> d!796789 (= (inv!43262 cacheDown!939) e!1735531)))

(declare-fun b!2752705 () Bool)

(assert (=> b!2752705 (= e!1735531 (validCacheMapDown!382 (cache!3764 cacheDown!939)))))

(assert (= (and d!796789 res!1153963) b!2752705))

(assert (=> b!2752705 m!3167829))

(assert (=> start!266800 d!796789))

(declare-fun d!796791 () Bool)

(assert (=> d!796791 (= (inv!43263 input!5495) (isBalanced!3024 (c!445361 input!5495)))))

(declare-fun bs!490481 () Bool)

(assert (= bs!490481 d!796791))

(assert (=> bs!490481 m!3167747))

(assert (=> start!266800 d!796791))

(declare-fun d!796793 () Bool)

(declare-fun c!445433 () Bool)

(assert (=> d!796793 (= c!445433 ((_ is Node!9935) (c!445361 input!5495)))))

(declare-fun e!1735536 () Bool)

(assert (=> d!796793 (= (inv!43259 (c!445361 input!5495)) e!1735536)))

(declare-fun b!2752712 () Bool)

(declare-fun inv!43264 (Conc!9935) Bool)

(assert (=> b!2752712 (= e!1735536 (inv!43264 (c!445361 input!5495)))))

(declare-fun b!2752713 () Bool)

(declare-fun e!1735537 () Bool)

(assert (=> b!2752713 (= e!1735536 e!1735537)))

(declare-fun res!1153966 () Bool)

(assert (=> b!2752713 (= res!1153966 (not ((_ is Leaf!15130) (c!445361 input!5495))))))

(assert (=> b!2752713 (=> res!1153966 e!1735537)))

(declare-fun b!2752714 () Bool)

(declare-fun inv!43265 (Conc!9935) Bool)

(assert (=> b!2752714 (= e!1735537 (inv!43265 (c!445361 input!5495)))))

(assert (= (and d!796793 c!445433) b!2752712))

(assert (= (and d!796793 (not c!445433)) b!2752713))

(assert (= (and b!2752713 (not res!1153966)) b!2752714))

(declare-fun m!3167955 () Bool)

(assert (=> b!2752712 m!3167955))

(declare-fun m!3167957 () Bool)

(assert (=> b!2752714 m!3167957))

(assert (=> b!2752504 d!796793))

(assert (=> b!2752507 d!796683))

(assert (=> bm!177845 d!796781))

(declare-fun lt!974486 () List!31959)

(declare-fun call!177915 () Unit!45626)

(declare-fun lt!974506 () List!31959)

(declare-fun lt!974490 () List!31959)

(declare-fun bm!177909 () Bool)

(declare-fun c!445438 () Bool)

(declare-fun lt!974516 () List!31959)

(assert (=> bm!177909 (= call!177915 (lemmaIsPrefixRefl!1655 (ite c!445438 lt!974490 lt!974506) (ite c!445438 lt!974486 lt!974516)))))

(declare-fun b!2752715 () Bool)

(declare-fun e!1735541 () Int)

(assert (=> b!2752715 (= e!1735541 0)))

(declare-fun bm!177910 () Bool)

(declare-fun call!177917 () List!31959)

(declare-fun call!177918 () C!16264)

(assert (=> bm!177910 (= call!177917 (++!7889 lt!974181 (Cons!31859 call!177918 Nil!31859)))))

(declare-fun b!2752716 () Bool)

(assert (=> b!2752716 (= e!1735541 1)))

(declare-fun b!2752717 () Bool)

(declare-fun e!1735540 () Unit!45626)

(declare-fun Unit!45640 () Unit!45626)

(assert (=> b!2752717 (= e!1735540 Unit!45640)))

(declare-fun bm!177911 () Bool)

(declare-fun call!177921 () Bool)

(assert (=> bm!177911 (= call!177921 (nullableZipper!608 call!177862))))

(declare-fun b!2752718 () Bool)

(declare-fun e!1735542 () Int)

(declare-fun lt!974500 () Int)

(assert (=> b!2752718 (= e!1735542 (ite (= lt!974500 0) 1 lt!974500))))

(declare-fun call!177920 () Int)

(assert (=> b!2752718 (= lt!974500 call!177920)))

(declare-fun bm!177913 () Bool)

(assert (=> bm!177913 (= call!177918 (apply!7445 input!5495 1))))

(declare-fun b!2752719 () Bool)

(declare-fun e!1735539 () List!31959)

(declare-fun call!177914 () List!31959)

(assert (=> b!2752719 (= e!1735539 call!177914)))

(declare-fun b!2752720 () Bool)

(assert (=> b!2752720 (= e!1735539 (list!12036 input!5495))))

(declare-fun bm!177914 () Bool)

(declare-fun call!177922 () List!31959)

(assert (=> bm!177914 (= call!177922 (tail!4363 lt!974184))))

(declare-fun b!2752721 () Bool)

(declare-fun Unit!45641 () Unit!45626)

(assert (=> b!2752721 (= e!1735540 Unit!45641)))

(assert (=> b!2752721 (= lt!974506 (list!12036 input!5495))))

(assert (=> b!2752721 (= lt!974516 (list!12036 input!5495))))

(declare-fun lt!974482 () Unit!45626)

(assert (=> b!2752721 (= lt!974482 call!177915)))

(declare-fun call!177916 () Bool)

(assert (=> b!2752721 call!177916))

(declare-fun lt!974501 () Unit!45626)

(assert (=> b!2752721 (= lt!974501 lt!974482)))

(declare-fun lt!974495 () List!31959)

(assert (=> b!2752721 (= lt!974495 (list!12036 input!5495))))

(declare-fun lt!974491 () Unit!45626)

(declare-fun call!177919 () Unit!45626)

(assert (=> b!2752721 (= lt!974491 call!177919)))

(assert (=> b!2752721 (= lt!974495 lt!974181)))

(declare-fun lt!974497 () Unit!45626)

(assert (=> b!2752721 (= lt!974497 lt!974491)))

(assert (=> b!2752721 false))

(declare-fun bm!177915 () Bool)

(assert (=> bm!177915 (= call!177916 (isPrefix!2529 (ite c!445438 lt!974490 lt!974506) (ite c!445438 lt!974486 lt!974516)))))

(declare-fun lt!974478 () tuple2!31854)

(declare-fun bm!177916 () Bool)

(assert (=> bm!177916 (= call!177914 (list!12036 (ite c!445438 input!5495 (_2!18709 lt!974478))))))

(declare-fun b!2752722 () Bool)

(assert (=> b!2752722 (= e!1735542 call!177920)))

(declare-fun bm!177917 () Bool)

(declare-fun call!177923 () (InoxSet Context!4542))

(assert (=> bm!177917 (= call!177923 (derivationStepZipper!345 call!177862 call!177918))))

(declare-fun bm!177918 () Bool)

(declare-fun c!445439 () Bool)

(assert (=> bm!177918 (= c!445439 c!445438)))

(declare-fun lt!974503 () List!31959)

(assert (=> bm!177918 (= call!177919 (lemmaIsPrefixSameLengthThenSameList!436 (ite c!445438 lt!974503 lt!974495) lt!974181 e!1735539))))

(declare-fun b!2752723 () Bool)

(declare-fun c!445435 () Bool)

(assert (=> b!2752723 (= c!445435 call!177921)))

(declare-fun lt!974480 () Unit!45626)

(declare-fun lt!974498 () Unit!45626)

(assert (=> b!2752723 (= lt!974480 lt!974498)))

(declare-fun lt!974477 () C!16264)

(declare-fun lt!974485 () List!31959)

(declare-fun lt!974504 () List!31959)

(assert (=> b!2752723 (= (++!7889 (++!7889 lt!974181 (Cons!31859 lt!974477 Nil!31859)) lt!974485) lt!974504)))

(assert (=> b!2752723 (= lt!974498 (lemmaMoveElementToOtherListKeepsConcatEq!846 lt!974181 lt!974477 lt!974485 lt!974504))))

(assert (=> b!2752723 (= lt!974504 (list!12036 input!5495))))

(assert (=> b!2752723 (= lt!974485 (tail!4363 lt!974184))))

(assert (=> b!2752723 (= lt!974477 (apply!7445 input!5495 1))))

(declare-fun lt!974513 () Unit!45626)

(declare-fun lt!974512 () Unit!45626)

(assert (=> b!2752723 (= lt!974513 lt!974512)))

(declare-fun lt!974489 () List!31959)

(assert (=> b!2752723 (isPrefix!2529 (++!7889 lt!974181 (Cons!31859 (head!6125 (getSuffix!1215 lt!974489 lt!974181)) Nil!31859)) lt!974489)))

(assert (=> b!2752723 (= lt!974512 (lemmaAddHeadSuffixToPrefixStillPrefix!434 lt!974181 lt!974489))))

(assert (=> b!2752723 (= lt!974489 (list!12036 input!5495))))

(declare-fun lt!974494 () Unit!45626)

(assert (=> b!2752723 (= lt!974494 e!1735540)))

(declare-fun c!445437 () Bool)

(assert (=> b!2752723 (= c!445437 (= (size!24624 lt!974181) (size!24625 input!5495)))))

(declare-fun lt!974509 () Unit!45626)

(declare-fun lt!974518 () Unit!45626)

(assert (=> b!2752723 (= lt!974509 lt!974518)))

(declare-fun lt!974510 () List!31959)

(assert (=> b!2752723 (<= (size!24624 lt!974181) (size!24624 lt!974510))))

(assert (=> b!2752723 (= lt!974518 (lemmaIsPrefixThenSmallerEqSize!237 lt!974181 lt!974510))))

(assert (=> b!2752723 (= lt!974510 (list!12036 input!5495))))

(declare-fun lt!974514 () Unit!45626)

(declare-fun lt!974488 () Unit!45626)

(assert (=> b!2752723 (= lt!974514 lt!974488)))

(declare-fun lt!974484 () List!31959)

(assert (=> b!2752723 (= (head!6125 (drop!1684 lt!974484 1)) (apply!7446 lt!974484 1))))

(assert (=> b!2752723 (= lt!974488 (lemmaDropApply!890 lt!974484 1))))

(assert (=> b!2752723 (= lt!974484 (list!12036 input!5495))))

(declare-fun lt!974511 () Unit!45626)

(declare-fun lt!974479 () Unit!45626)

(assert (=> b!2752723 (= lt!974511 lt!974479)))

(declare-fun lt!974507 () List!31959)

(declare-fun lt!974492 () List!31959)

(assert (=> b!2752723 (and (= lt!974492 lt!974181) (= lt!974507 lt!974184))))

(assert (=> b!2752723 (= lt!974479 (lemmaConcatSameAndSameSizesThenSameLists!316 lt!974492 lt!974507 lt!974181 lt!974184))))

(assert (=> b!2752723 (= lt!974507 call!177914)))

(assert (=> b!2752723 (= lt!974492 (list!12036 (_1!18709 lt!974478)))))

(assert (=> b!2752723 (= lt!974478 (splitAt!81 input!5495 1))))

(declare-fun e!1735538 () Int)

(assert (=> b!2752723 (= e!1735538 e!1735542)))

(declare-fun b!2752724 () Bool)

(declare-fun e!1735543 () Int)

(assert (=> b!2752724 (= e!1735543 0)))

(declare-fun bm!177912 () Bool)

(assert (=> bm!177912 (= call!177920 (findLongestMatchInnerZipperFast!11 call!177923 call!177917 (+ 1 1) call!177922 input!5495 lt!974163))))

(declare-fun lt!974493 () Int)

(declare-fun d!796795 () Bool)

(assert (=> d!796795 (= (size!24624 (_1!18710 (findLongestMatchInnerZipper!3 call!177862 lt!974181 1 lt!974184 (list!12036 input!5495) lt!974163))) lt!974493)))

(assert (=> d!796795 (= lt!974493 e!1735543)))

(declare-fun c!445434 () Bool)

(assert (=> d!796795 (= c!445434 (lostCauseZipper!419 call!177862))))

(declare-fun lt!974487 () Unit!45626)

(declare-fun Unit!45642 () Unit!45626)

(assert (=> d!796795 (= lt!974487 Unit!45642)))

(assert (=> d!796795 (= (getSuffix!1215 (list!12036 input!5495) lt!974181) lt!974184)))

(declare-fun lt!974508 () Unit!45626)

(declare-fun lt!974499 () Unit!45626)

(assert (=> d!796795 (= lt!974508 lt!974499)))

(declare-fun lt!974496 () List!31959)

(assert (=> d!796795 (= lt!974184 lt!974496)))

(assert (=> d!796795 (= lt!974499 (lemmaSamePrefixThenSameSuffix!1117 lt!974181 lt!974184 lt!974181 lt!974496 (list!12036 input!5495)))))

(assert (=> d!796795 (= lt!974496 (getSuffix!1215 (list!12036 input!5495) lt!974181))))

(declare-fun lt!974481 () Unit!45626)

(declare-fun lt!974505 () Unit!45626)

(assert (=> d!796795 (= lt!974481 lt!974505)))

(assert (=> d!796795 (isPrefix!2529 lt!974181 (++!7889 lt!974181 lt!974184))))

(assert (=> d!796795 (= lt!974505 (lemmaConcatTwoListThenFirstIsPrefix!1643 lt!974181 lt!974184))))

(assert (=> d!796795 (= (++!7889 lt!974181 lt!974184) (list!12036 input!5495))))

(assert (=> d!796795 (= (findLongestMatchInnerZipperFast!11 call!177862 lt!974181 1 lt!974184 input!5495 lt!974163) lt!974493)))

(declare-fun b!2752725 () Bool)

(declare-fun c!445436 () Bool)

(assert (=> b!2752725 (= c!445436 call!177921)))

(declare-fun lt!974483 () Unit!45626)

(declare-fun lt!974502 () Unit!45626)

(assert (=> b!2752725 (= lt!974483 lt!974502)))

(assert (=> b!2752725 (= lt!974503 lt!974181)))

(assert (=> b!2752725 (= lt!974502 call!177919)))

(assert (=> b!2752725 (= lt!974503 call!177914)))

(declare-fun lt!974515 () Unit!45626)

(declare-fun lt!974517 () Unit!45626)

(assert (=> b!2752725 (= lt!974515 lt!974517)))

(assert (=> b!2752725 call!177916))

(assert (=> b!2752725 (= lt!974517 call!177915)))

(assert (=> b!2752725 (= lt!974486 call!177914)))

(assert (=> b!2752725 (= lt!974490 call!177914)))

(assert (=> b!2752725 (= e!1735538 e!1735541)))

(declare-fun b!2752726 () Bool)

(assert (=> b!2752726 (= e!1735543 e!1735538)))

(assert (=> b!2752726 (= c!445438 (= 1 lt!974163))))

(assert (= (and d!796795 c!445434) b!2752724))

(assert (= (and d!796795 (not c!445434)) b!2752726))

(assert (= (and b!2752726 c!445438) b!2752725))

(assert (= (and b!2752726 (not c!445438)) b!2752723))

(assert (= (and b!2752725 c!445436) b!2752716))

(assert (= (and b!2752725 (not c!445436)) b!2752715))

(assert (= (and b!2752723 c!445437) b!2752721))

(assert (= (and b!2752723 (not c!445437)) b!2752717))

(assert (= (and b!2752723 c!445435) b!2752718))

(assert (= (and b!2752723 (not c!445435)) b!2752722))

(assert (= (or b!2752718 b!2752722) bm!177914))

(assert (= (or b!2752718 b!2752722) bm!177913))

(assert (= (or b!2752718 b!2752722) bm!177917))

(assert (= (or b!2752718 b!2752722) bm!177910))

(assert (= (or b!2752718 b!2752722) bm!177912))

(assert (= (or b!2752725 b!2752721) bm!177909))

(assert (= (or b!2752725 b!2752723) bm!177916))

(assert (= (or b!2752725 b!2752723) bm!177911))

(assert (= (or b!2752725 b!2752721) bm!177915))

(assert (= (or b!2752725 b!2752721) bm!177918))

(assert (= (and bm!177918 c!445439) b!2752719))

(assert (= (and bm!177918 (not c!445439)) b!2752720))

(declare-fun m!3167959 () Bool)

(assert (=> bm!177914 m!3167959))

(declare-fun m!3167961 () Bool)

(assert (=> bm!177916 m!3167961))

(assert (=> b!2752721 m!3167571))

(declare-fun m!3167963 () Bool)

(assert (=> bm!177918 m!3167963))

(declare-fun m!3167965 () Bool)

(assert (=> d!796795 m!3167965))

(assert (=> d!796795 m!3167571))

(declare-fun m!3167967 () Bool)

(assert (=> d!796795 m!3167967))

(assert (=> d!796795 m!3167571))

(declare-fun m!3167969 () Bool)

(assert (=> d!796795 m!3167969))

(assert (=> d!796795 m!3167563))

(declare-fun m!3167971 () Bool)

(assert (=> d!796795 m!3167971))

(assert (=> d!796795 m!3167563))

(assert (=> d!796795 m!3167571))

(declare-fun m!3167973 () Bool)

(assert (=> d!796795 m!3167973))

(declare-fun m!3167975 () Bool)

(assert (=> d!796795 m!3167975))

(assert (=> d!796795 m!3167571))

(declare-fun m!3167977 () Bool)

(assert (=> d!796795 m!3167977))

(declare-fun m!3167979 () Bool)

(assert (=> bm!177911 m!3167979))

(declare-fun m!3167981 () Bool)

(assert (=> bm!177917 m!3167981))

(assert (=> b!2752720 m!3167571))

(declare-fun m!3167983 () Bool)

(assert (=> bm!177910 m!3167983))

(assert (=> bm!177913 m!3167903))

(assert (=> b!2752723 m!3167859))

(declare-fun m!3167985 () Bool)

(assert (=> b!2752723 m!3167985))

(declare-fun m!3167987 () Bool)

(assert (=> b!2752723 m!3167987))

(assert (=> b!2752723 m!3167909))

(declare-fun m!3167989 () Bool)

(assert (=> b!2752723 m!3167989))

(assert (=> b!2752723 m!3167903))

(assert (=> b!2752723 m!3167571))

(assert (=> b!2752723 m!3167573))

(declare-fun m!3167991 () Bool)

(assert (=> b!2752723 m!3167991))

(declare-fun m!3167993 () Bool)

(assert (=> b!2752723 m!3167993))

(declare-fun m!3167995 () Bool)

(assert (=> b!2752723 m!3167995))

(declare-fun m!3167997 () Bool)

(assert (=> b!2752723 m!3167997))

(declare-fun m!3167999 () Bool)

(assert (=> b!2752723 m!3167999))

(declare-fun m!3168001 () Bool)

(assert (=> b!2752723 m!3168001))

(declare-fun m!3168003 () Bool)

(assert (=> b!2752723 m!3168003))

(declare-fun m!3168005 () Bool)

(assert (=> b!2752723 m!3168005))

(assert (=> b!2752723 m!3167997))

(declare-fun m!3168007 () Bool)

(assert (=> b!2752723 m!3168007))

(declare-fun m!3168009 () Bool)

(assert (=> b!2752723 m!3168009))

(assert (=> b!2752723 m!3167959))

(assert (=> b!2752723 m!3167985))

(assert (=> b!2752723 m!3167995))

(declare-fun m!3168011 () Bool)

(assert (=> b!2752723 m!3168011))

(declare-fun m!3168013 () Bool)

(assert (=> b!2752723 m!3168013))

(assert (=> b!2752723 m!3167993))

(declare-fun m!3168015 () Bool)

(assert (=> b!2752723 m!3168015))

(declare-fun m!3168017 () Bool)

(assert (=> bm!177909 m!3168017))

(declare-fun m!3168019 () Bool)

(assert (=> bm!177915 m!3168019))

(declare-fun m!3168021 () Bool)

(assert (=> bm!177912 m!3168021))

(assert (=> bm!177859 d!796795))

(declare-fun d!796797 () Bool)

(assert (=> d!796797 (= (array_inv!4219 (_keys!4015 (v!33471 (underlying!7633 (v!33472 (underlying!7634 (cache!3764 cacheDown!939))))))) (bvsge (size!24622 (_keys!4015 (v!33471 (underlying!7633 (v!33472 (underlying!7634 (cache!3764 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2752506 d!796797))

(declare-fun d!796799 () Bool)

(assert (=> d!796799 (= (array_inv!4220 (_values!3996 (v!33471 (underlying!7633 (v!33472 (underlying!7634 (cache!3764 cacheDown!939))))))) (bvsge (size!24623 (_values!3996 (v!33471 (underlying!7633 (v!33472 (underlying!7634 (cache!3764 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2752506 d!796799))

(declare-fun d!796801 () Bool)

(assert (=> d!796801 (= (valid!2882 (_3!2779 lt!974201)) (validCacheMapDown!382 (cache!3764 (_3!2779 lt!974201))))))

(declare-fun bs!490482 () Bool)

(assert (= bs!490482 d!796801))

(declare-fun m!3168023 () Bool)

(assert (=> bs!490482 m!3168023))

(assert (=> b!2752509 d!796801))

(assert (=> bm!177852 d!796773))

(declare-fun d!796803 () Bool)

(assert (=> d!796803 (= (valid!2882 (_3!2779 lt!974183)) (validCacheMapDown!382 (cache!3764 (_3!2779 lt!974183))))))

(declare-fun bs!490483 () Bool)

(assert (= bs!490483 d!796803))

(declare-fun m!3168025 () Bool)

(assert (=> bs!490483 m!3168025))

(assert (=> b!2752478 d!796803))

(declare-fun d!796805 () Bool)

(declare-fun e!1735546 () Bool)

(assert (=> d!796805 e!1735546))

(declare-fun res!1153971 () Bool)

(assert (=> d!796805 (=> (not res!1153971) (not e!1735546))))

(declare-fun lt!974521 () tuple3!4622)

(assert (=> d!796805 (= res!1153971 (= (_1!18708 lt!974521) (derivationStepZipper!345 z!3597 lt!974190)))))

(declare-fun choose!16115 ((InoxSet Context!4542) C!16264 CacheUp!2326 CacheDown!2446) tuple3!4622)

(assert (=> d!796805 (= lt!974521 (choose!16115 z!3597 lt!974190 (_2!18706 lt!974201) (_3!2779 lt!974201)))))

(assert (=> d!796805 (= (derivationStepZipperMem!76 z!3597 lt!974190 (_2!18706 lt!974201) (_3!2779 lt!974201)) lt!974521)))

(declare-fun b!2752731 () Bool)

(declare-fun res!1153972 () Bool)

(assert (=> b!2752731 (=> (not res!1153972) (not e!1735546))))

(assert (=> b!2752731 (= res!1153972 (valid!2883 (_2!18708 lt!974521)))))

(declare-fun b!2752732 () Bool)

(assert (=> b!2752732 (= e!1735546 (valid!2882 (_3!2781 lt!974521)))))

(assert (= (and d!796805 res!1153971) b!2752731))

(assert (= (and b!2752731 res!1153972) b!2752732))

(declare-fun m!3168027 () Bool)

(assert (=> d!796805 m!3168027))

(declare-fun m!3168029 () Bool)

(assert (=> d!796805 m!3168029))

(declare-fun m!3168031 () Bool)

(assert (=> b!2752731 m!3168031))

(declare-fun m!3168033 () Bool)

(assert (=> b!2752732 m!3168033))

(assert (=> bm!177851 d!796805))

(declare-fun tp!869686 () Bool)

(declare-fun e!1735555 () Bool)

(declare-fun b!2752741 () Bool)

(declare-fun e!1735554 () Bool)

(declare-fun tp_is_empty!13987 () Bool)

(declare-fun setRes!22011 () Bool)

(assert (=> b!2752741 (= e!1735554 (and (inv!43260 (_1!18702 (_1!18703 (h!37281 mapDefault!16885)))) e!1735555 tp_is_empty!13987 setRes!22011 tp!869686))))

(declare-fun condSetEmpty!22011 () Bool)

(assert (=> b!2752741 (= condSetEmpty!22011 (= (_2!18703 (h!37281 mapDefault!16885)) ((as const (Array Context!4542 Bool)) false)))))

(declare-fun b!2752742 () Bool)

(declare-fun e!1735553 () Bool)

(declare-fun tp!869688 () Bool)

(assert (=> b!2752742 (= e!1735553 tp!869688)))

(declare-fun setIsEmpty!22011 () Bool)

(assert (=> setIsEmpty!22011 setRes!22011))

(assert (=> b!2752494 (= tp!869675 e!1735554)))

(declare-fun setNonEmpty!22011 () Bool)

(declare-fun setElem!22011 () Context!4542)

(declare-fun tp!869685 () Bool)

(assert (=> setNonEmpty!22011 (= setRes!22011 (and tp!869685 (inv!43260 setElem!22011) e!1735553))))

(declare-fun setRest!22011 () (InoxSet Context!4542))

(assert (=> setNonEmpty!22011 (= (_2!18703 (h!37281 mapDefault!16885)) ((_ map or) (store ((as const (Array Context!4542 Bool)) false) setElem!22011 true) setRest!22011))))

(declare-fun b!2752743 () Bool)

(declare-fun tp!869687 () Bool)

(assert (=> b!2752743 (= e!1735555 tp!869687)))

(assert (= b!2752741 b!2752743))

(assert (= (and b!2752741 condSetEmpty!22011) setIsEmpty!22011))

(assert (= (and b!2752741 (not condSetEmpty!22011)) setNonEmpty!22011))

(assert (= setNonEmpty!22011 b!2752742))

(assert (= (and b!2752494 ((_ is Cons!31861) mapDefault!16885)) b!2752741))

(declare-fun m!3168035 () Bool)

(assert (=> b!2752741 m!3168035))

(declare-fun m!3168037 () Bool)

(assert (=> setNonEmpty!22011 m!3168037))

(declare-fun e!1735557 () Bool)

(declare-fun setRes!22012 () Bool)

(declare-fun tp!869690 () Bool)

(declare-fun b!2752744 () Bool)

(declare-fun e!1735558 () Bool)

(assert (=> b!2752744 (= e!1735557 (and (inv!43260 (_1!18702 (_1!18703 (h!37281 (zeroValue!3973 (v!33469 (underlying!7631 (v!33470 (underlying!7632 (cache!3763 cacheUp!820)))))))))) e!1735558 tp_is_empty!13987 setRes!22012 tp!869690))))

(declare-fun condSetEmpty!22012 () Bool)

(assert (=> b!2752744 (= condSetEmpty!22012 (= (_2!18703 (h!37281 (zeroValue!3973 (v!33469 (underlying!7631 (v!33470 (underlying!7632 (cache!3763 cacheUp!820)))))))) ((as const (Array Context!4542 Bool)) false)))))

(declare-fun b!2752745 () Bool)

(declare-fun e!1735556 () Bool)

(declare-fun tp!869692 () Bool)

(assert (=> b!2752745 (= e!1735556 tp!869692)))

(declare-fun setIsEmpty!22012 () Bool)

(assert (=> setIsEmpty!22012 setRes!22012))

(assert (=> b!2752510 (= tp!869660 e!1735557)))

(declare-fun tp!869689 () Bool)

(declare-fun setElem!22012 () Context!4542)

(declare-fun setNonEmpty!22012 () Bool)

(assert (=> setNonEmpty!22012 (= setRes!22012 (and tp!869689 (inv!43260 setElem!22012) e!1735556))))

(declare-fun setRest!22012 () (InoxSet Context!4542))

(assert (=> setNonEmpty!22012 (= (_2!18703 (h!37281 (zeroValue!3973 (v!33469 (underlying!7631 (v!33470 (underlying!7632 (cache!3763 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4542 Bool)) false) setElem!22012 true) setRest!22012))))

(declare-fun b!2752746 () Bool)

(declare-fun tp!869691 () Bool)

(assert (=> b!2752746 (= e!1735558 tp!869691)))

(assert (= b!2752744 b!2752746))

(assert (= (and b!2752744 condSetEmpty!22012) setIsEmpty!22012))

(assert (= (and b!2752744 (not condSetEmpty!22012)) setNonEmpty!22012))

(assert (= setNonEmpty!22012 b!2752745))

(assert (= (and b!2752510 ((_ is Cons!31861) (zeroValue!3973 (v!33469 (underlying!7631 (v!33470 (underlying!7632 (cache!3763 cacheUp!820)))))))) b!2752744))

(declare-fun m!3168039 () Bool)

(assert (=> b!2752744 m!3168039))

(declare-fun m!3168041 () Bool)

(assert (=> setNonEmpty!22012 m!3168041))

(declare-fun e!1735561 () Bool)

(declare-fun e!1735560 () Bool)

(declare-fun b!2752747 () Bool)

(declare-fun tp!869694 () Bool)

(declare-fun setRes!22013 () Bool)

(assert (=> b!2752747 (= e!1735560 (and (inv!43260 (_1!18702 (_1!18703 (h!37281 (minValue!3973 (v!33469 (underlying!7631 (v!33470 (underlying!7632 (cache!3763 cacheUp!820)))))))))) e!1735561 tp_is_empty!13987 setRes!22013 tp!869694))))

(declare-fun condSetEmpty!22013 () Bool)

(assert (=> b!2752747 (= condSetEmpty!22013 (= (_2!18703 (h!37281 (minValue!3973 (v!33469 (underlying!7631 (v!33470 (underlying!7632 (cache!3763 cacheUp!820)))))))) ((as const (Array Context!4542 Bool)) false)))))

(declare-fun b!2752748 () Bool)

(declare-fun e!1735559 () Bool)

(declare-fun tp!869696 () Bool)

(assert (=> b!2752748 (= e!1735559 tp!869696)))

(declare-fun setIsEmpty!22013 () Bool)

(assert (=> setIsEmpty!22013 setRes!22013))

(assert (=> b!2752510 (= tp!869669 e!1735560)))

(declare-fun tp!869693 () Bool)

(declare-fun setElem!22013 () Context!4542)

(declare-fun setNonEmpty!22013 () Bool)

(assert (=> setNonEmpty!22013 (= setRes!22013 (and tp!869693 (inv!43260 setElem!22013) e!1735559))))

(declare-fun setRest!22013 () (InoxSet Context!4542))

(assert (=> setNonEmpty!22013 (= (_2!18703 (h!37281 (minValue!3973 (v!33469 (underlying!7631 (v!33470 (underlying!7632 (cache!3763 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4542 Bool)) false) setElem!22013 true) setRest!22013))))

(declare-fun b!2752749 () Bool)

(declare-fun tp!869695 () Bool)

(assert (=> b!2752749 (= e!1735561 tp!869695)))

(assert (= b!2752747 b!2752749))

(assert (= (and b!2752747 condSetEmpty!22013) setIsEmpty!22013))

(assert (= (and b!2752747 (not condSetEmpty!22013)) setNonEmpty!22013))

(assert (= setNonEmpty!22013 b!2752748))

(assert (= (and b!2752510 ((_ is Cons!31861) (minValue!3973 (v!33469 (underlying!7631 (v!33470 (underlying!7632 (cache!3763 cacheUp!820)))))))) b!2752747))

(declare-fun m!3168043 () Bool)

(assert (=> b!2752747 m!3168043))

(declare-fun m!3168045 () Bool)

(assert (=> setNonEmpty!22013 m!3168045))

(declare-fun condSetEmpty!22016 () Bool)

(assert (=> setNonEmpty!22008 (= condSetEmpty!22016 (= setRest!22008 ((as const (Array Context!4542 Bool)) false)))))

(declare-fun setRes!22016 () Bool)

(assert (=> setNonEmpty!22008 (= tp!869666 setRes!22016)))

(declare-fun setIsEmpty!22016 () Bool)

(assert (=> setIsEmpty!22016 setRes!22016))

(declare-fun setElem!22016 () Context!4542)

(declare-fun e!1735564 () Bool)

(declare-fun tp!869701 () Bool)

(declare-fun setNonEmpty!22016 () Bool)

(assert (=> setNonEmpty!22016 (= setRes!22016 (and tp!869701 (inv!43260 setElem!22016) e!1735564))))

(declare-fun setRest!22016 () (InoxSet Context!4542))

(assert (=> setNonEmpty!22016 (= setRest!22008 ((_ map or) (store ((as const (Array Context!4542 Bool)) false) setElem!22016 true) setRest!22016))))

(declare-fun b!2752754 () Bool)

(declare-fun tp!869702 () Bool)

(assert (=> b!2752754 (= e!1735564 tp!869702)))

(assert (= (and setNonEmpty!22008 condSetEmpty!22016) setIsEmpty!22016))

(assert (= (and setNonEmpty!22008 (not condSetEmpty!22016)) setNonEmpty!22016))

(assert (= setNonEmpty!22016 b!2752754))

(declare-fun m!3168047 () Bool)

(assert (=> setNonEmpty!22016 m!3168047))

(declare-fun setIsEmpty!22019 () Bool)

(declare-fun setRes!22019 () Bool)

(assert (=> setIsEmpty!22019 setRes!22019))

(declare-fun b!2752764 () Bool)

(declare-fun e!1735571 () Bool)

(declare-fun tp!869716 () Bool)

(assert (=> b!2752764 (= e!1735571 tp!869716)))

(declare-fun e!1735572 () Bool)

(declare-fun e!1735573 () Bool)

(declare-fun b!2752765 () Bool)

(declare-fun tp!869713 () Bool)

(declare-fun tp!869715 () Bool)

(assert (=> b!2752765 (= e!1735573 (and tp!869713 (inv!43260 (_2!18704 (_1!18705 (h!37282 mapDefault!16886)))) e!1735572 tp_is_empty!13987 setRes!22019 tp!869715))))

(declare-fun condSetEmpty!22019 () Bool)

(assert (=> b!2752765 (= condSetEmpty!22019 (= (_2!18705 (h!37282 mapDefault!16886)) ((as const (Array Context!4542 Bool)) false)))))

(declare-fun setNonEmpty!22019 () Bool)

(declare-fun setElem!22019 () Context!4542)

(declare-fun tp!869714 () Bool)

(assert (=> setNonEmpty!22019 (= setRes!22019 (and tp!869714 (inv!43260 setElem!22019) e!1735571))))

(declare-fun setRest!22019 () (InoxSet Context!4542))

(assert (=> setNonEmpty!22019 (= (_2!18705 (h!37282 mapDefault!16886)) ((_ map or) (store ((as const (Array Context!4542 Bool)) false) setElem!22019 true) setRest!22019))))

(assert (=> b!2752490 (= tp!869662 e!1735573)))

(declare-fun b!2752763 () Bool)

(declare-fun tp!869717 () Bool)

(assert (=> b!2752763 (= e!1735572 tp!869717)))

(assert (= b!2752765 b!2752763))

(assert (= (and b!2752765 condSetEmpty!22019) setIsEmpty!22019))

(assert (= (and b!2752765 (not condSetEmpty!22019)) setNonEmpty!22019))

(assert (= setNonEmpty!22019 b!2752764))

(assert (= (and b!2752490 ((_ is Cons!31862) mapDefault!16886)) b!2752765))

(declare-fun m!3168049 () Bool)

(assert (=> b!2752765 m!3168049))

(declare-fun m!3168051 () Bool)

(assert (=> setNonEmpty!22019 m!3168051))

(declare-fun mapNonEmpty!16889 () Bool)

(declare-fun mapRes!16889 () Bool)

(declare-fun tp!869749 () Bool)

(declare-fun e!1735590 () Bool)

(assert (=> mapNonEmpty!16889 (= mapRes!16889 (and tp!869749 e!1735590))))

(declare-fun mapKey!16889 () (_ BitVec 32))

(declare-fun mapValue!16889 () List!31962)

(declare-fun mapRest!16889 () (Array (_ BitVec 32) List!31962))

(assert (=> mapNonEmpty!16889 (= mapRest!16885 (store mapRest!16889 mapKey!16889 mapValue!16889))))

(declare-fun setRes!22024 () Bool)

(declare-fun e!1735587 () Bool)

(declare-fun tp!869748 () Bool)

(declare-fun setNonEmpty!22024 () Bool)

(declare-fun setElem!22025 () Context!4542)

(assert (=> setNonEmpty!22024 (= setRes!22024 (and tp!869748 (inv!43260 setElem!22025) e!1735587))))

(declare-fun mapDefault!16889 () List!31962)

(declare-fun setRest!22024 () (InoxSet Context!4542))

(assert (=> setNonEmpty!22024 (= (_2!18705 (h!37282 mapDefault!16889)) ((_ map or) (store ((as const (Array Context!4542 Bool)) false) setElem!22025 true) setRest!22024))))

(declare-fun tp!869742 () Bool)

(declare-fun e!1735586 () Bool)

(declare-fun setElem!22024 () Context!4542)

(declare-fun setRes!22025 () Bool)

(declare-fun setNonEmpty!22025 () Bool)

(assert (=> setNonEmpty!22025 (= setRes!22025 (and tp!869742 (inv!43260 setElem!22024) e!1735586))))

(declare-fun setRest!22025 () (InoxSet Context!4542))

(assert (=> setNonEmpty!22025 (= (_2!18705 (h!37282 mapValue!16889)) ((_ map or) (store ((as const (Array Context!4542 Bool)) false) setElem!22024 true) setRest!22025))))

(declare-fun setIsEmpty!22024 () Bool)

(assert (=> setIsEmpty!22024 setRes!22024))

(declare-fun b!2752781 () Bool)

(declare-fun e!1735589 () Bool)

(declare-fun tp!869743 () Bool)

(declare-fun e!1735591 () Bool)

(declare-fun tp!869746 () Bool)

(assert (=> b!2752781 (= e!1735589 (and tp!869746 (inv!43260 (_2!18704 (_1!18705 (h!37282 mapDefault!16889)))) e!1735591 tp_is_empty!13987 setRes!22024 tp!869743))))

(declare-fun condSetEmpty!22024 () Bool)

(assert (=> b!2752781 (= condSetEmpty!22024 (= (_2!18705 (h!37282 mapDefault!16889)) ((as const (Array Context!4542 Bool)) false)))))

(declare-fun b!2752782 () Bool)

(declare-fun e!1735588 () Bool)

(declare-fun tp!869747 () Bool)

(assert (=> b!2752782 (= e!1735588 tp!869747)))

(declare-fun setIsEmpty!22025 () Bool)

(assert (=> setIsEmpty!22025 setRes!22025))

(declare-fun b!2752783 () Bool)

(declare-fun tp!869744 () Bool)

(assert (=> b!2752783 (= e!1735587 tp!869744)))

(declare-fun b!2752784 () Bool)

(declare-fun tp!869740 () Bool)

(assert (=> b!2752784 (= e!1735586 tp!869740)))

(declare-fun b!2752785 () Bool)

(declare-fun tp!869750 () Bool)

(assert (=> b!2752785 (= e!1735591 tp!869750)))

(declare-fun mapIsEmpty!16889 () Bool)

(assert (=> mapIsEmpty!16889 mapRes!16889))

(declare-fun condMapEmpty!16889 () Bool)

(assert (=> mapNonEmpty!16885 (= condMapEmpty!16889 (= mapRest!16885 ((as const (Array (_ BitVec 32) List!31962)) mapDefault!16889)))))

(assert (=> mapNonEmpty!16885 (= tp!869668 (and e!1735589 mapRes!16889))))

(declare-fun b!2752780 () Bool)

(declare-fun tp!869745 () Bool)

(declare-fun tp!869741 () Bool)

(assert (=> b!2752780 (= e!1735590 (and tp!869745 (inv!43260 (_2!18704 (_1!18705 (h!37282 mapValue!16889)))) e!1735588 tp_is_empty!13987 setRes!22025 tp!869741))))

(declare-fun condSetEmpty!22025 () Bool)

(assert (=> b!2752780 (= condSetEmpty!22025 (= (_2!18705 (h!37282 mapValue!16889)) ((as const (Array Context!4542 Bool)) false)))))

(assert (= (and mapNonEmpty!16885 condMapEmpty!16889) mapIsEmpty!16889))

(assert (= (and mapNonEmpty!16885 (not condMapEmpty!16889)) mapNonEmpty!16889))

(assert (= b!2752780 b!2752782))

(assert (= (and b!2752780 condSetEmpty!22025) setIsEmpty!22025))

(assert (= (and b!2752780 (not condSetEmpty!22025)) setNonEmpty!22025))

(assert (= setNonEmpty!22025 b!2752784))

(assert (= (and mapNonEmpty!16889 ((_ is Cons!31862) mapValue!16889)) b!2752780))

(assert (= b!2752781 b!2752785))

(assert (= (and b!2752781 condSetEmpty!22024) setIsEmpty!22024))

(assert (= (and b!2752781 (not condSetEmpty!22024)) setNonEmpty!22024))

(assert (= setNonEmpty!22024 b!2752783))

(assert (= (and mapNonEmpty!16885 ((_ is Cons!31862) mapDefault!16889)) b!2752781))

(declare-fun m!3168053 () Bool)

(assert (=> mapNonEmpty!16889 m!3168053))

(declare-fun m!3168055 () Bool)

(assert (=> b!2752781 m!3168055))

(declare-fun m!3168057 () Bool)

(assert (=> setNonEmpty!22024 m!3168057))

(declare-fun m!3168059 () Bool)

(assert (=> b!2752780 m!3168059))

(declare-fun m!3168061 () Bool)

(assert (=> setNonEmpty!22025 m!3168061))

(declare-fun setIsEmpty!22026 () Bool)

(declare-fun setRes!22026 () Bool)

(assert (=> setIsEmpty!22026 setRes!22026))

(declare-fun b!2752787 () Bool)

(declare-fun e!1735592 () Bool)

(declare-fun tp!869754 () Bool)

(assert (=> b!2752787 (= e!1735592 tp!869754)))

(declare-fun tp!869751 () Bool)

(declare-fun b!2752788 () Bool)

(declare-fun e!1735594 () Bool)

(declare-fun e!1735593 () Bool)

(declare-fun tp!869753 () Bool)

(assert (=> b!2752788 (= e!1735594 (and tp!869751 (inv!43260 (_2!18704 (_1!18705 (h!37282 mapValue!16886)))) e!1735593 tp_is_empty!13987 setRes!22026 tp!869753))))

(declare-fun condSetEmpty!22026 () Bool)

(assert (=> b!2752788 (= condSetEmpty!22026 (= (_2!18705 (h!37282 mapValue!16886)) ((as const (Array Context!4542 Bool)) false)))))

(declare-fun setElem!22026 () Context!4542)

(declare-fun setNonEmpty!22026 () Bool)

(declare-fun tp!869752 () Bool)

(assert (=> setNonEmpty!22026 (= setRes!22026 (and tp!869752 (inv!43260 setElem!22026) e!1735592))))

(declare-fun setRest!22026 () (InoxSet Context!4542))

(assert (=> setNonEmpty!22026 (= (_2!18705 (h!37282 mapValue!16886)) ((_ map or) (store ((as const (Array Context!4542 Bool)) false) setElem!22026 true) setRest!22026))))

(assert (=> mapNonEmpty!16885 (= tp!869673 e!1735594)))

(declare-fun b!2752786 () Bool)

(declare-fun tp!869755 () Bool)

(assert (=> b!2752786 (= e!1735593 tp!869755)))

(assert (= b!2752788 b!2752786))

(assert (= (and b!2752788 condSetEmpty!22026) setIsEmpty!22026))

(assert (= (and b!2752788 (not condSetEmpty!22026)) setNonEmpty!22026))

(assert (= setNonEmpty!22026 b!2752787))

(assert (= (and mapNonEmpty!16885 ((_ is Cons!31862) mapValue!16886)) b!2752788))

(declare-fun m!3168063 () Bool)

(assert (=> b!2752788 m!3168063))

(declare-fun m!3168065 () Bool)

(assert (=> setNonEmpty!22026 m!3168065))

(declare-fun b!2752797 () Bool)

(declare-fun tp!869764 () Bool)

(declare-fun tp!869763 () Bool)

(declare-fun e!1735599 () Bool)

(assert (=> b!2752797 (= e!1735599 (and (inv!43259 (left!24323 (c!445361 input!5495))) tp!869763 (inv!43259 (right!24653 (c!445361 input!5495))) tp!869764))))

(declare-fun b!2752799 () Bool)

(declare-fun e!1735600 () Bool)

(declare-fun tp!869762 () Bool)

(assert (=> b!2752799 (= e!1735600 tp!869762)))

(declare-fun b!2752798 () Bool)

(declare-fun inv!43266 (IArray!19875) Bool)

(assert (=> b!2752798 (= e!1735599 (and (inv!43266 (xs!13042 (c!445361 input!5495))) e!1735600))))

(assert (=> b!2752504 (= tp!869672 (and (inv!43259 (c!445361 input!5495)) e!1735599))))

(assert (= (and b!2752504 ((_ is Node!9935) (c!445361 input!5495))) b!2752797))

(assert (= b!2752798 b!2752799))

(assert (= (and b!2752504 ((_ is Leaf!15130) (c!445361 input!5495))) b!2752798))

(declare-fun m!3168067 () Bool)

(assert (=> b!2752797 m!3168067))

(declare-fun m!3168069 () Bool)

(assert (=> b!2752797 m!3168069))

(declare-fun m!3168071 () Bool)

(assert (=> b!2752798 m!3168071))

(assert (=> b!2752504 m!3167545))

(declare-fun setIsEmpty!22031 () Bool)

(declare-fun setRes!22032 () Bool)

(assert (=> setIsEmpty!22031 setRes!22032))

(declare-fun b!2752814 () Bool)

(declare-fun e!1735614 () Bool)

(declare-fun tp!869790 () Bool)

(assert (=> b!2752814 (= e!1735614 tp!869790)))

(declare-fun b!2752815 () Bool)

(declare-fun e!1735615 () Bool)

(declare-fun tp!869785 () Bool)

(assert (=> b!2752815 (= e!1735615 tp!869785)))

(declare-fun tp!869786 () Bool)

(declare-fun setElem!22032 () Context!4542)

(declare-fun e!1735616 () Bool)

(declare-fun setNonEmpty!22031 () Bool)

(declare-fun setRes!22031 () Bool)

(assert (=> setNonEmpty!22031 (= setRes!22031 (and tp!869786 (inv!43260 setElem!22032) e!1735616))))

(declare-fun mapDefault!16892 () List!31961)

(declare-fun setRest!22032 () (InoxSet Context!4542))

(assert (=> setNonEmpty!22031 (= (_2!18703 (h!37281 mapDefault!16892)) ((_ map or) (store ((as const (Array Context!4542 Bool)) false) setElem!22032 true) setRest!22032))))

(declare-fun setIsEmpty!22032 () Bool)

(assert (=> setIsEmpty!22032 setRes!22031))

(declare-fun mapIsEmpty!16892 () Bool)

(declare-fun mapRes!16892 () Bool)

(assert (=> mapIsEmpty!16892 mapRes!16892))

(declare-fun e!1735613 () Bool)

(declare-fun setNonEmpty!22032 () Bool)

(declare-fun tp!869784 () Bool)

(declare-fun setElem!22031 () Context!4542)

(assert (=> setNonEmpty!22032 (= setRes!22032 (and tp!869784 (inv!43260 setElem!22031) e!1735613))))

(declare-fun mapValue!16892 () List!31961)

(declare-fun setRest!22031 () (InoxSet Context!4542))

(assert (=> setNonEmpty!22032 (= (_2!18703 (h!37281 mapValue!16892)) ((_ map or) (store ((as const (Array Context!4542 Bool)) false) setElem!22031 true) setRest!22031))))

(declare-fun b!2752816 () Bool)

(declare-fun tp!869791 () Bool)

(assert (=> b!2752816 (= e!1735613 tp!869791)))

(declare-fun condMapEmpty!16892 () Bool)

(assert (=> mapNonEmpty!16886 (= condMapEmpty!16892 (= mapRest!16886 ((as const (Array (_ BitVec 32) List!31961)) mapDefault!16892)))))

(declare-fun e!1735617 () Bool)

(assert (=> mapNonEmpty!16886 (= tp!869665 (and e!1735617 mapRes!16892))))

(declare-fun b!2752817 () Bool)

(declare-fun tp!869783 () Bool)

(declare-fun e!1735618 () Bool)

(assert (=> b!2752817 (= e!1735618 (and (inv!43260 (_1!18702 (_1!18703 (h!37281 mapValue!16892)))) e!1735614 tp_is_empty!13987 setRes!22032 tp!869783))))

(declare-fun condSetEmpty!22032 () Bool)

(assert (=> b!2752817 (= condSetEmpty!22032 (= (_2!18703 (h!37281 mapValue!16892)) ((as const (Array Context!4542 Bool)) false)))))

(declare-fun mapNonEmpty!16892 () Bool)

(declare-fun tp!869789 () Bool)

(assert (=> mapNonEmpty!16892 (= mapRes!16892 (and tp!869789 e!1735618))))

(declare-fun mapRest!16892 () (Array (_ BitVec 32) List!31961))

(declare-fun mapKey!16892 () (_ BitVec 32))

(assert (=> mapNonEmpty!16892 (= mapRest!16886 (store mapRest!16892 mapKey!16892 mapValue!16892))))

(declare-fun b!2752818 () Bool)

(declare-fun tp!869788 () Bool)

(assert (=> b!2752818 (= e!1735616 tp!869788)))

(declare-fun tp!869787 () Bool)

(declare-fun b!2752819 () Bool)

(assert (=> b!2752819 (= e!1735617 (and (inv!43260 (_1!18702 (_1!18703 (h!37281 mapDefault!16892)))) e!1735615 tp_is_empty!13987 setRes!22031 tp!869787))))

(declare-fun condSetEmpty!22031 () Bool)

(assert (=> b!2752819 (= condSetEmpty!22031 (= (_2!18703 (h!37281 mapDefault!16892)) ((as const (Array Context!4542 Bool)) false)))))

(assert (= (and mapNonEmpty!16886 condMapEmpty!16892) mapIsEmpty!16892))

(assert (= (and mapNonEmpty!16886 (not condMapEmpty!16892)) mapNonEmpty!16892))

(assert (= b!2752817 b!2752814))

(assert (= (and b!2752817 condSetEmpty!22032) setIsEmpty!22031))

(assert (= (and b!2752817 (not condSetEmpty!22032)) setNonEmpty!22032))

(assert (= setNonEmpty!22032 b!2752816))

(assert (= (and mapNonEmpty!16892 ((_ is Cons!31861) mapValue!16892)) b!2752817))

(assert (= b!2752819 b!2752815))

(assert (= (and b!2752819 condSetEmpty!22031) setIsEmpty!22032))

(assert (= (and b!2752819 (not condSetEmpty!22031)) setNonEmpty!22031))

(assert (= setNonEmpty!22031 b!2752818))

(assert (= (and mapNonEmpty!16886 ((_ is Cons!31861) mapDefault!16892)) b!2752819))

(declare-fun m!3168073 () Bool)

(assert (=> b!2752819 m!3168073))

(declare-fun m!3168075 () Bool)

(assert (=> b!2752817 m!3168075))

(declare-fun m!3168077 () Bool)

(assert (=> setNonEmpty!22031 m!3168077))

(declare-fun m!3168079 () Bool)

(assert (=> mapNonEmpty!16892 m!3168079))

(declare-fun m!3168081 () Bool)

(assert (=> setNonEmpty!22032 m!3168081))

(declare-fun e!1735620 () Bool)

(declare-fun b!2752820 () Bool)

(declare-fun tp!869793 () Bool)

(declare-fun e!1735621 () Bool)

(declare-fun setRes!22033 () Bool)

(assert (=> b!2752820 (= e!1735620 (and (inv!43260 (_1!18702 (_1!18703 (h!37281 mapValue!16885)))) e!1735621 tp_is_empty!13987 setRes!22033 tp!869793))))

(declare-fun condSetEmpty!22033 () Bool)

(assert (=> b!2752820 (= condSetEmpty!22033 (= (_2!18703 (h!37281 mapValue!16885)) ((as const (Array Context!4542 Bool)) false)))))

(declare-fun b!2752821 () Bool)

(declare-fun e!1735619 () Bool)

(declare-fun tp!869795 () Bool)

(assert (=> b!2752821 (= e!1735619 tp!869795)))

(declare-fun setIsEmpty!22033 () Bool)

(assert (=> setIsEmpty!22033 setRes!22033))

(assert (=> mapNonEmpty!16886 (= tp!869661 e!1735620)))

(declare-fun setElem!22033 () Context!4542)

(declare-fun tp!869792 () Bool)

(declare-fun setNonEmpty!22033 () Bool)

(assert (=> setNonEmpty!22033 (= setRes!22033 (and tp!869792 (inv!43260 setElem!22033) e!1735619))))

(declare-fun setRest!22033 () (InoxSet Context!4542))

(assert (=> setNonEmpty!22033 (= (_2!18703 (h!37281 mapValue!16885)) ((_ map or) (store ((as const (Array Context!4542 Bool)) false) setElem!22033 true) setRest!22033))))

(declare-fun b!2752822 () Bool)

(declare-fun tp!869794 () Bool)

(assert (=> b!2752822 (= e!1735621 tp!869794)))

(assert (= b!2752820 b!2752822))

(assert (= (and b!2752820 condSetEmpty!22033) setIsEmpty!22033))

(assert (= (and b!2752820 (not condSetEmpty!22033)) setNonEmpty!22033))

(assert (= setNonEmpty!22033 b!2752821))

(assert (= (and mapNonEmpty!16886 ((_ is Cons!31861) mapValue!16885)) b!2752820))

(declare-fun m!3168083 () Bool)

(assert (=> b!2752820 m!3168083))

(declare-fun m!3168085 () Bool)

(assert (=> setNonEmpty!22033 m!3168085))

(declare-fun setIsEmpty!22034 () Bool)

(declare-fun setRes!22034 () Bool)

(assert (=> setIsEmpty!22034 setRes!22034))

(declare-fun b!2752824 () Bool)

(declare-fun e!1735622 () Bool)

(declare-fun tp!869799 () Bool)

(assert (=> b!2752824 (= e!1735622 tp!869799)))

(declare-fun e!1735624 () Bool)

(declare-fun tp!869796 () Bool)

(declare-fun e!1735623 () Bool)

(declare-fun tp!869798 () Bool)

(declare-fun b!2752825 () Bool)

(assert (=> b!2752825 (= e!1735624 (and tp!869796 (inv!43260 (_2!18704 (_1!18705 (h!37282 (zeroValue!3974 (v!33471 (underlying!7633 (v!33472 (underlying!7634 (cache!3764 cacheDown!939)))))))))) e!1735623 tp_is_empty!13987 setRes!22034 tp!869798))))

(declare-fun condSetEmpty!22034 () Bool)

(assert (=> b!2752825 (= condSetEmpty!22034 (= (_2!18705 (h!37282 (zeroValue!3974 (v!33471 (underlying!7633 (v!33472 (underlying!7634 (cache!3764 cacheDown!939)))))))) ((as const (Array Context!4542 Bool)) false)))))

(declare-fun setElem!22034 () Context!4542)

(declare-fun setNonEmpty!22034 () Bool)

(declare-fun tp!869797 () Bool)

(assert (=> setNonEmpty!22034 (= setRes!22034 (and tp!869797 (inv!43260 setElem!22034) e!1735622))))

(declare-fun setRest!22034 () (InoxSet Context!4542))

(assert (=> setNonEmpty!22034 (= (_2!18705 (h!37282 (zeroValue!3974 (v!33471 (underlying!7633 (v!33472 (underlying!7634 (cache!3764 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4542 Bool)) false) setElem!22034 true) setRest!22034))))

(assert (=> b!2752506 (= tp!869676 e!1735624)))

(declare-fun b!2752823 () Bool)

(declare-fun tp!869800 () Bool)

(assert (=> b!2752823 (= e!1735623 tp!869800)))

(assert (= b!2752825 b!2752823))

(assert (= (and b!2752825 condSetEmpty!22034) setIsEmpty!22034))

(assert (= (and b!2752825 (not condSetEmpty!22034)) setNonEmpty!22034))

(assert (= setNonEmpty!22034 b!2752824))

(assert (= (and b!2752506 ((_ is Cons!31862) (zeroValue!3974 (v!33471 (underlying!7633 (v!33472 (underlying!7634 (cache!3764 cacheDown!939)))))))) b!2752825))

(declare-fun m!3168087 () Bool)

(assert (=> b!2752825 m!3168087))

(declare-fun m!3168089 () Bool)

(assert (=> setNonEmpty!22034 m!3168089))

(declare-fun setIsEmpty!22035 () Bool)

(declare-fun setRes!22035 () Bool)

(assert (=> setIsEmpty!22035 setRes!22035))

(declare-fun b!2752827 () Bool)

(declare-fun e!1735625 () Bool)

(declare-fun tp!869804 () Bool)

(assert (=> b!2752827 (= e!1735625 tp!869804)))

(declare-fun b!2752828 () Bool)

(declare-fun e!1735627 () Bool)

(declare-fun tp!869801 () Bool)

(declare-fun tp!869803 () Bool)

(declare-fun e!1735626 () Bool)

(assert (=> b!2752828 (= e!1735627 (and tp!869801 (inv!43260 (_2!18704 (_1!18705 (h!37282 (minValue!3974 (v!33471 (underlying!7633 (v!33472 (underlying!7634 (cache!3764 cacheDown!939)))))))))) e!1735626 tp_is_empty!13987 setRes!22035 tp!869803))))

(declare-fun condSetEmpty!22035 () Bool)

(assert (=> b!2752828 (= condSetEmpty!22035 (= (_2!18705 (h!37282 (minValue!3974 (v!33471 (underlying!7633 (v!33472 (underlying!7634 (cache!3764 cacheDown!939)))))))) ((as const (Array Context!4542 Bool)) false)))))

(declare-fun setElem!22035 () Context!4542)

(declare-fun tp!869802 () Bool)

(declare-fun setNonEmpty!22035 () Bool)

(assert (=> setNonEmpty!22035 (= setRes!22035 (and tp!869802 (inv!43260 setElem!22035) e!1735625))))

(declare-fun setRest!22035 () (InoxSet Context!4542))

(assert (=> setNonEmpty!22035 (= (_2!18705 (h!37282 (minValue!3974 (v!33471 (underlying!7633 (v!33472 (underlying!7634 (cache!3764 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4542 Bool)) false) setElem!22035 true) setRest!22035))))

(assert (=> b!2752506 (= tp!869674 e!1735627)))

(declare-fun b!2752826 () Bool)

(declare-fun tp!869805 () Bool)

(assert (=> b!2752826 (= e!1735626 tp!869805)))

(assert (= b!2752828 b!2752826))

(assert (= (and b!2752828 condSetEmpty!22035) setIsEmpty!22035))

(assert (= (and b!2752828 (not condSetEmpty!22035)) setNonEmpty!22035))

(assert (= setNonEmpty!22035 b!2752827))

(assert (= (and b!2752506 ((_ is Cons!31862) (minValue!3974 (v!33471 (underlying!7633 (v!33472 (underlying!7634 (cache!3764 cacheDown!939)))))))) b!2752828))

(declare-fun m!3168091 () Bool)

(assert (=> b!2752828 m!3168091))

(declare-fun m!3168093 () Bool)

(assert (=> setNonEmpty!22035 m!3168093))

(declare-fun b!2752833 () Bool)

(declare-fun e!1735630 () Bool)

(declare-fun tp!869810 () Bool)

(declare-fun tp!869811 () Bool)

(assert (=> b!2752833 (= e!1735630 (and tp!869810 tp!869811))))

(assert (=> b!2752514 (= tp!869664 e!1735630)))

(assert (= (and b!2752514 ((_ is Cons!31860) (exprs!2771 setElem!22008))) b!2752833))

(check-sat (not b!2752624) (not b!2752823) (not setNonEmpty!22032) (not b!2752572) (not bm!177904) (not b!2752714) (not b!2752671) (not d!796709) (not setNonEmpty!22012) (not d!796751) (not b!2752664) (not b!2752782) (not d!796723) (not b!2752764) (not b!2752560) (not bm!177880) (not d!796759) (not b!2752784) (not setNonEmpty!22035) (not d!796713) (not d!796715) (not b!2752550) (not d!796705) (not b!2752747) (not d!796771) (not b_next!78599) (not b!2752705) (not b!2752822) (not b!2752816) (not b!2752742) (not d!796693) (not setNonEmpty!22011) (not b!2752598) (not b!2752668) (not b!2752833) (not b_next!78597) (not b!2752590) (not b!2752673) (not d!796801) (not b!2752561) (not b!2752683) (not b!2752731) (not setNonEmpty!22019) (not bm!177905) (not b!2752732) (not d!796795) (not b!2752818) (not b!2752723) (not d!796703) (not b!2752611) (not bm!177895) (not d!796741) (not d!796737) (not b!2752630) (not b!2752820) (not bm!177886) (not b!2752787) (not b!2752603) (not d!796745) (not bm!177902) (not bm!177903) (not b!2752691) (not b!2752583) (not b_next!78601) (not d!796739) (not d!796805) (not d!796775) (not bm!177910) (not mapNonEmpty!16892) (not b!2752712) (not b!2752765) (not bm!177915) (not b!2752798) (not setNonEmpty!22025) (not bm!177883) (not bm!177887) (not bm!177898) (not b!2752619) (not b!2752694) (not setNonEmpty!22016) (not d!796761) (not b!2752785) (not b!2752606) (not b!2752783) (not d!796707) b_and!202635 (not b!2752654) (not d!796711) (not b!2752814) (not b!2752780) (not b!2752584) (not b!2752549) (not b!2752601) (not b!2752749) (not bm!177909) (not b!2752620) (not d!796769) (not setNonEmpty!22031) (not setNonEmpty!22033) (not b!2752745) (not d!796767) (not b!2752824) b_and!202631 (not bm!177900) (not bm!177882) (not b!2752819) (not b!2752633) (not bm!177901) (not d!796743) (not bm!177894) (not setNonEmpty!22013) (not d!796681) (not setNonEmpty!22024) (not b!2752667) b_and!202637 (not bm!177889) (not bm!177911) (not b!2752682) (not b!2752677) (not d!796721) (not bm!177916) (not setNonEmpty!22026) (not d!796779) (not d!796783) (not b!2752678) (not b!2752602) (not b!2752815) (not d!796731) (not bm!177899) (not b!2752828) (not b!2752817) (not d!796765) (not b!2752788) (not bm!177906) (not b!2752781) (not b!2752663) (not b!2752721) (not bm!177913) (not bm!177914) (not b!2752720) (not bm!177888) (not b!2752748) (not d!796699) (not b!2752826) (not b!2752585) (not d!796803) (not setNonEmpty!22034) (not d!796697) (not d!796763) (not b!2752746) (not b!2752692) (not d!796691) (not b!2752552) (not b!2752825) (not b_next!78603) (not b!2752786) (not b!2752632) (not bm!177884) (not d!796683) (not b!2752827) (not b!2752591) (not b!2752763) (not b!2752797) (not d!796777) (not b!2752681) (not d!796781) (not bm!177912) (not b!2752596) (not b!2752599) (not d!796733) (not b!2752653) (not d!796727) tp_is_empty!13987 (not bm!177908) (not b!2752699) (not d!796689) (not d!796695) (not b!2752744) (not mapNonEmpty!16889) (not bm!177907) (not b!2752799) (not bm!177917) (not d!796753) (not d!796785) (not b!2752821) b_and!202633 (not b!2752612) (not b!2752698) (not b!2752621) (not b!2752743) (not bm!177885) (not d!796757) (not d!796747) (not b!2752504) (not b!2752702) (not d!796749) (not d!796791) (not b!2752754) (not b!2752741) (not b!2752674) (not bm!177918) (not bm!177881) (not b!2752571))
(check-sat (not b_next!78599) (not b_next!78597) (not b_next!78601) b_and!202635 b_and!202631 b_and!202637 (not b_next!78603) b_and!202633)
