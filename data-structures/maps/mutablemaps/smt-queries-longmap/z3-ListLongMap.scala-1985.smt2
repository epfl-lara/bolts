; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34804 () Bool)

(assert start!34804)

(declare-fun b_free!7581 () Bool)

(declare-fun b_next!7581 () Bool)

(assert (=> start!34804 (= b_free!7581 (not b_next!7581))))

(declare-fun tp!26310 () Bool)

(declare-fun b_and!14821 () Bool)

(assert (=> start!34804 (= tp!26310 b_and!14821)))

(declare-fun b!347943 () Bool)

(declare-fun res!192757 () Bool)

(declare-fun e!213213 () Bool)

(assert (=> b!347943 (=> (not res!192757) (not e!213213))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((V!11021 0))(
  ( (V!11022 (val!3811 Int)) )
))
(declare-fun zeroValue!1467 () V!11021)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3423 0))(
  ( (ValueCellFull!3423 (v!5990 V!11021)) (EmptyCell!3423) )
))
(declare-datatypes ((array!18621 0))(
  ( (array!18622 (arr!8817 (Array (_ BitVec 32) ValueCell!3423)) (size!9169 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18621)

(declare-datatypes ((array!18623 0))(
  ( (array!18624 (arr!8818 (Array (_ BitVec 32) (_ BitVec 64))) (size!9170 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18623)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11021)

(declare-datatypes ((tuple2!5502 0))(
  ( (tuple2!5503 (_1!2761 (_ BitVec 64)) (_2!2761 V!11021)) )
))
(declare-datatypes ((List!5145 0))(
  ( (Nil!5142) (Cons!5141 (h!5997 tuple2!5502) (t!10283 List!5145)) )
))
(declare-datatypes ((ListLongMap!4429 0))(
  ( (ListLongMap!4430 (toList!2230 List!5145)) )
))
(declare-fun contains!2291 (ListLongMap!4429 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1747 (array!18623 array!18621 (_ BitVec 32) (_ BitVec 32) V!11021 V!11021 (_ BitVec 32) Int) ListLongMap!4429)

(assert (=> b!347943 (= res!192757 (not (contains!2291 (getCurrentListMap!1747 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!347944 () Bool)

(declare-fun e!213211 () Bool)

(assert (=> b!347944 (= e!213211 false)))

(declare-fun lt!163784 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18623 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!347944 (= lt!163784 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!12759 () Bool)

(declare-fun mapRes!12759 () Bool)

(assert (=> mapIsEmpty!12759 mapRes!12759))

(declare-fun b!347945 () Bool)

(declare-fun e!213212 () Bool)

(declare-fun e!213210 () Bool)

(assert (=> b!347945 (= e!213212 (and e!213210 mapRes!12759))))

(declare-fun condMapEmpty!12759 () Bool)

(declare-fun mapDefault!12759 () ValueCell!3423)

(assert (=> b!347945 (= condMapEmpty!12759 (= (arr!8817 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3423)) mapDefault!12759)))))

(declare-fun b!347946 () Bool)

(assert (=> b!347946 (= e!213213 e!213211)))

(declare-fun res!192763 () Bool)

(assert (=> b!347946 (=> (not res!192763) (not e!213211))))

(declare-datatypes ((SeekEntryResult!3398 0))(
  ( (MissingZero!3398 (index!15771 (_ BitVec 32))) (Found!3398 (index!15772 (_ BitVec 32))) (Intermediate!3398 (undefined!4210 Bool) (index!15773 (_ BitVec 32)) (x!34665 (_ BitVec 32))) (Undefined!3398) (MissingVacant!3398 (index!15774 (_ BitVec 32))) )
))
(declare-fun lt!163785 () SeekEntryResult!3398)

(get-info :version)

(assert (=> b!347946 (= res!192763 (and (not ((_ is Found!3398) lt!163785)) ((_ is MissingZero!3398) lt!163785)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18623 (_ BitVec 32)) SeekEntryResult!3398)

(assert (=> b!347946 (= lt!163785 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12759 () Bool)

(declare-fun tp!26309 () Bool)

(declare-fun e!213214 () Bool)

(assert (=> mapNonEmpty!12759 (= mapRes!12759 (and tp!26309 e!213214))))

(declare-fun mapRest!12759 () (Array (_ BitVec 32) ValueCell!3423))

(declare-fun mapValue!12759 () ValueCell!3423)

(declare-fun mapKey!12759 () (_ BitVec 32))

(assert (=> mapNonEmpty!12759 (= (arr!8817 _values!1525) (store mapRest!12759 mapKey!12759 mapValue!12759))))

(declare-fun b!347947 () Bool)

(declare-fun res!192759 () Bool)

(assert (=> b!347947 (=> (not res!192759) (not e!213213))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!347947 (= res!192759 (validKeyInArray!0 k0!1348))))

(declare-fun b!347948 () Bool)

(declare-fun res!192762 () Bool)

(assert (=> b!347948 (=> (not res!192762) (not e!213213))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18623 (_ BitVec 32)) Bool)

(assert (=> b!347948 (= res!192762 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!347949 () Bool)

(declare-fun res!192758 () Bool)

(assert (=> b!347949 (=> (not res!192758) (not e!213213))))

(declare-datatypes ((List!5146 0))(
  ( (Nil!5143) (Cons!5142 (h!5998 (_ BitVec 64)) (t!10284 List!5146)) )
))
(declare-fun arrayNoDuplicates!0 (array!18623 (_ BitVec 32) List!5146) Bool)

(assert (=> b!347949 (= res!192758 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5143))))

(declare-fun res!192760 () Bool)

(assert (=> start!34804 (=> (not res!192760) (not e!213213))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34804 (= res!192760 (validMask!0 mask!2385))))

(assert (=> start!34804 e!213213))

(assert (=> start!34804 true))

(declare-fun tp_is_empty!7533 () Bool)

(assert (=> start!34804 tp_is_empty!7533))

(assert (=> start!34804 tp!26310))

(declare-fun array_inv!6510 (array!18621) Bool)

(assert (=> start!34804 (and (array_inv!6510 _values!1525) e!213212)))

(declare-fun array_inv!6511 (array!18623) Bool)

(assert (=> start!34804 (array_inv!6511 _keys!1895)))

(declare-fun b!347950 () Bool)

(assert (=> b!347950 (= e!213214 tp_is_empty!7533)))

(declare-fun b!347951 () Bool)

(declare-fun res!192761 () Bool)

(assert (=> b!347951 (=> (not res!192761) (not e!213213))))

(assert (=> b!347951 (= res!192761 (and (= (size!9169 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9170 _keys!1895) (size!9169 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!347952 () Bool)

(declare-fun res!192756 () Bool)

(assert (=> b!347952 (=> (not res!192756) (not e!213211))))

(declare-fun arrayContainsKey!0 (array!18623 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347952 (= res!192756 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!347953 () Bool)

(assert (=> b!347953 (= e!213210 tp_is_empty!7533)))

(assert (= (and start!34804 res!192760) b!347951))

(assert (= (and b!347951 res!192761) b!347948))

(assert (= (and b!347948 res!192762) b!347949))

(assert (= (and b!347949 res!192758) b!347947))

(assert (= (and b!347947 res!192759) b!347943))

(assert (= (and b!347943 res!192757) b!347946))

(assert (= (and b!347946 res!192763) b!347952))

(assert (= (and b!347952 res!192756) b!347944))

(assert (= (and b!347945 condMapEmpty!12759) mapIsEmpty!12759))

(assert (= (and b!347945 (not condMapEmpty!12759)) mapNonEmpty!12759))

(assert (= (and mapNonEmpty!12759 ((_ is ValueCellFull!3423) mapValue!12759)) b!347950))

(assert (= (and b!347945 ((_ is ValueCellFull!3423) mapDefault!12759)) b!347953))

(assert (= start!34804 b!347945))

(declare-fun m!348837 () Bool)

(assert (=> b!347947 m!348837))

(declare-fun m!348839 () Bool)

(assert (=> b!347943 m!348839))

(assert (=> b!347943 m!348839))

(declare-fun m!348841 () Bool)

(assert (=> b!347943 m!348841))

(declare-fun m!348843 () Bool)

(assert (=> b!347952 m!348843))

(declare-fun m!348845 () Bool)

(assert (=> b!347948 m!348845))

(declare-fun m!348847 () Bool)

(assert (=> b!347949 m!348847))

(declare-fun m!348849 () Bool)

(assert (=> start!34804 m!348849))

(declare-fun m!348851 () Bool)

(assert (=> start!34804 m!348851))

(declare-fun m!348853 () Bool)

(assert (=> start!34804 m!348853))

(declare-fun m!348855 () Bool)

(assert (=> b!347944 m!348855))

(declare-fun m!348857 () Bool)

(assert (=> mapNonEmpty!12759 m!348857))

(declare-fun m!348859 () Bool)

(assert (=> b!347946 m!348859))

(check-sat (not b!347946) (not b!347949) (not b!347947) (not b!347944) tp_is_empty!7533 (not b!347952) (not start!34804) (not b_next!7581) (not b!347943) b_and!14821 (not b!347948) (not mapNonEmpty!12759))
(check-sat b_and!14821 (not b_next!7581))
