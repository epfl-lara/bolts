; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3820 () Bool)

(assert start!3820)

(declare-fun b_free!777 () Bool)

(declare-fun b_next!777 () Bool)

(assert (=> start!3820 (= b_free!777 (not b_next!777))))

(declare-fun tp!3742 () Bool)

(declare-fun b_and!1583 () Bool)

(assert (=> start!3820 (= tp!3742 b_and!1583)))

(declare-fun mapIsEmpty!1216 () Bool)

(declare-fun mapRes!1216 () Bool)

(assert (=> mapIsEmpty!1216 mapRes!1216))

(declare-fun b!26776 () Bool)

(declare-fun res!15865 () Bool)

(declare-fun e!17469 () Bool)

(assert (=> b!26776 (=> (not res!15865) (not e!17469))))

(declare-datatypes ((array!1493 0))(
  ( (array!1494 (arr!703 (Array (_ BitVec 32) (_ BitVec 64))) (size!804 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1493)

(declare-datatypes ((List!598 0))(
  ( (Nil!595) (Cons!594 (h!1161 (_ BitVec 64)) (t!3287 List!598)) )
))
(declare-fun arrayNoDuplicates!0 (array!1493 (_ BitVec 32) List!598) Bool)

(assert (=> b!26776 (= res!15865 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!595))))

(declare-fun b!26777 () Bool)

(assert (=> b!26777 (= e!17469 false)))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1333 0))(
  ( (V!1334 (val!592 Int)) )
))
(declare-datatypes ((ValueCell!366 0))(
  ( (ValueCellFull!366 (v!1678 V!1333)) (EmptyCell!366) )
))
(declare-datatypes ((array!1495 0))(
  ( (array!1496 (arr!704 (Array (_ BitVec 32) ValueCell!366)) (size!805 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1495)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun lt!10416 () Bool)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1333)

(declare-fun minValue!1443 () V!1333)

(declare-datatypes ((tuple2!980 0))(
  ( (tuple2!981 (_1!500 (_ BitVec 64)) (_2!500 V!1333)) )
))
(declare-datatypes ((List!599 0))(
  ( (Nil!596) (Cons!595 (h!1162 tuple2!980) (t!3288 List!599)) )
))
(declare-datatypes ((ListLongMap!561 0))(
  ( (ListLongMap!562 (toList!296 List!599)) )
))
(declare-fun contains!230 (ListLongMap!561 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!124 (array!1493 array!1495 (_ BitVec 32) (_ BitVec 32) V!1333 V!1333 (_ BitVec 32) Int) ListLongMap!561)

(assert (=> b!26777 (= lt!10416 (contains!230 (getCurrentListMap!124 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304))))

(declare-fun b!26778 () Bool)

(declare-fun res!15861 () Bool)

(assert (=> b!26778 (=> (not res!15861) (not e!17469))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1493 (_ BitVec 32)) Bool)

(assert (=> b!26778 (= res!15861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!1216 () Bool)

(declare-fun tp!3741 () Bool)

(declare-fun e!17471 () Bool)

(assert (=> mapNonEmpty!1216 (= mapRes!1216 (and tp!3741 e!17471))))

(declare-fun mapValue!1216 () ValueCell!366)

(declare-fun mapKey!1216 () (_ BitVec 32))

(declare-fun mapRest!1216 () (Array (_ BitVec 32) ValueCell!366))

(assert (=> mapNonEmpty!1216 (= (arr!704 _values!1501) (store mapRest!1216 mapKey!1216 mapValue!1216))))

(declare-fun b!26779 () Bool)

(declare-fun tp_is_empty!1131 () Bool)

(assert (=> b!26779 (= e!17471 tp_is_empty!1131)))

(declare-fun b!26780 () Bool)

(declare-fun e!17470 () Bool)

(declare-fun e!17472 () Bool)

(assert (=> b!26780 (= e!17470 (and e!17472 mapRes!1216))))

(declare-fun condMapEmpty!1216 () Bool)

(declare-fun mapDefault!1216 () ValueCell!366)

(assert (=> b!26780 (= condMapEmpty!1216 (= (arr!704 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!366)) mapDefault!1216)))))

(declare-fun b!26781 () Bool)

(assert (=> b!26781 (= e!17472 tp_is_empty!1131)))

(declare-fun res!15863 () Bool)

(assert (=> start!3820 (=> (not res!15863) (not e!17469))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3820 (= res!15863 (validMask!0 mask!2294))))

(assert (=> start!3820 e!17469))

(assert (=> start!3820 true))

(assert (=> start!3820 tp!3742))

(declare-fun array_inv!483 (array!1495) Bool)

(assert (=> start!3820 (and (array_inv!483 _values!1501) e!17470)))

(declare-fun array_inv!484 (array!1493) Bool)

(assert (=> start!3820 (array_inv!484 _keys!1833)))

(assert (=> start!3820 tp_is_empty!1131))

(declare-fun b!26782 () Bool)

(declare-fun res!15864 () Bool)

(assert (=> b!26782 (=> (not res!15864) (not e!17469))))

(assert (=> b!26782 (= res!15864 (and (= (size!805 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!804 _keys!1833) (size!805 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!26783 () Bool)

(declare-fun res!15862 () Bool)

(assert (=> b!26783 (=> (not res!15862) (not e!17469))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!26783 (= res!15862 (validKeyInArray!0 k0!1304))))

(assert (= (and start!3820 res!15863) b!26782))

(assert (= (and b!26782 res!15864) b!26778))

(assert (= (and b!26778 res!15861) b!26776))

(assert (= (and b!26776 res!15865) b!26783))

(assert (= (and b!26783 res!15862) b!26777))

(assert (= (and b!26780 condMapEmpty!1216) mapIsEmpty!1216))

(assert (= (and b!26780 (not condMapEmpty!1216)) mapNonEmpty!1216))

(get-info :version)

(assert (= (and mapNonEmpty!1216 ((_ is ValueCellFull!366) mapValue!1216)) b!26779))

(assert (= (and b!26780 ((_ is ValueCellFull!366) mapDefault!1216)) b!26781))

(assert (= start!3820 b!26780))

(declare-fun m!21439 () Bool)

(assert (=> b!26776 m!21439))

(declare-fun m!21441 () Bool)

(assert (=> mapNonEmpty!1216 m!21441))

(declare-fun m!21443 () Bool)

(assert (=> b!26777 m!21443))

(assert (=> b!26777 m!21443))

(declare-fun m!21445 () Bool)

(assert (=> b!26777 m!21445))

(declare-fun m!21447 () Bool)

(assert (=> b!26783 m!21447))

(declare-fun m!21449 () Bool)

(assert (=> b!26778 m!21449))

(declare-fun m!21451 () Bool)

(assert (=> start!3820 m!21451))

(declare-fun m!21453 () Bool)

(assert (=> start!3820 m!21453))

(declare-fun m!21455 () Bool)

(assert (=> start!3820 m!21455))

(check-sat (not b!26783) b_and!1583 (not b!26777) tp_is_empty!1131 (not start!3820) (not b_next!777) (not b!26778) (not mapNonEmpty!1216) (not b!26776))
(check-sat b_and!1583 (not b_next!777))
