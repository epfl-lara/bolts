; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82412 () Bool)

(assert start!82412)

(declare-fun b_free!18651 () Bool)

(declare-fun b_next!18651 () Bool)

(assert (=> start!82412 (= b_free!18651 (not b_next!18651))))

(declare-fun tp!64923 () Bool)

(declare-fun b_and!30157 () Bool)

(assert (=> start!82412 (= tp!64923 b_and!30157)))

(declare-fun b!960461 () Bool)

(declare-fun e!541446 () Bool)

(declare-fun e!541444 () Bool)

(declare-fun mapRes!34024 () Bool)

(assert (=> b!960461 (= e!541446 (and e!541444 mapRes!34024))))

(declare-fun condMapEmpty!34024 () Bool)

(declare-datatypes ((V!33467 0))(
  ( (V!33468 (val!10732 Int)) )
))
(declare-datatypes ((ValueCell!10200 0))(
  ( (ValueCellFull!10200 (v!13289 V!33467)) (EmptyCell!10200) )
))
(declare-datatypes ((array!58827 0))(
  ( (array!58828 (arr!28283 (Array (_ BitVec 32) ValueCell!10200)) (size!28763 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58827)

(declare-fun mapDefault!34024 () ValueCell!10200)

(assert (=> b!960461 (= condMapEmpty!34024 (= (arr!28283 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10200)) mapDefault!34024)))))

(declare-fun b!960462 () Bool)

(declare-fun e!541448 () Bool)

(assert (=> b!960462 (= e!541448 false)))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun minValue!1328 () V!33467)

(declare-fun lt!430613 () Bool)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58829 0))(
  ( (array!58830 (arr!28284 (Array (_ BitVec 32) (_ BitVec 64))) (size!28764 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58829)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33467)

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun i!793 () (_ BitVec 32))

(declare-datatypes ((tuple2!13926 0))(
  ( (tuple2!13927 (_1!6973 (_ BitVec 64)) (_2!6973 V!33467)) )
))
(declare-datatypes ((List!19786 0))(
  ( (Nil!19783) (Cons!19782 (h!20944 tuple2!13926) (t!28157 List!19786)) )
))
(declare-datatypes ((ListLongMap!12637 0))(
  ( (ListLongMap!12638 (toList!6334 List!19786)) )
))
(declare-fun contains!5384 (ListLongMap!12637 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3519 (array!58829 array!58827 (_ BitVec 32) (_ BitVec 32) V!33467 V!33467 (_ BitVec 32) Int) ListLongMap!12637)

(assert (=> b!960462 (= lt!430613 (contains!5384 (getCurrentListMap!3519 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28284 _keys!1668) i!793)))))

(declare-fun b!960463 () Bool)

(declare-fun e!541447 () Bool)

(declare-fun tp_is_empty!21363 () Bool)

(assert (=> b!960463 (= e!541447 tp_is_empty!21363)))

(declare-fun res!643030 () Bool)

(assert (=> start!82412 (=> (not res!643030) (not e!541448))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82412 (= res!643030 (validMask!0 mask!2088))))

(assert (=> start!82412 e!541448))

(assert (=> start!82412 true))

(assert (=> start!82412 tp_is_empty!21363))

(declare-fun array_inv!21855 (array!58829) Bool)

(assert (=> start!82412 (array_inv!21855 _keys!1668)))

(declare-fun array_inv!21856 (array!58827) Bool)

(assert (=> start!82412 (and (array_inv!21856 _values!1386) e!541446)))

(assert (=> start!82412 tp!64923))

(declare-fun b!960464 () Bool)

(declare-fun res!643028 () Bool)

(assert (=> b!960464 (=> (not res!643028) (not e!541448))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58829 (_ BitVec 32)) Bool)

(assert (=> b!960464 (= res!643028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun mapIsEmpty!34024 () Bool)

(assert (=> mapIsEmpty!34024 mapRes!34024))

(declare-fun b!960465 () Bool)

(declare-fun res!643032 () Bool)

(assert (=> b!960465 (=> (not res!643032) (not e!541448))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!960465 (= res!643032 (validKeyInArray!0 (select (arr!28284 _keys!1668) i!793)))))

(declare-fun b!960466 () Bool)

(declare-fun res!643027 () Bool)

(assert (=> b!960466 (=> (not res!643027) (not e!541448))))

(assert (=> b!960466 (= res!643027 (and (= (size!28763 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28764 _keys!1668) (size!28763 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!960467 () Bool)

(declare-fun res!643031 () Bool)

(assert (=> b!960467 (=> (not res!643031) (not e!541448))))

(declare-datatypes ((List!19787 0))(
  ( (Nil!19784) (Cons!19783 (h!20945 (_ BitVec 64)) (t!28158 List!19787)) )
))
(declare-fun arrayNoDuplicates!0 (array!58829 (_ BitVec 32) List!19787) Bool)

(assert (=> b!960467 (= res!643031 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19784))))

(declare-fun b!960468 () Bool)

(assert (=> b!960468 (= e!541444 tp_is_empty!21363)))

(declare-fun b!960469 () Bool)

(declare-fun res!643029 () Bool)

(assert (=> b!960469 (=> (not res!643029) (not e!541448))))

(assert (=> b!960469 (= res!643029 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28764 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28764 _keys!1668))))))

(declare-fun mapNonEmpty!34024 () Bool)

(declare-fun tp!64924 () Bool)

(assert (=> mapNonEmpty!34024 (= mapRes!34024 (and tp!64924 e!541447))))

(declare-fun mapRest!34024 () (Array (_ BitVec 32) ValueCell!10200))

(declare-fun mapValue!34024 () ValueCell!10200)

(declare-fun mapKey!34024 () (_ BitVec 32))

(assert (=> mapNonEmpty!34024 (= (arr!28283 _values!1386) (store mapRest!34024 mapKey!34024 mapValue!34024))))

(assert (= (and start!82412 res!643030) b!960466))

(assert (= (and b!960466 res!643027) b!960464))

(assert (= (and b!960464 res!643028) b!960467))

(assert (= (and b!960467 res!643031) b!960469))

(assert (= (and b!960469 res!643029) b!960465))

(assert (= (and b!960465 res!643032) b!960462))

(assert (= (and b!960461 condMapEmpty!34024) mapIsEmpty!34024))

(assert (= (and b!960461 (not condMapEmpty!34024)) mapNonEmpty!34024))

(get-info :version)

(assert (= (and mapNonEmpty!34024 ((_ is ValueCellFull!10200) mapValue!34024)) b!960463))

(assert (= (and b!960461 ((_ is ValueCellFull!10200) mapDefault!34024)) b!960468))

(assert (= start!82412 b!960461))

(declare-fun m!890765 () Bool)

(assert (=> b!960464 m!890765))

(declare-fun m!890767 () Bool)

(assert (=> b!960462 m!890767))

(declare-fun m!890769 () Bool)

(assert (=> b!960462 m!890769))

(assert (=> b!960462 m!890767))

(assert (=> b!960462 m!890769))

(declare-fun m!890771 () Bool)

(assert (=> b!960462 m!890771))

(declare-fun m!890773 () Bool)

(assert (=> b!960467 m!890773))

(declare-fun m!890775 () Bool)

(assert (=> start!82412 m!890775))

(declare-fun m!890777 () Bool)

(assert (=> start!82412 m!890777))

(declare-fun m!890779 () Bool)

(assert (=> start!82412 m!890779))

(declare-fun m!890781 () Bool)

(assert (=> mapNonEmpty!34024 m!890781))

(assert (=> b!960465 m!890769))

(assert (=> b!960465 m!890769))

(declare-fun m!890783 () Bool)

(assert (=> b!960465 m!890783))

(check-sat (not b_next!18651) (not b!960464) (not b!960467) b_and!30157 tp_is_empty!21363 (not mapNonEmpty!34024) (not start!82412) (not b!960462) (not b!960465))
(check-sat b_and!30157 (not b_next!18651))
