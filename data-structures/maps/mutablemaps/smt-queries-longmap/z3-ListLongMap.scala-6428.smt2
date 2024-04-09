; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82394 () Bool)

(assert start!82394)

(declare-fun b_free!18633 () Bool)

(declare-fun b_next!18633 () Bool)

(assert (=> start!82394 (= b_free!18633 (not b_next!18633))))

(declare-fun tp!64870 () Bool)

(declare-fun b_and!30139 () Bool)

(assert (=> start!82394 (= tp!64870 b_and!30139)))

(declare-fun b!960218 () Bool)

(declare-fun res!642865 () Bool)

(declare-fun e!541310 () Bool)

(assert (=> b!960218 (=> (not res!642865) (not e!541310))))

(declare-datatypes ((array!58793 0))(
  ( (array!58794 (arr!28266 (Array (_ BitVec 32) (_ BitVec 64))) (size!28746 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58793)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!960218 (= res!642865 (validKeyInArray!0 (select (arr!28266 _keys!1668) i!793)))))

(declare-fun b!960219 () Bool)

(assert (=> b!960219 (= e!541310 false)))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33443 0))(
  ( (V!33444 (val!10723 Int)) )
))
(declare-fun minValue!1328 () V!33443)

(declare-fun lt!430586 () Bool)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((ValueCell!10191 0))(
  ( (ValueCellFull!10191 (v!13280 V!33443)) (EmptyCell!10191) )
))
(declare-datatypes ((array!58795 0))(
  ( (array!58796 (arr!28267 (Array (_ BitVec 32) ValueCell!10191)) (size!28747 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58795)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33443)

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((tuple2!13912 0))(
  ( (tuple2!13913 (_1!6966 (_ BitVec 64)) (_2!6966 V!33443)) )
))
(declare-datatypes ((List!19776 0))(
  ( (Nil!19773) (Cons!19772 (h!20934 tuple2!13912) (t!28147 List!19776)) )
))
(declare-datatypes ((ListLongMap!12623 0))(
  ( (ListLongMap!12624 (toList!6327 List!19776)) )
))
(declare-fun contains!5377 (ListLongMap!12623 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3512 (array!58793 array!58795 (_ BitVec 32) (_ BitVec 32) V!33443 V!33443 (_ BitVec 32) Int) ListLongMap!12623)

(assert (=> b!960219 (= lt!430586 (contains!5377 (getCurrentListMap!3512 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28266 _keys!1668) i!793)))))

(declare-fun b!960220 () Bool)

(declare-fun e!541312 () Bool)

(declare-fun tp_is_empty!21345 () Bool)

(assert (=> b!960220 (= e!541312 tp_is_empty!21345)))

(declare-fun b!960221 () Bool)

(declare-fun res!642868 () Bool)

(assert (=> b!960221 (=> (not res!642868) (not e!541310))))

(assert (=> b!960221 (= res!642868 (and (= (size!28747 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28746 _keys!1668) (size!28747 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!960222 () Bool)

(declare-fun res!642866 () Bool)

(assert (=> b!960222 (=> (not res!642866) (not e!541310))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58793 (_ BitVec 32)) Bool)

(assert (=> b!960222 (= res!642866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!960223 () Bool)

(declare-fun e!541309 () Bool)

(assert (=> b!960223 (= e!541309 tp_is_empty!21345)))

(declare-fun b!960224 () Bool)

(declare-fun res!642870 () Bool)

(assert (=> b!960224 (=> (not res!642870) (not e!541310))))

(assert (=> b!960224 (= res!642870 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28746 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28746 _keys!1668))))))

(declare-fun b!960225 () Bool)

(declare-fun e!541311 () Bool)

(declare-fun mapRes!33997 () Bool)

(assert (=> b!960225 (= e!541311 (and e!541309 mapRes!33997))))

(declare-fun condMapEmpty!33997 () Bool)

(declare-fun mapDefault!33997 () ValueCell!10191)

(assert (=> b!960225 (= condMapEmpty!33997 (= (arr!28267 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10191)) mapDefault!33997)))))

(declare-fun mapIsEmpty!33997 () Bool)

(assert (=> mapIsEmpty!33997 mapRes!33997))

(declare-fun res!642867 () Bool)

(assert (=> start!82394 (=> (not res!642867) (not e!541310))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82394 (= res!642867 (validMask!0 mask!2088))))

(assert (=> start!82394 e!541310))

(assert (=> start!82394 true))

(assert (=> start!82394 tp_is_empty!21345))

(declare-fun array_inv!21845 (array!58793) Bool)

(assert (=> start!82394 (array_inv!21845 _keys!1668)))

(declare-fun array_inv!21846 (array!58795) Bool)

(assert (=> start!82394 (and (array_inv!21846 _values!1386) e!541311)))

(assert (=> start!82394 tp!64870))

(declare-fun mapNonEmpty!33997 () Bool)

(declare-fun tp!64869 () Bool)

(assert (=> mapNonEmpty!33997 (= mapRes!33997 (and tp!64869 e!541312))))

(declare-fun mapKey!33997 () (_ BitVec 32))

(declare-fun mapRest!33997 () (Array (_ BitVec 32) ValueCell!10191))

(declare-fun mapValue!33997 () ValueCell!10191)

(assert (=> mapNonEmpty!33997 (= (arr!28267 _values!1386) (store mapRest!33997 mapKey!33997 mapValue!33997))))

(declare-fun b!960226 () Bool)

(declare-fun res!642869 () Bool)

(assert (=> b!960226 (=> (not res!642869) (not e!541310))))

(declare-datatypes ((List!19777 0))(
  ( (Nil!19774) (Cons!19773 (h!20935 (_ BitVec 64)) (t!28148 List!19777)) )
))
(declare-fun arrayNoDuplicates!0 (array!58793 (_ BitVec 32) List!19777) Bool)

(assert (=> b!960226 (= res!642869 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19774))))

(assert (= (and start!82394 res!642867) b!960221))

(assert (= (and b!960221 res!642868) b!960222))

(assert (= (and b!960222 res!642866) b!960226))

(assert (= (and b!960226 res!642869) b!960224))

(assert (= (and b!960224 res!642870) b!960218))

(assert (= (and b!960218 res!642865) b!960219))

(assert (= (and b!960225 condMapEmpty!33997) mapIsEmpty!33997))

(assert (= (and b!960225 (not condMapEmpty!33997)) mapNonEmpty!33997))

(get-info :version)

(assert (= (and mapNonEmpty!33997 ((_ is ValueCellFull!10191) mapValue!33997)) b!960220))

(assert (= (and b!960225 ((_ is ValueCellFull!10191) mapDefault!33997)) b!960223))

(assert (= start!82394 b!960225))

(declare-fun m!890585 () Bool)

(assert (=> b!960222 m!890585))

(declare-fun m!890587 () Bool)

(assert (=> mapNonEmpty!33997 m!890587))

(declare-fun m!890589 () Bool)

(assert (=> b!960226 m!890589))

(declare-fun m!890591 () Bool)

(assert (=> start!82394 m!890591))

(declare-fun m!890593 () Bool)

(assert (=> start!82394 m!890593))

(declare-fun m!890595 () Bool)

(assert (=> start!82394 m!890595))

(declare-fun m!890597 () Bool)

(assert (=> b!960219 m!890597))

(declare-fun m!890599 () Bool)

(assert (=> b!960219 m!890599))

(assert (=> b!960219 m!890597))

(assert (=> b!960219 m!890599))

(declare-fun m!890601 () Bool)

(assert (=> b!960219 m!890601))

(assert (=> b!960218 m!890599))

(assert (=> b!960218 m!890599))

(declare-fun m!890603 () Bool)

(assert (=> b!960218 m!890603))

(check-sat (not b_next!18633) (not b!960218) (not b!960226) tp_is_empty!21345 (not mapNonEmpty!33997) (not start!82394) b_and!30139 (not b!960222) (not b!960219))
(check-sat b_and!30139 (not b_next!18633))
