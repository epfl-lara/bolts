; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82406 () Bool)

(assert start!82406)

(declare-fun b_free!18645 () Bool)

(declare-fun b_next!18645 () Bool)

(assert (=> start!82406 (= b_free!18645 (not b_next!18645))))

(declare-fun tp!64905 () Bool)

(declare-fun b_and!30151 () Bool)

(assert (=> start!82406 (= tp!64905 b_and!30151)))

(declare-fun b!960380 () Bool)

(declare-fun res!642977 () Bool)

(declare-fun e!541401 () Bool)

(assert (=> b!960380 (=> (not res!642977) (not e!541401))))

(declare-datatypes ((array!58815 0))(
  ( (array!58816 (arr!28277 (Array (_ BitVec 32) (_ BitVec 64))) (size!28757 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58815)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!960380 (= res!642977 (validKeyInArray!0 (select (arr!28277 _keys!1668) i!793)))))

(declare-fun b!960381 () Bool)

(declare-fun res!642975 () Bool)

(assert (=> b!960381 (=> (not res!642975) (not e!541401))))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!960381 (= res!642975 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28757 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28757 _keys!1668))))))

(declare-fun b!960382 () Bool)

(declare-fun res!642974 () Bool)

(assert (=> b!960382 (=> (not res!642974) (not e!541401))))

(declare-datatypes ((List!19783 0))(
  ( (Nil!19780) (Cons!19779 (h!20941 (_ BitVec 64)) (t!28154 List!19783)) )
))
(declare-fun arrayNoDuplicates!0 (array!58815 (_ BitVec 32) List!19783) Bool)

(assert (=> b!960382 (= res!642974 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19780))))

(declare-fun b!960383 () Bool)

(declare-fun e!541399 () Bool)

(declare-fun tp_is_empty!21357 () Bool)

(assert (=> b!960383 (= e!541399 tp_is_empty!21357)))

(declare-fun b!960384 () Bool)

(declare-fun res!642976 () Bool)

(assert (=> b!960384 (=> (not res!642976) (not e!541401))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58815 (_ BitVec 32)) Bool)

