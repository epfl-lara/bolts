; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78046 () Bool)

(assert start!78046)

(declare-fun b_free!16545 () Bool)

(declare-fun b_next!16545 () Bool)

(assert (=> start!78046 (= b_free!16545 (not b_next!16545))))

(declare-fun tp!57906 () Bool)

(declare-fun b_and!27135 () Bool)

(assert (=> start!78046 (= tp!57906 b_and!27135)))

(declare-fun b!910587 () Bool)

(declare-fun e!510621 () Bool)

(declare-fun tp_is_empty!18963 () Bool)

(assert (=> b!910587 (= e!510621 tp_is_empty!18963)))

(declare-fun b!910588 () Bool)

(declare-fun res!614546 () Bool)

(declare-fun e!510623 () Bool)

(assert (=> b!910588 (=> (not res!614546) (not e!510623))))

(declare-datatypes ((V!30249 0))(
  ( (V!30250 (val!9532 Int)) )
))
(declare-datatypes ((ValueCell!9000 0))(
  ( (ValueCellFull!9000 (v!12041 V!30249)) (EmptyCell!9000) )
))
(declare-datatypes ((array!53938 0))(
  ( (array!53939 (arr!25921 (Array (_ BitVec 32) ValueCell!9000)) (size!26381 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53938)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53940 0))(
  ( (array!53941 (arr!25922 (Array (_ BitVec 32) (_ BitVec 64))) (size!26382 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53940)

(assert (=> b!910588 (= res!614546 (and (= (size!26381 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26382 _keys!1386) (size!26381 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!910589 () Bool)

(declare-fun res!614548 () Bool)

(assert (=> b!910589 (=> (not res!614548) (not e!510623))))

(declare-datatypes ((List!18312 0))(
  ( (Nil!18309) (Cons!18308 (h!19454 (_ BitVec 64)) (t!25905 List!18312)) )
))
(declare-fun arrayNoDuplicates!0 (array!53940 (_ BitVec 32) List!18312) Bool)

(assert (=> b!910589 (= res!614548 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18309))))

(declare-fun b!910590 () Bool)

(declare-fun e!510619 () Bool)

(assert (=> b!910590 (= e!510619 tp_is_empty!18963)))

(declare-fun mapIsEmpty!30166 () Bool)

(declare-fun mapRes!30166 () Bool)

(assert (=> mapIsEmpty!30166 mapRes!30166))

(declare-fun b!910591 () Bool)

(assert (=> b!910591 (= e!510623 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!410245 () Bool)

(declare-fun zeroValue!1094 () V!30249)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30249)

(declare-datatypes ((tuple2!12462 0))(
  ( (tuple2!12463 (_1!6241 (_ BitVec 64)) (_2!6241 V!30249)) )
))
(declare-datatypes ((List!18313 0))(
  ( (Nil!18310) (Cons!18309 (h!19455 tuple2!12462) (t!25906 List!18313)) )
))
(declare-datatypes ((ListLongMap!11173 0))(
  ( (ListLongMap!11174 (toList!5602 List!18313)) )
))
(declare-fun contains!4611 (ListLongMap!11173 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2832 (array!53940 array!53938 (_ BitVec 32) (_ BitVec 32) V!30249 V!30249 (_ BitVec 32) Int) ListLongMap!11173)

(assert (=> b!910591 (= lt!410245 (contains!4611 (getCurrentListMap!2832 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!910592 () Bool)

(declare-fun e!510620 () Bool)

(assert (=> b!910592 (= e!510620 (and e!510619 mapRes!30166))))

(declare-fun condMapEmpty!30166 () Bool)

(declare-fun mapDefault!30166 () ValueCell!9000)

(assert (=> b!910592 (= condMapEmpty!30166 (= (arr!25921 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9000)) mapDefault!30166)))))

(declare-fun b!910593 () Bool)

(declare-fun res!614547 () Bool)

(assert (=> b!910593 (=> (not res!614547) (not e!510623))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53940 (_ BitVec 32)) Bool)

(assert (=> b!910593 (= res!614547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!614545 () Bool)

(assert (=> start!78046 (=> (not res!614545) (not e!510623))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78046 (= res!614545 (validMask!0 mask!1756))))

(assert (=> start!78046 e!510623))

(declare-fun array_inv!20250 (array!53938) Bool)

(assert (=> start!78046 (and (array_inv!20250 _values!1152) e!510620)))

(assert (=> start!78046 tp!57906))

(assert (=> start!78046 true))

(assert (=> start!78046 tp_is_empty!18963))

(declare-fun array_inv!20251 (array!53940) Bool)

(assert (=> start!78046 (array_inv!20251 _keys!1386)))

(declare-fun mapNonEmpty!30166 () Bool)

(declare-fun tp!57907 () Bool)

(assert (=> mapNonEmpty!30166 (= mapRes!30166 (and tp!57907 e!510621))))

(declare-fun mapRest!30166 () (Array (_ BitVec 32) ValueCell!9000))

(declare-fun mapValue!30166 () ValueCell!9000)

(declare-fun mapKey!30166 () (_ BitVec 32))

(assert (=> mapNonEmpty!30166 (= (arr!25921 _values!1152) (store mapRest!30166 mapKey!30166 mapValue!30166))))

(assert (= (and start!78046 res!614545) b!910588))

(assert (= (and b!910588 res!614546) b!910593))

(assert (= (and b!910593 res!614547) b!910589))

(assert (= (and b!910589 res!614548) b!910591))

(assert (= (and b!910592 condMapEmpty!30166) mapIsEmpty!30166))

(assert (= (and b!910592 (not condMapEmpty!30166)) mapNonEmpty!30166))

(get-info :version)

(assert (= (and mapNonEmpty!30166 ((_ is ValueCellFull!9000) mapValue!30166)) b!910587))

(assert (= (and b!910592 ((_ is ValueCellFull!9000) mapDefault!30166)) b!910590))

(assert (= start!78046 b!910592))

(declare-fun m!845621 () Bool)

(assert (=> b!910591 m!845621))

(assert (=> b!910591 m!845621))

(declare-fun m!845623 () Bool)

(assert (=> b!910591 m!845623))

(declare-fun m!845625 () Bool)

(assert (=> start!78046 m!845625))

(declare-fun m!845627 () Bool)

(assert (=> start!78046 m!845627))

(declare-fun m!845629 () Bool)

(assert (=> start!78046 m!845629))

(declare-fun m!845631 () Bool)

(assert (=> b!910589 m!845631))

(declare-fun m!845633 () Bool)

(assert (=> mapNonEmpty!30166 m!845633))

(declare-fun m!845635 () Bool)

(assert (=> b!910593 m!845635))

(check-sat (not start!78046) tp_is_empty!18963 (not b!910593) b_and!27135 (not b!910589) (not b_next!16545) (not mapNonEmpty!30166) (not b!910591))
(check-sat b_and!27135 (not b_next!16545))
