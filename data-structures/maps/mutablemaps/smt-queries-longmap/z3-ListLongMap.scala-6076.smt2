; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78594 () Bool)

(assert start!78594)

(declare-fun b_free!16779 () Bool)

(declare-fun b_next!16779 () Bool)

(assert (=> start!78594 (= b_free!16779 (not b_next!16779))))

(declare-fun tp!58778 () Bool)

(declare-fun b_and!27419 () Bool)

(assert (=> start!78594 (= tp!58778 b_and!27419)))

(declare-fun b!915691 () Bool)

(declare-fun e!514010 () Bool)

(assert (=> b!915691 (= e!514010 false)))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30681 0))(
  ( (V!30682 (val!9694 Int)) )
))
(declare-datatypes ((ValueCell!9162 0))(
  ( (ValueCellFull!9162 (v!12212 V!30681)) (EmptyCell!9162) )
))
(declare-datatypes ((array!54578 0))(
  ( (array!54579 (arr!26230 (Array (_ BitVec 32) ValueCell!9162)) (size!26690 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54578)

(declare-fun defaultEntry!1235 () Int)

(declare-fun lt!411666 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-datatypes ((array!54580 0))(
  ( (array!54581 (arr!26231 (Array (_ BitVec 32) (_ BitVec 64))) (size!26691 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54580)

(declare-fun zeroValue!1173 () V!30681)

(declare-fun minValue!1173 () V!30681)

(declare-datatypes ((tuple2!12644 0))(
  ( (tuple2!12645 (_1!6332 (_ BitVec 64)) (_2!6332 V!30681)) )
))
(declare-datatypes ((List!18502 0))(
  ( (Nil!18499) (Cons!18498 (h!19644 tuple2!12644) (t!26123 List!18502)) )
))
(declare-datatypes ((ListLongMap!11355 0))(
  ( (ListLongMap!11356 (toList!5693 List!18502)) )
))
(declare-fun contains!4713 (ListLongMap!11355 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2922 (array!54580 array!54578 (_ BitVec 32) (_ BitVec 32) V!30681 V!30681 (_ BitVec 32) Int) ListLongMap!11355)

(assert (=> b!915691 (= lt!411666 (contains!4713 (getCurrentListMap!2922 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k0!1099))))

(declare-fun b!915692 () Bool)

(declare-fun res!617453 () Bool)

(assert (=> b!915692 (=> (not res!617453) (not e!514010))))

(assert (=> b!915692 (= res!617453 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26691 _keys!1487))))))

(declare-fun b!915693 () Bool)

(declare-fun res!617449 () Bool)

(assert (=> b!915693 (=> (not res!617449) (not e!514010))))

(assert (=> b!915693 (= res!617449 (and (= (size!26690 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26691 _keys!1487) (size!26690 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!617452 () Bool)

(assert (=> start!78594 (=> (not res!617452) (not e!514010))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78594 (= res!617452 (validMask!0 mask!1881))))

(assert (=> start!78594 e!514010))

(assert (=> start!78594 true))

(declare-fun e!514014 () Bool)

(declare-fun array_inv!20458 (array!54578) Bool)

(assert (=> start!78594 (and (array_inv!20458 _values!1231) e!514014)))

(assert (=> start!78594 tp!58778))

(declare-fun array_inv!20459 (array!54580) Bool)

(assert (=> start!78594 (array_inv!20459 _keys!1487)))

(declare-fun tp_is_empty!19287 () Bool)

(assert (=> start!78594 tp_is_empty!19287))

(declare-fun b!915694 () Bool)

(declare-fun e!514011 () Bool)

(assert (=> b!915694 (= e!514011 tp_is_empty!19287)))

(declare-fun b!915695 () Bool)

(declare-fun e!514013 () Bool)

(assert (=> b!915695 (= e!514013 tp_is_empty!19287)))

(declare-fun b!915696 () Bool)

(declare-fun res!617450 () Bool)

(assert (=> b!915696 (=> (not res!617450) (not e!514010))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54580 (_ BitVec 32)) Bool)

(assert (=> b!915696 (= res!617450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!30687 () Bool)

(declare-fun mapRes!30687 () Bool)

(declare-fun tp!58779 () Bool)

(assert (=> mapNonEmpty!30687 (= mapRes!30687 (and tp!58779 e!514013))))

(declare-fun mapValue!30687 () ValueCell!9162)

(declare-fun mapKey!30687 () (_ BitVec 32))

(declare-fun mapRest!30687 () (Array (_ BitVec 32) ValueCell!9162))

(assert (=> mapNonEmpty!30687 (= (arr!26230 _values!1231) (store mapRest!30687 mapKey!30687 mapValue!30687))))

(declare-fun b!915697 () Bool)

(declare-fun res!617451 () Bool)

(assert (=> b!915697 (=> (not res!617451) (not e!514010))))

(declare-datatypes ((List!18503 0))(
  ( (Nil!18500) (Cons!18499 (h!19645 (_ BitVec 64)) (t!26124 List!18503)) )
))
(declare-fun arrayNoDuplicates!0 (array!54580 (_ BitVec 32) List!18503) Bool)

(assert (=> b!915697 (= res!617451 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18500))))

(declare-fun mapIsEmpty!30687 () Bool)

(assert (=> mapIsEmpty!30687 mapRes!30687))

(declare-fun b!915698 () Bool)

(assert (=> b!915698 (= e!514014 (and e!514011 mapRes!30687))))

(declare-fun condMapEmpty!30687 () Bool)

(declare-fun mapDefault!30687 () ValueCell!9162)

(assert (=> b!915698 (= condMapEmpty!30687 (= (arr!26230 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9162)) mapDefault!30687)))))

(assert (= (and start!78594 res!617452) b!915693))

(assert (= (and b!915693 res!617449) b!915696))

(assert (= (and b!915696 res!617450) b!915697))

(assert (= (and b!915697 res!617451) b!915692))

(assert (= (and b!915692 res!617453) b!915691))

(assert (= (and b!915698 condMapEmpty!30687) mapIsEmpty!30687))

(assert (= (and b!915698 (not condMapEmpty!30687)) mapNonEmpty!30687))

(get-info :version)

(assert (= (and mapNonEmpty!30687 ((_ is ValueCellFull!9162) mapValue!30687)) b!915695))

(assert (= (and b!915698 ((_ is ValueCellFull!9162) mapDefault!30687)) b!915694))

(assert (= start!78594 b!915698))

(declare-fun m!850031 () Bool)

(assert (=> mapNonEmpty!30687 m!850031))

(declare-fun m!850033 () Bool)

(assert (=> b!915691 m!850033))

(assert (=> b!915691 m!850033))

(declare-fun m!850035 () Bool)

(assert (=> b!915691 m!850035))

(declare-fun m!850037 () Bool)

(assert (=> b!915696 m!850037))

(declare-fun m!850039 () Bool)

(assert (=> b!915697 m!850039))

(declare-fun m!850041 () Bool)

(assert (=> start!78594 m!850041))

(declare-fun m!850043 () Bool)

(assert (=> start!78594 m!850043))

(declare-fun m!850045 () Bool)

(assert (=> start!78594 m!850045))

(check-sat tp_is_empty!19287 (not b!915696) (not b!915691) (not start!78594) (not mapNonEmpty!30687) (not b!915697) (not b_next!16779) b_and!27419)
(check-sat b_and!27419 (not b_next!16779))