(assert (=> b!960384 (= res!642976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!960385 () Bool)

(declare-fun e!541403 () Bool)

(assert (=> b!960385 (= e!541403 tp_is_empty!21357)))

(declare-fun mapIsEmpty!34015 () Bool)

(declare-fun mapRes!34015 () Bool)

(assert (=> mapIsEmpty!34015 mapRes!34015))

(declare-fun b!960387 () Bool)

(declare-fun e!541402 () Bool)

(assert (=> b!960387 (= e!541402 (and e!541399 mapRes!34015))))

(declare-fun condMapEmpty!34015 () Bool)

(declare-datatypes ((V!33459 0))(
  ( (V!33460 (val!10729 Int)) )
))
(declare-datatypes ((ValueCell!10197 0))(
  ( (ValueCellFull!10197 (v!13286 V!33459)) (EmptyCell!10197) )
))
(declare-datatypes ((array!58817 0))(
  ( (array!58818 (arr!28278 (Array (_ BitVec 32) ValueCell!10197)) (size!28758 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58817)

(declare-fun mapDefault!34015 () ValueCell!10197)

(assert (=> b!960387 (= condMapEmpty!34015 (= (arr!28278 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10197)) mapDefault!34015)))))

(declare-fun mapNonEmpty!34015 () Bool)

(declare-fun tp!64906 () Bool)

(assert (=> mapNonEmpty!34015 (= mapRes!34015 (and tp!64906 e!541403))))

(declare-fun mapRest!34015 () (Array (_ BitVec 32) ValueCell!10197))

(declare-fun mapValue!34015 () ValueCell!10197)

(declare-fun mapKey!34015 () (_ BitVec 32))

(assert (=> mapNonEmpty!34015 (= (arr!28278 _values!1386) (store mapRest!34015 mapKey!34015 mapValue!34015))))

(declare-fun b!960388 () Bool)

(declare-fun res!642978 () Bool)

(assert (=> b!960388 (=> (not res!642978) (not e!541401))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!960388 (= res!642978 (and (= (size!28758 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28757 _keys!1668) (size!28758 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!960386 () Bool)

(assert (=> b!960386 (= e!541401 false)))

(declare-fun minValue!1328 () V!33459)

(declare-fun lt!430604 () Bool)

(declare-fun zeroValue!1328 () V!33459)

(declare-fun defaultEntry!1389 () Int)

(declare-datatypes ((tuple2!13922 0))(
  ( (tuple2!13923 (_1!6971 (_ BitVec 64)) (_2!6971 V!33459)) )
))
(declare-datatypes ((List!19784 0))(
  ( (Nil!19781) (Cons!19780 (h!20942 tuple2!13922) (t!28155 List!19784)) )
))
(declare-datatypes ((ListLongMap!12633 0))(
  ( (ListLongMap!12634 (toList!6332 List!19784)) )
))
(declare-fun contains!5382 (ListLongMap!12633 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3517 (array!58815 array!58817 (_ BitVec 32) (_ BitVec 32) V!33459 V!33459 (_ BitVec 32) Int) ListLongMap!12633)

(assert (=> b!960386 (= lt!430604 (contains!5382 (getCurrentListMap!3517 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28277 _keys!1668) i!793)))))

(declare-fun res!642973 () Bool)

(assert (=> start!82406 (=> (not res!642973) (not e!541401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82406 (= res!642973 (validMask!0 mask!2088))))

(assert (=> start!82406 e!541401))

(assert (=> start!82406 true))

(assert (=> start!82406 tp_is_empty!21357))

(declare-fun array_inv!21853 (array!58815) Bool)

(assert (=> start!82406 (array_inv!21853 _keys!1668)))

(declare-fun array_inv!21854 (array!58817) Bool)

(assert (=> start!82406 (and (array_inv!21854 _values!1386) e!541402)))

(assert (=> start!82406 tp!64905))

(assert (= (and start!82406 res!642973) b!960388))

(assert (= (and b!960388 res!642978) b!960384))

(assert (= (and b!960384 res!642976) b!960382))

(assert (= (and b!960382 res!642974) b!960381))

(assert (= (and b!960381 res!642975) b!960380))

(assert (= (and b!960380 res!642977) b!960386))

(assert (= (and b!960387 condMapEmpty!34015) mapIsEmpty!34015))

(assert (= (and b!960387 (not condMapEmpty!34015)) mapNonEmpty!34015))

(get-info :version)

(assert (= (and mapNonEmpty!34015 ((_ is ValueCellFull!10197) mapValue!34015)) b!960385))

(assert (= (and b!960387 ((_ is ValueCellFull!10197) mapDefault!34015)) b!960383))

(assert (= start!82406 b!960387))

(declare-fun m!890705 () Bool)

(assert (=> start!82406 m!890705))

(declare-fun m!890707 () Bool)

(assert (=> start!82406 m!890707))

(declare-fun m!890709 () Bool)

(assert (=> start!82406 m!890709))

(declare-fun m!890711 () Bool)

(assert (=> b!960382 m!890711))

(declare-fun m!890713 () Bool)

(assert (=> mapNonEmpty!34015 m!890713))

(declare-fun m!890715 () Bool)

(assert (=> b!960380 m!890715))

(assert (=> b!960380 m!890715))

(declare-fun m!890717 () Bool)

(assert (=> b!960380 m!890717))

(declare-fun m!890719 () Bool)

(assert (=> b!960386 m!890719))

(assert (=> b!960386 m!890715))

(assert (=> b!960386 m!890719))

(assert (=> b!960386 m!890715))

(declare-fun m!890721 () Bool)

(assert (=> b!960386 m!890721))

(declare-fun m!890723 () Bool)

(assert (=> b!960384 m!890723))

(check-sat (not b!960384) (not b!960382) (not b!960380) (not b_next!18645) b_and!30151 tp_is_empty!21357 (not mapNonEmpty!34015) (not b!960386) (not start!82406))
(check-sat b_and!30151 (not b_next!18645))
