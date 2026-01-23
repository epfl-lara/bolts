; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411894 () Bool)

(assert start!411894)

(declare-fun b!4288870 () Bool)

(declare-fun b_free!127287 () Bool)

(declare-fun b_next!127991 () Bool)

(assert (=> b!4288870 (= b_free!127287 (not b_next!127991))))

(declare-fun tp!1314440 () Bool)

(declare-fun b_and!338503 () Bool)

(assert (=> b!4288870 (= tp!1314440 b_and!338503)))

(declare-fun b!4288863 () Bool)

(declare-fun b_free!127289 () Bool)

(declare-fun b_next!127993 () Bool)

(assert (=> b!4288863 (= b_free!127289 (not b_next!127993))))

(declare-fun tp!1314444 () Bool)

(declare-fun b_and!338505 () Bool)

(assert (=> b!4288863 (= tp!1314444 b_and!338505)))

(declare-fun mapNonEmpty!19676 () Bool)

(declare-fun mapRes!19676 () Bool)

(declare-fun tp!1314448 () Bool)

(declare-fun tp!1314447 () Bool)

(assert (=> mapNonEmpty!19676 (= mapRes!19676 (and tp!1314448 tp!1314447))))

(declare-datatypes ((C!26080 0))(
  ( (C!26081 (val!15366 Int)) )
))
(declare-datatypes ((Regex!12941 0))(
  ( (ElementMatch!12941 (c!730202 C!26080)) (Concat!21260 (regOne!26394 Regex!12941) (regTwo!26394 Regex!12941)) (EmptyExpr!12941) (Star!12941 (reg!13270 Regex!12941)) (EmptyLang!12941) (Union!12941 (regOne!26395 Regex!12941) (regTwo!26395 Regex!12941)) )
))
(declare-datatypes ((List!47751 0))(
  ( (Nil!47627) (Cons!47627 (h!53047 Regex!12941) (t!354350 List!47751)) )
))
(declare-datatypes ((Context!5662 0))(
  ( (Context!5663 (exprs!3331 List!47751)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45216 0))(
  ( (tuple2!45217 (_1!25807 (InoxSet Context!5662)) (_2!25807 Int)) )
))
(declare-datatypes ((tuple2!45218 0))(
  ( (tuple2!45219 (_1!25808 tuple2!45216) (_2!25808 Int)) )
))
(declare-datatypes ((List!47752 0))(
  ( (Nil!47628) (Cons!47628 (h!53048 tuple2!45218) (t!354351 List!47752)) )
))
(declare-datatypes ((array!15612 0))(
  ( (array!15613 (arr!6974 (Array (_ BitVec 32) List!47752)) (size!34934 (_ BitVec 32))) )
))
(declare-datatypes ((List!47753 0))(
  ( (Nil!47629) (Cons!47629 (h!53049 C!26080) (t!354352 List!47753)) )
))
(declare-datatypes ((IArray!28827 0))(
  ( (IArray!28828 (innerList!14471 List!47753)) )
))
(declare-datatypes ((Conc!14383 0))(
  ( (Node!14383 (left!35386 Conc!14383) (right!35716 Conc!14383) (csize!28996 Int) (cheight!14594 Int)) (Leaf!22255 (xs!17689 IArray!28827) (csize!28997 Int)) (Empty!14383) )
))
(declare-datatypes ((BalanceConc!28256 0))(
  ( (BalanceConc!28257 (c!730203 Conc!14383)) )
))
(declare-datatypes ((array!15614 0))(
  ( (array!15615 (arr!6975 (Array (_ BitVec 32) (_ BitVec 64))) (size!34935 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4282 0))(
  ( (HashableExt!4281 (__x!29123 Int)) )
))
(declare-datatypes ((LongMapFixedSize!8732 0))(
  ( (LongMapFixedSize!8733 (defaultEntry!4751 Int) (mask!12806 (_ BitVec 32)) (extraKeys!4615 (_ BitVec 32)) (zeroValue!4625 List!47752) (minValue!4625 List!47752) (_size!8775 (_ BitVec 32)) (_keys!4666 array!15614) (_values!4647 array!15612) (_vacant!4427 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17273 0))(
  ( (Cell!17274 (v!41542 LongMapFixedSize!8732)) )
))
(declare-datatypes ((MutLongMap!4366 0))(
  ( (LongMap!4366 (underlying!8961 Cell!17273)) (MutLongMapExt!4365 (__x!29124 Int)) )
))
(declare-datatypes ((Cell!17275 0))(
  ( (Cell!17276 (v!41543 MutLongMap!4366)) )
))
(declare-datatypes ((MutableMap!4272 0))(
  ( (MutableMapExt!4271 (__x!29125 Int)) (HashMap!4272 (underlying!8962 Cell!17275) (hashF!6314 Hashable!4282) (_size!8776 (_ BitVec 32)) (defaultValue!4443 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!454 0))(
  ( (CacheFindLongestMatch!455 (cache!4412 MutableMap!4272) (totalInput!4337 BalanceConc!28256)) )
))
(declare-fun cacheFindLongestMatch!171 () CacheFindLongestMatch!454)

(declare-fun mapKey!19676 () (_ BitVec 32))

(declare-fun mapRest!19676 () (Array (_ BitVec 32) List!47752))

(declare-fun mapValue!19676 () List!47752)

(assert (=> mapNonEmpty!19676 (= (arr!6974 (_values!4647 (v!41542 (underlying!8961 (v!41543 (underlying!8962 (cache!4412 cacheFindLongestMatch!171))))))) (store mapRest!19676 mapKey!19676 mapValue!19676))))

(declare-fun b!4288859 () Bool)

(declare-fun e!2663808 () Bool)

(declare-fun totalInput!793 () BalanceConc!28256)

(declare-fun tp!1314439 () Bool)

(declare-fun inv!63104 (Conc!14383) Bool)

(assert (=> b!4288859 (= e!2663808 (and (inv!63104 (c!730203 totalInput!793)) tp!1314439))))

(declare-fun b!4288860 () Bool)

(declare-fun e!2663814 () Bool)

(declare-fun e!2663806 () Bool)

(assert (=> b!4288860 (= e!2663814 e!2663806)))

(declare-fun b!4288861 () Bool)

(declare-fun e!2663815 () Bool)

(declare-fun tp!1314442 () Bool)

(assert (=> b!4288861 (= e!2663815 (and (inv!63104 (c!730203 (totalInput!4337 cacheFindLongestMatch!171))) tp!1314442))))

(declare-fun b!4288862 () Bool)

(declare-fun e!2663811 () Bool)

(declare-fun lt!1516579 () MutLongMap!4366)

(get-info :version)

(assert (=> b!4288862 (= e!2663811 (and e!2663814 ((_ is LongMap!4366) lt!1516579)))))

(assert (=> b!4288862 (= lt!1516579 (v!41543 (underlying!8962 (cache!4412 cacheFindLongestMatch!171))))))

(declare-fun e!2663810 () Bool)

(assert (=> b!4288863 (= e!2663810 (and e!2663811 tp!1314444))))

(declare-fun e!2663805 () Bool)

(declare-fun b!4288864 () Bool)

(declare-fun inv!63105 (BalanceConc!28256) Bool)

(assert (=> b!4288864 (= e!2663805 (and e!2663810 (inv!63105 (totalInput!4337 cacheFindLongestMatch!171)) e!2663815))))

(declare-fun b!4288865 () Bool)

(declare-fun e!2663809 () Bool)

(declare-fun input!5500 () BalanceConc!28256)

(declare-fun tp!1314446 () Bool)

(assert (=> b!4288865 (= e!2663809 (and (inv!63104 (c!730203 input!5500)) tp!1314446))))

(declare-fun b!4288866 () Bool)

(declare-fun e!2663813 () Bool)

(assert (=> b!4288866 (= e!2663806 e!2663813)))

(declare-fun b!4288867 () Bool)

(declare-fun e!2663812 () Bool)

(assert (=> b!4288867 (= e!2663812 false)))

(declare-fun lt!1516578 () Int)

(declare-fun size!34936 (BalanceConc!28256) Int)

(assert (=> b!4288867 (= lt!1516578 (size!34936 input!5500))))

(declare-fun lt!1516580 () Int)

(assert (=> b!4288867 (= lt!1516580 (size!34936 totalInput!793))))

(declare-fun res!1759251 () Bool)

(assert (=> start!411894 (=> (not res!1759251) (not e!2663812))))

(declare-fun isSuffix!1030 (List!47753 List!47753) Bool)

(declare-fun list!17347 (BalanceConc!28256) List!47753)

(assert (=> start!411894 (= res!1759251 (isSuffix!1030 (list!17347 input!5500) (list!17347 totalInput!793)))))

(assert (=> start!411894 e!2663812))

(assert (=> start!411894 (and (inv!63105 input!5500) e!2663809)))

(assert (=> start!411894 (and (inv!63105 totalInput!793) e!2663808)))

(declare-fun inv!63106 (CacheFindLongestMatch!454) Bool)

(assert (=> start!411894 (and (inv!63106 cacheFindLongestMatch!171) e!2663805)))

(declare-fun b!4288868 () Bool)

(declare-fun res!1759250 () Bool)

(assert (=> b!4288868 (=> (not res!1759250) (not e!2663812))))

(assert (=> b!4288868 (= res!1759250 (= (totalInput!4337 cacheFindLongestMatch!171) totalInput!793))))

(declare-fun b!4288869 () Bool)

(declare-fun e!2663816 () Bool)

(declare-fun tp!1314441 () Bool)

(assert (=> b!4288869 (= e!2663816 (and tp!1314441 mapRes!19676))))

(declare-fun condMapEmpty!19676 () Bool)

(declare-fun mapDefault!19676 () List!47752)

(assert (=> b!4288869 (= condMapEmpty!19676 (= (arr!6974 (_values!4647 (v!41542 (underlying!8961 (v!41543 (underlying!8962 (cache!4412 cacheFindLongestMatch!171))))))) ((as const (Array (_ BitVec 32) List!47752)) mapDefault!19676)))))

(declare-fun mapIsEmpty!19676 () Bool)

(assert (=> mapIsEmpty!19676 mapRes!19676))

(declare-fun tp!1314445 () Bool)

(declare-fun tp!1314443 () Bool)

(declare-fun array_inv!5003 (array!15614) Bool)

(declare-fun array_inv!5004 (array!15612) Bool)

(assert (=> b!4288870 (= e!2663813 (and tp!1314440 tp!1314443 tp!1314445 (array_inv!5003 (_keys!4666 (v!41542 (underlying!8961 (v!41543 (underlying!8962 (cache!4412 cacheFindLongestMatch!171))))))) (array_inv!5004 (_values!4647 (v!41542 (underlying!8961 (v!41543 (underlying!8962 (cache!4412 cacheFindLongestMatch!171))))))) e!2663816))))

(assert (= (and start!411894 res!1759251) b!4288868))

(assert (= (and b!4288868 res!1759250) b!4288867))

(assert (= start!411894 b!4288865))

(assert (= start!411894 b!4288859))

(assert (= (and b!4288869 condMapEmpty!19676) mapIsEmpty!19676))

(assert (= (and b!4288869 (not condMapEmpty!19676)) mapNonEmpty!19676))

(assert (= b!4288870 b!4288869))

(assert (= b!4288866 b!4288870))

(assert (= b!4288860 b!4288866))

(assert (= (and b!4288862 ((_ is LongMap!4366) (v!41543 (underlying!8962 (cache!4412 cacheFindLongestMatch!171))))) b!4288860))

(assert (= b!4288863 b!4288862))

(assert (= (and b!4288864 ((_ is HashMap!4272) (cache!4412 cacheFindLongestMatch!171))) b!4288863))

(assert (= b!4288864 b!4288861))

(assert (= start!411894 b!4288864))

(declare-fun m!4883661 () Bool)

(assert (=> mapNonEmpty!19676 m!4883661))

(declare-fun m!4883663 () Bool)

(assert (=> start!411894 m!4883663))

(declare-fun m!4883665 () Bool)

(assert (=> start!411894 m!4883665))

(declare-fun m!4883667 () Bool)

(assert (=> start!411894 m!4883667))

(assert (=> start!411894 m!4883663))

(declare-fun m!4883669 () Bool)

(assert (=> start!411894 m!4883669))

(declare-fun m!4883671 () Bool)

(assert (=> start!411894 m!4883671))

(assert (=> start!411894 m!4883665))

(declare-fun m!4883673 () Bool)

(assert (=> start!411894 m!4883673))

(declare-fun m!4883675 () Bool)

(assert (=> b!4288870 m!4883675))

(declare-fun m!4883677 () Bool)

(assert (=> b!4288870 m!4883677))

(declare-fun m!4883679 () Bool)

(assert (=> b!4288861 m!4883679))

(declare-fun m!4883681 () Bool)

(assert (=> b!4288865 m!4883681))

(declare-fun m!4883683 () Bool)

(assert (=> b!4288864 m!4883683))

(declare-fun m!4883685 () Bool)

(assert (=> b!4288867 m!4883685))

(declare-fun m!4883687 () Bool)

(assert (=> b!4288867 m!4883687))

(declare-fun m!4883689 () Bool)

(assert (=> b!4288859 m!4883689))

(check-sat (not b!4288869) (not mapNonEmpty!19676) (not b!4288864) (not b!4288865) (not b!4288861) (not b!4288867) (not b!4288870) b_and!338505 (not start!411894) (not b_next!127993) (not b!4288859) b_and!338503 (not b_next!127991))
(check-sat b_and!338505 b_and!338503 (not b_next!127991) (not b_next!127993))
