; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208874 () Bool)

(assert start!208874)

(declare-fun b!2152968 () Bool)

(declare-fun b_free!63573 () Bool)

(declare-fun b_next!64277 () Bool)

(assert (=> b!2152968 (= b_free!63573 (not b_next!64277))))

(declare-fun tp!669442 () Bool)

(declare-fun b_and!173189 () Bool)

(assert (=> b!2152968 (= tp!669442 b_and!173189)))

(declare-fun b!2152952 () Bool)

(declare-fun b_free!63575 () Bool)

(declare-fun b_next!64279 () Bool)

(assert (=> b!2152952 (= b_free!63575 (not b_next!64279))))

(declare-fun tp!669435 () Bool)

(declare-fun b_and!173191 () Bool)

(assert (=> b!2152952 (= tp!669435 b_and!173191)))

(declare-fun b!2152959 () Bool)

(assert (=> b!2152959 true))

(declare-fun bs!445710 () Bool)

(declare-fun b!2152956 () Bool)

(assert (= bs!445710 (and b!2152956 b!2152959)))

(declare-fun lambda!81134 () Int)

(declare-fun lambda!81133 () Int)

(assert (=> bs!445710 (not (= lambda!81134 lambda!81133))))

(assert (=> b!2152956 true))

(declare-datatypes ((C!11936 0))(
  ( (C!11937 (val!6954 Int)) )
))
(declare-datatypes ((Regex!5895 0))(
  ( (ElementMatch!5895 (c!341387 C!11936)) (Concat!10197 (regOne!12302 Regex!5895) (regTwo!12302 Regex!5895)) (EmptyExpr!5895) (Star!5895 (reg!6224 Regex!5895)) (EmptyLang!5895) (Union!5895 (regOne!12303 Regex!5895) (regTwo!12303 Regex!5895)) )
))
(declare-datatypes ((List!24855 0))(
  ( (Nil!24771) (Cons!24771 (h!30172 Regex!5895) (t!197403 List!24855)) )
))
(declare-datatypes ((Context!2930 0))(
  ( (Context!2931 (exprs!1965 List!24855)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3674 0))(
  ( (tuple3!3675 (_1!14567 (InoxSet Context!2930)) (_2!14567 Int) (_3!2307 Int)) )
))
(declare-datatypes ((tuple2!24520 0))(
  ( (tuple2!24521 (_1!14568 tuple3!3674) (_2!14568 Int)) )
))
(declare-datatypes ((List!24856 0))(
  ( (Nil!24772) (Cons!24772 (h!30173 tuple2!24520) (t!197404 List!24856)) )
))
(declare-datatypes ((array!9829 0))(
  ( (array!9830 (arr!4388 (Array (_ BitVec 32) (_ BitVec 64))) (size!19355 (_ BitVec 32))) )
))
(declare-datatypes ((array!9831 0))(
  ( (array!9832 (arr!4389 (Array (_ BitVec 32) List!24856)) (size!19356 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5792 0))(
  ( (LongMapFixedSize!5793 (defaultEntry!3261 Int) (mask!7159 (_ BitVec 32)) (extraKeys!3144 (_ BitVec 32)) (zeroValue!3154 List!24856) (minValue!3154 List!24856) (_size!5843 (_ BitVec 32)) (_keys!3193 array!9829) (_values!3176 array!9831) (_vacant!2957 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11409 0))(
  ( (Cell!11410 (v!29255 LongMapFixedSize!5792)) )
))
(declare-datatypes ((Hashable!2810 0))(
  ( (HashableExt!2809 (__x!16864 Int)) )
))
(declare-datatypes ((MutLongMap!2896 0))(
  ( (LongMap!2896 (underlying!5987 Cell!11409)) (MutLongMapExt!2895 (__x!16865 Int)) )
))
(declare-datatypes ((Cell!11411 0))(
  ( (Cell!11412 (v!29256 MutLongMap!2896)) )
))
(declare-datatypes ((MutableMap!2810 0))(
  ( (MutableMapExt!2809 (__x!16866 Int)) (HashMap!2810 (underlying!5988 Cell!11411) (hashF!4733 Hashable!2810) (_size!5844 (_ BitVec 32)) (defaultValue!2972 Int)) )
))
(declare-datatypes ((List!24857 0))(
  ( (Nil!24773) (Cons!24773 (h!30174 C!11936) (t!197405 List!24857)) )
))
(declare-datatypes ((IArray!16067 0))(
  ( (IArray!16068 (innerList!8091 List!24857)) )
))
(declare-datatypes ((Conc!8031 0))(
  ( (Node!8031 (left!19053 Conc!8031) (right!19383 Conc!8031) (csize!16292 Int) (cheight!8242 Int)) (Leaf!11746 (xs!10973 IArray!16067) (csize!16293 Int)) (Empty!8031) )
))
(declare-datatypes ((BalanceConc!15824 0))(
  ( (BalanceConc!15825 (c!341388 Conc!8031)) )
))
(declare-datatypes ((CacheFurthestNullable!978 0))(
  ( (CacheFurthestNullable!979 (cache!3191 MutableMap!2810) (totalInput!3297 BalanceConc!15824)) )
))
(declare-fun cacheFurthestNullable!118 () CacheFurthestNullable!978)

(declare-fun tp!669443 () Bool)

(declare-fun e!1376944 () Bool)

(declare-fun e!1376939 () Bool)

(declare-fun tp!669439 () Bool)

(declare-fun array_inv!3144 (array!9829) Bool)

(declare-fun array_inv!3145 (array!9831) Bool)

(assert (=> b!2152952 (= e!1376944 (and tp!669435 tp!669439 tp!669443 (array_inv!3144 (_keys!3193 (v!29255 (underlying!5987 (v!29256 (underlying!5988 (cache!3191 cacheFurthestNullable!118))))))) (array_inv!3145 (_values!3176 (v!29255 (underlying!5987 (v!29256 (underlying!5988 (cache!3191 cacheFurthestNullable!118))))))) e!1376939))))

(declare-fun setElem!17392 () Context!2930)

(declare-fun setNonEmpty!17392 () Bool)

(declare-fun tp!669440 () Bool)

(declare-fun e!1376936 () Bool)

(declare-fun setRes!17392 () Bool)

(declare-fun inv!32711 (Context!2930) Bool)

(assert (=> setNonEmpty!17392 (= setRes!17392 (and tp!669440 (inv!32711 setElem!17392) e!1376936))))

(declare-datatypes ((StackFrame!324 0))(
  ( (StackFrame!325 (z!5964 (InoxSet Context!2930)) (from!2807 Int) (lastNullablePos!494 Int) (res!928346 Int) (totalInput!3298 BalanceConc!15824)) )
))
(declare-datatypes ((List!24858 0))(
  ( (Nil!24774) (Cons!24774 (h!30175 StackFrame!324) (t!197406 List!24858)) )
))
(declare-fun stack!12 () List!24858)

(declare-fun setRest!17392 () (InoxSet Context!2930))

(assert (=> setNonEmpty!17392 (= (z!5964 (h!30175 stack!12)) ((_ map or) (store ((as const (Array Context!2930 Bool)) false) setElem!17392 true) setRest!17392))))

(declare-fun e!1376940 () Bool)

(declare-fun e!1376941 () Bool)

(declare-fun tp!669433 () Bool)

(declare-fun b!2152953 () Bool)

(declare-fun inv!32712 (StackFrame!324) Bool)

(assert (=> b!2152953 (= e!1376941 (and (inv!32712 (h!30175 stack!12)) e!1376940 tp!669433))))

(declare-fun b!2152954 () Bool)

(declare-fun e!1376932 () Bool)

(assert (=> b!2152954 (= e!1376932 false)))

(declare-fun lt!801312 () Int)

(declare-fun totalInput!880 () BalanceConc!15824)

(declare-fun size!19357 (BalanceConc!15824) Int)

(assert (=> b!2152954 (= lt!801312 (size!19357 totalInput!880))))

(declare-fun b!2152955 () Bool)

(declare-fun e!1376943 () Bool)

(declare-fun e!1376931 () Bool)

(declare-fun lt!801313 () MutLongMap!2896)

(get-info :version)

(assert (=> b!2152955 (= e!1376943 (and e!1376931 ((_ is LongMap!2896) lt!801313)))))

(assert (=> b!2152955 (= lt!801313 (v!29256 (underlying!5988 (cache!3191 cacheFurthestNullable!118))))))

(declare-fun res!928342 () Bool)

(declare-fun e!1376929 () Bool)

(assert (=> b!2152956 (=> (not res!928342) (not e!1376929))))

(declare-fun forall!5073 (List!24858 Int) Bool)

(assert (=> b!2152956 (= res!928342 (forall!5073 stack!12 lambda!81134))))

(declare-fun mapIsEmpty!13703 () Bool)

(declare-fun mapRes!13703 () Bool)

(assert (=> mapIsEmpty!13703 mapRes!13703))

(declare-fun setIsEmpty!17392 () Bool)

(assert (=> setIsEmpty!17392 setRes!17392))

(declare-fun b!2152957 () Bool)

(declare-fun e!1376930 () Bool)

(assert (=> b!2152957 (= e!1376930 e!1376944)))

(declare-fun e!1376933 () Bool)

(declare-fun b!2152958 () Bool)

(declare-fun inv!32713 (BalanceConc!15824) Bool)

(assert (=> b!2152958 (= e!1376940 (and setRes!17392 (inv!32713 (totalInput!3298 (h!30175 stack!12))) e!1376933))))

(declare-fun condSetEmpty!17392 () Bool)

(assert (=> b!2152958 (= condSetEmpty!17392 (= (z!5964 (h!30175 stack!12)) ((as const (Array Context!2930 Bool)) false)))))

(declare-fun res!928340 () Bool)

(assert (=> b!2152959 (=> (not res!928340) (not e!1376929))))

(assert (=> b!2152959 (= res!928340 (forall!5073 stack!12 lambda!81133))))

(declare-fun res!928341 () Bool)

(assert (=> start!208874 (=> (not res!928341) (not e!1376929))))

(declare-fun valid!2233 (CacheFurthestNullable!978) Bool)

(assert (=> start!208874 (= res!928341 (valid!2233 cacheFurthestNullable!118))))

(assert (=> start!208874 e!1376929))

(declare-fun e!1376942 () Bool)

(declare-fun inv!32714 (CacheFurthestNullable!978) Bool)

(assert (=> start!208874 (and (inv!32714 cacheFurthestNullable!118) e!1376942)))

(assert (=> start!208874 true))

(declare-fun e!1376938 () Bool)

(assert (=> start!208874 (and (inv!32713 totalInput!880) e!1376938)))

(assert (=> start!208874 e!1376941))

(declare-fun e!1376937 () Bool)

(declare-fun e!1376934 () Bool)

(declare-fun b!2152960 () Bool)

(assert (=> b!2152960 (= e!1376942 (and e!1376934 (inv!32713 (totalInput!3297 cacheFurthestNullable!118)) e!1376937))))

(declare-fun b!2152961 () Bool)

(declare-fun tp!669431 () Bool)

(assert (=> b!2152961 (= e!1376936 tp!669431)))

(declare-fun b!2152962 () Bool)

(declare-fun tp!669432 () Bool)

(declare-fun inv!32715 (Conc!8031) Bool)

(assert (=> b!2152962 (= e!1376933 (and (inv!32715 (c!341388 (totalInput!3298 (h!30175 stack!12)))) tp!669432))))

(declare-fun b!2152963 () Bool)

(assert (=> b!2152963 (= e!1376929 e!1376932)))

(declare-fun res!928343 () Bool)

(assert (=> b!2152963 (=> (not res!928343) (not e!1376932))))

(declare-fun res!17610 () Int)

(assert (=> b!2152963 (= res!928343 (and (= (res!928346 (h!30175 stack!12)) res!17610) (>= (from!2807 (h!30175 stack!12)) 0)))))

(declare-datatypes ((Unit!37904 0))(
  ( (Unit!37905) )
))
(declare-fun lt!801314 () Unit!37904)

(declare-fun lemmaInvariant!384 (CacheFurthestNullable!978) Unit!37904)

(assert (=> b!2152963 (= lt!801314 (lemmaInvariant!384 cacheFurthestNullable!118))))

(declare-fun b!2152964 () Bool)

(declare-fun tp!669441 () Bool)

(assert (=> b!2152964 (= e!1376938 (and (inv!32715 (c!341388 totalInput!880)) tp!669441))))

(declare-fun b!2152965 () Bool)

(declare-fun tp!669437 () Bool)

(assert (=> b!2152965 (= e!1376939 (and tp!669437 mapRes!13703))))

(declare-fun condMapEmpty!13703 () Bool)

(declare-fun mapDefault!13703 () List!24856)

(assert (=> b!2152965 (= condMapEmpty!13703 (= (arr!4389 (_values!3176 (v!29255 (underlying!5987 (v!29256 (underlying!5988 (cache!3191 cacheFurthestNullable!118))))))) ((as const (Array (_ BitVec 32) List!24856)) mapDefault!13703)))))

(declare-fun b!2152966 () Bool)

(assert (=> b!2152966 (= e!1376931 e!1376930)))

(declare-fun b!2152967 () Bool)

(declare-fun res!928344 () Bool)

(assert (=> b!2152967 (=> (not res!928344) (not e!1376929))))

(assert (=> b!2152967 (= res!928344 (= (totalInput!3297 cacheFurthestNullable!118) totalInput!880))))

(assert (=> b!2152968 (= e!1376934 (and e!1376943 tp!669442))))

(declare-fun b!2152969 () Bool)

(declare-fun res!928345 () Bool)

(assert (=> b!2152969 (=> (not res!928345) (not e!1376929))))

(declare-fun totalInputSize!324 () Int)

(declare-fun counter!1 () Int)

(assert (=> b!2152969 (= res!928345 (and (not ((_ is Nil!24774) stack!12)) (or (<= totalInputSize!324 1048576) (= (- counter!1 (* 10 (ite (>= counter!1 0) (div counter!1 10) (- (div (- counter!1) 10))))) 0))))))

(declare-fun b!2152970 () Bool)

(declare-fun tp!669438 () Bool)

(assert (=> b!2152970 (= e!1376937 (and (inv!32715 (c!341388 (totalInput!3297 cacheFurthestNullable!118))) tp!669438))))

(declare-fun mapNonEmpty!13703 () Bool)

(declare-fun tp!669436 () Bool)

(declare-fun tp!669434 () Bool)

(assert (=> mapNonEmpty!13703 (= mapRes!13703 (and tp!669436 tp!669434))))

(declare-fun mapKey!13703 () (_ BitVec 32))

(declare-fun mapRest!13703 () (Array (_ BitVec 32) List!24856))

(declare-fun mapValue!13703 () List!24856)

(assert (=> mapNonEmpty!13703 (= (arr!4389 (_values!3176 (v!29255 (underlying!5987 (v!29256 (underlying!5988 (cache!3191 cacheFurthestNullable!118))))))) (store mapRest!13703 mapKey!13703 mapValue!13703))))

(assert (= (and start!208874 res!928341) b!2152967))

(assert (= (and b!2152967 res!928344) b!2152959))

(assert (= (and b!2152959 res!928340) b!2152956))

(assert (= (and b!2152956 res!928342) b!2152969))

(assert (= (and b!2152969 res!928345) b!2152963))

(assert (= (and b!2152963 res!928343) b!2152954))

(assert (= (and b!2152965 condMapEmpty!13703) mapIsEmpty!13703))

(assert (= (and b!2152965 (not condMapEmpty!13703)) mapNonEmpty!13703))

(assert (= b!2152952 b!2152965))

(assert (= b!2152957 b!2152952))

(assert (= b!2152966 b!2152957))

(assert (= (and b!2152955 ((_ is LongMap!2896) (v!29256 (underlying!5988 (cache!3191 cacheFurthestNullable!118))))) b!2152966))

(assert (= b!2152968 b!2152955))

(assert (= (and b!2152960 ((_ is HashMap!2810) (cache!3191 cacheFurthestNullable!118))) b!2152968))

(assert (= b!2152960 b!2152970))

(assert (= start!208874 b!2152960))

(assert (= start!208874 b!2152964))

(assert (= (and b!2152958 condSetEmpty!17392) setIsEmpty!17392))

(assert (= (and b!2152958 (not condSetEmpty!17392)) setNonEmpty!17392))

(assert (= setNonEmpty!17392 b!2152961))

(assert (= b!2152958 b!2152962))

(assert (= b!2152953 b!2152958))

(assert (= (and start!208874 ((_ is Cons!24774) stack!12)) b!2152953))

(declare-fun m!2594888 () Bool)

(assert (=> b!2152956 m!2594888))

(declare-fun m!2594890 () Bool)

(assert (=> b!2152959 m!2594890))

(declare-fun m!2594892 () Bool)

(assert (=> b!2152963 m!2594892))

(declare-fun m!2594894 () Bool)

(assert (=> b!2152952 m!2594894))

(declare-fun m!2594896 () Bool)

(assert (=> b!2152952 m!2594896))

(declare-fun m!2594898 () Bool)

(assert (=> b!2152954 m!2594898))

(declare-fun m!2594900 () Bool)

(assert (=> start!208874 m!2594900))

(declare-fun m!2594902 () Bool)

(assert (=> start!208874 m!2594902))

(declare-fun m!2594904 () Bool)

(assert (=> start!208874 m!2594904))

(declare-fun m!2594906 () Bool)

(assert (=> b!2152964 m!2594906))

(declare-fun m!2594908 () Bool)

(assert (=> b!2152960 m!2594908))

(declare-fun m!2594910 () Bool)

(assert (=> setNonEmpty!17392 m!2594910))

(declare-fun m!2594912 () Bool)

(assert (=> b!2152970 m!2594912))

(declare-fun m!2594914 () Bool)

(assert (=> b!2152953 m!2594914))

(declare-fun m!2594916 () Bool)

(assert (=> b!2152958 m!2594916))

(declare-fun m!2594918 () Bool)

(assert (=> mapNonEmpty!13703 m!2594918))

(declare-fun m!2594920 () Bool)

(assert (=> b!2152962 m!2594920))

(check-sat (not b!2152961) (not mapNonEmpty!13703) (not setNonEmpty!17392) (not b!2152954) (not b!2152963) (not b!2152959) (not b!2152970) (not b!2152956) (not b_next!64279) b_and!173191 (not b_next!64277) (not b!2152952) (not b!2152964) (not b!2152965) (not start!208874) (not b!2152962) (not b!2152953) (not b!2152958) (not b!2152960) b_and!173189)
(check-sat b_and!173189 b_and!173191 (not b_next!64277) (not b_next!64279))
