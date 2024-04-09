; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83496 () Bool)

(assert start!83496)

(declare-fun b_free!19455 () Bool)

(declare-fun b_next!19455 () Bool)

(assert (=> start!83496 (= b_free!19455 (not b_next!19455))))

(declare-fun tp!67654 () Bool)

(declare-fun b_and!31075 () Bool)

(assert (=> start!83496 (= tp!67654 b_and!31075)))

(declare-fun b!974827 () Bool)

(declare-fun res!652675 () Bool)

(declare-fun e!549467 () Bool)

(assert (=> b!974827 (=> (not res!652675) (not e!549467))))

(declare-datatypes ((array!60735 0))(
  ( (array!60736 (arr!29227 (Array (_ BitVec 32) (_ BitVec 64))) (size!29707 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60735)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60735 (_ BitVec 32)) Bool)

(assert (=> b!974827 (= res!652675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!974828 () Bool)

(declare-fun e!549464 () Bool)

(declare-fun tp_is_empty!22359 () Bool)

(assert (=> b!974828 (= e!549464 tp_is_empty!22359)))

(declare-fun b!974829 () Bool)

(declare-fun res!652669 () Bool)

(assert (=> b!974829 (=> (not res!652669) (not e!549467))))

(declare-datatypes ((List!20408 0))(
  ( (Nil!20405) (Cons!20404 (h!21566 (_ BitVec 64)) (t!28893 List!20408)) )
))
(declare-fun arrayNoDuplicates!0 (array!60735 (_ BitVec 32) List!20408) Bool)

(assert (=> b!974829 (= res!652669 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20405))))

(declare-fun b!974830 () Bool)

(declare-fun e!549466 () Bool)

(assert (=> b!974830 (= e!549466 tp_is_empty!22359)))

(declare-fun b!974831 () Bool)

(declare-fun res!652674 () Bool)

(assert (=> b!974831 (=> (not res!652674) (not e!549467))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974831 (= res!652674 (validKeyInArray!0 (select (arr!29227 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35548 () Bool)

(declare-fun mapRes!35548 () Bool)

(declare-fun tp!67653 () Bool)

(assert (=> mapNonEmpty!35548 (= mapRes!35548 (and tp!67653 e!549466))))

(declare-datatypes ((V!34795 0))(
  ( (V!34796 (val!11230 Int)) )
))
(declare-datatypes ((ValueCell!10698 0))(
  ( (ValueCellFull!10698 (v!13789 V!34795)) (EmptyCell!10698) )
))
(declare-fun mapRest!35548 () (Array (_ BitVec 32) ValueCell!10698))

(declare-fun mapKey!35548 () (_ BitVec 32))

(declare-datatypes ((array!60737 0))(
  ( (array!60738 (arr!29228 (Array (_ BitVec 32) ValueCell!10698)) (size!29708 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60737)

(declare-fun mapValue!35548 () ValueCell!10698)

(assert (=> mapNonEmpty!35548 (= (arr!29228 _values!1425) (store mapRest!35548 mapKey!35548 mapValue!35548))))

(declare-fun b!974833 () Bool)

(declare-fun e!549468 () Bool)

(assert (=> b!974833 (= e!549468 (and e!549464 mapRes!35548))))

(declare-fun condMapEmpty!35548 () Bool)

(declare-fun mapDefault!35548 () ValueCell!10698)

(assert (=> b!974833 (= condMapEmpty!35548 (= (arr!29228 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10698)) mapDefault!35548)))))

(declare-fun b!974834 () Bool)

(assert (=> b!974834 (= e!549467 false)))

(declare-fun zeroValue!1367 () V!34795)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34795)

(declare-datatypes ((tuple2!14532 0))(
  ( (tuple2!14533 (_1!7276 (_ BitVec 64)) (_2!7276 V!34795)) )
))
(declare-datatypes ((List!20409 0))(
  ( (Nil!20406) (Cons!20405 (h!21567 tuple2!14532) (t!28894 List!20409)) )
))
(declare-datatypes ((ListLongMap!13243 0))(
  ( (ListLongMap!13244 (toList!6637 List!20409)) )
))
(declare-fun lt!432763 () ListLongMap!13243)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3822 (array!60735 array!60737 (_ BitVec 32) (_ BitVec 32) V!34795 V!34795 (_ BitVec 32) Int) ListLongMap!13243)

(assert (=> b!974834 (= lt!432763 (getCurrentListMap!3822 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!974835 () Bool)

(declare-fun res!652673 () Bool)

(assert (=> b!974835 (=> (not res!652673) (not e!549467))))

(declare-fun contains!5672 (ListLongMap!13243 (_ BitVec 64)) Bool)

(assert (=> b!974835 (= res!652673 (contains!5672 (getCurrentListMap!3822 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29227 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35548 () Bool)

(assert (=> mapIsEmpty!35548 mapRes!35548))

(declare-fun b!974836 () Bool)

(declare-fun res!652670 () Bool)

(assert (=> b!974836 (=> (not res!652670) (not e!549467))))

(assert (=> b!974836 (= res!652670 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29707 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29707 _keys!1717))))))

(declare-fun b!974832 () Bool)

(declare-fun res!652671 () Bool)

(assert (=> b!974832 (=> (not res!652671) (not e!549467))))

(assert (=> b!974832 (= res!652671 (and (= (size!29708 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29707 _keys!1717) (size!29708 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun res!652672 () Bool)

(assert (=> start!83496 (=> (not res!652672) (not e!549467))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83496 (= res!652672 (validMask!0 mask!2147))))

(assert (=> start!83496 e!549467))

(assert (=> start!83496 true))

(declare-fun array_inv!22501 (array!60737) Bool)

(assert (=> start!83496 (and (array_inv!22501 _values!1425) e!549468)))

(assert (=> start!83496 tp_is_empty!22359))

(assert (=> start!83496 tp!67654))

(declare-fun array_inv!22502 (array!60735) Bool)

(assert (=> start!83496 (array_inv!22502 _keys!1717)))

(assert (= (and start!83496 res!652672) b!974832))

(assert (= (and b!974832 res!652671) b!974827))

(assert (= (and b!974827 res!652675) b!974829))

(assert (= (and b!974829 res!652669) b!974836))

(assert (= (and b!974836 res!652670) b!974831))

(assert (= (and b!974831 res!652674) b!974835))

(assert (= (and b!974835 res!652673) b!974834))

(assert (= (and b!974833 condMapEmpty!35548) mapIsEmpty!35548))

(assert (= (and b!974833 (not condMapEmpty!35548)) mapNonEmpty!35548))

(get-info :version)

(assert (= (and mapNonEmpty!35548 ((_ is ValueCellFull!10698) mapValue!35548)) b!974830))

(assert (= (and b!974833 ((_ is ValueCellFull!10698) mapDefault!35548)) b!974828))

(assert (= start!83496 b!974833))

(declare-fun m!902301 () Bool)

(assert (=> b!974831 m!902301))

(assert (=> b!974831 m!902301))

(declare-fun m!902303 () Bool)

(assert (=> b!974831 m!902303))

(declare-fun m!902305 () Bool)

(assert (=> b!974829 m!902305))

(declare-fun m!902307 () Bool)

(assert (=> start!83496 m!902307))

(declare-fun m!902309 () Bool)

(assert (=> start!83496 m!902309))

(declare-fun m!902311 () Bool)

(assert (=> start!83496 m!902311))

(declare-fun m!902313 () Bool)

(assert (=> b!974827 m!902313))

(declare-fun m!902315 () Bool)

(assert (=> b!974834 m!902315))

(declare-fun m!902317 () Bool)

(assert (=> mapNonEmpty!35548 m!902317))

(declare-fun m!902319 () Bool)

(assert (=> b!974835 m!902319))

(assert (=> b!974835 m!902301))

(assert (=> b!974835 m!902319))

(assert (=> b!974835 m!902301))

(declare-fun m!902321 () Bool)

(assert (=> b!974835 m!902321))

(check-sat (not b!974829) b_and!31075 (not b_next!19455) (not b!974831) tp_is_empty!22359 (not b!974827) (not b!974835) (not start!83496) (not b!974834) (not mapNonEmpty!35548))
(check-sat b_and!31075 (not b_next!19455))
