; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42074 () Bool)

(assert start!42074)

(declare-fun b_free!11619 () Bool)

(declare-fun b_next!11619 () Bool)

(assert (=> start!42074 (= b_free!11619 (not b_next!11619))))

(declare-fun tp!40875 () Bool)

(declare-fun b_and!20047 () Bool)

(assert (=> start!42074 (= tp!40875 b_and!20047)))

(declare-fun b!469466 () Bool)

(declare-fun res!280617 () Bool)

(declare-fun e!274940 () Bool)

(assert (=> b!469466 (=> (not res!280617) (not e!274940))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29829 0))(
  ( (array!29830 (arr!14336 (Array (_ BitVec 32) (_ BitVec 64))) (size!14688 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29829)

(declare-datatypes ((V!18501 0))(
  ( (V!18502 (val!6568 Int)) )
))
(declare-datatypes ((ValueCell!6180 0))(
  ( (ValueCellFull!6180 (v!8854 V!18501)) (EmptyCell!6180) )
))
(declare-datatypes ((array!29831 0))(
  ( (array!29832 (arr!14337 (Array (_ BitVec 32) ValueCell!6180)) (size!14689 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29831)

(assert (=> b!469466 (= res!280617 (and (= (size!14689 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14688 _keys!1025) (size!14689 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!469467 () Bool)

(declare-fun e!274938 () Bool)

(declare-fun e!274942 () Bool)

(declare-fun mapRes!21268 () Bool)

(assert (=> b!469467 (= e!274938 (and e!274942 mapRes!21268))))

(declare-fun condMapEmpty!21268 () Bool)

(declare-fun mapDefault!21268 () ValueCell!6180)

(assert (=> b!469467 (= condMapEmpty!21268 (= (arr!14337 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6180)) mapDefault!21268)))))

(declare-fun mapIsEmpty!21268 () Bool)

(assert (=> mapIsEmpty!21268 mapRes!21268))

(declare-fun b!469468 () Bool)

(declare-fun e!274939 () Bool)

(declare-fun tp_is_empty!13047 () Bool)

(assert (=> b!469468 (= e!274939 tp_is_empty!13047)))

(declare-fun b!469469 () Bool)

(declare-fun res!280618 () Bool)

(assert (=> b!469469 (=> (not res!280618) (not e!274940))))

(declare-datatypes ((List!8738 0))(
  ( (Nil!8735) (Cons!8734 (h!9590 (_ BitVec 64)) (t!14706 List!8738)) )
))
(declare-fun arrayNoDuplicates!0 (array!29829 (_ BitVec 32) List!8738) Bool)

(assert (=> b!469469 (= res!280618 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8735))))

(declare-fun res!280619 () Bool)

(assert (=> start!42074 (=> (not res!280619) (not e!274940))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42074 (= res!280619 (validMask!0 mask!1365))))

(assert (=> start!42074 e!274940))

(assert (=> start!42074 tp_is_empty!13047))

(assert (=> start!42074 tp!40875))

(assert (=> start!42074 true))

(declare-fun array_inv!10340 (array!29829) Bool)

(assert (=> start!42074 (array_inv!10340 _keys!1025)))

(declare-fun array_inv!10341 (array!29831) Bool)

(assert (=> start!42074 (and (array_inv!10341 _values!833) e!274938)))

(declare-fun b!469470 () Bool)

(declare-fun e!274937 () Bool)

(assert (=> b!469470 (= e!274937 true)))

(declare-datatypes ((tuple2!8620 0))(
  ( (tuple2!8621 (_1!4320 (_ BitVec 64)) (_2!4320 V!18501)) )
))
(declare-datatypes ((List!8739 0))(
  ( (Nil!8736) (Cons!8735 (h!9591 tuple2!8620) (t!14707 List!8739)) )
))
(declare-datatypes ((ListLongMap!7547 0))(
  ( (ListLongMap!7548 (toList!3789 List!8739)) )
))
(declare-fun lt!212867 () ListLongMap!7547)

(declare-fun lt!212869 () tuple2!8620)

(declare-fun minValueBefore!38 () V!18501)

(declare-fun +!1677 (ListLongMap!7547 tuple2!8620) ListLongMap!7547)

(assert (=> b!469470 (= (+!1677 lt!212867 lt!212869) (+!1677 (+!1677 lt!212867 (tuple2!8621 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212869))))

(declare-fun minValueAfter!38 () V!18501)

(assert (=> b!469470 (= lt!212869 (tuple2!8621 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13702 0))(
  ( (Unit!13703) )
))
(declare-fun lt!212871 () Unit!13702)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!118 (ListLongMap!7547 (_ BitVec 64) V!18501 V!18501) Unit!13702)

(assert (=> b!469470 (= lt!212871 (addSameAsAddTwiceSameKeyDiffValues!118 lt!212867 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun zeroValue!794 () V!18501)

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!212870 () ListLongMap!7547)

(declare-fun getCurrentListMap!2199 (array!29829 array!29831 (_ BitVec 32) (_ BitVec 32) V!18501 V!18501 (_ BitVec 32) Int) ListLongMap!7547)

(assert (=> b!469470 (= lt!212870 (getCurrentListMap!2199 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212866 () ListLongMap!7547)

(assert (=> b!469470 (= lt!212866 (getCurrentListMap!2199 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469471 () Bool)

(assert (=> b!469471 (= e!274942 tp_is_empty!13047)))

(declare-fun b!469472 () Bool)

(declare-fun res!280620 () Bool)

(assert (=> b!469472 (=> (not res!280620) (not e!274940))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29829 (_ BitVec 32)) Bool)

(assert (=> b!469472 (= res!280620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!469473 () Bool)

(assert (=> b!469473 (= e!274940 (not e!274937))))

(declare-fun res!280621 () Bool)

(assert (=> b!469473 (=> res!280621 e!274937)))

(assert (=> b!469473 (= res!280621 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!212868 () ListLongMap!7547)

(assert (=> b!469473 (= lt!212867 lt!212868)))

(declare-fun lt!212865 () Unit!13702)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!147 (array!29829 array!29831 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18501 V!18501 V!18501 V!18501 (_ BitVec 32) Int) Unit!13702)

(assert (=> b!469473 (= lt!212865 (lemmaNoChangeToArrayThenSameMapNoExtras!147 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1952 (array!29829 array!29831 (_ BitVec 32) (_ BitVec 32) V!18501 V!18501 (_ BitVec 32) Int) ListLongMap!7547)

(assert (=> b!469473 (= lt!212868 (getCurrentListMapNoExtraKeys!1952 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!469473 (= lt!212867 (getCurrentListMapNoExtraKeys!1952 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21268 () Bool)

(declare-fun tp!40876 () Bool)

(assert (=> mapNonEmpty!21268 (= mapRes!21268 (and tp!40876 e!274939))))

(declare-fun mapValue!21268 () ValueCell!6180)

(declare-fun mapRest!21268 () (Array (_ BitVec 32) ValueCell!6180))

(declare-fun mapKey!21268 () (_ BitVec 32))

(assert (=> mapNonEmpty!21268 (= (arr!14337 _values!833) (store mapRest!21268 mapKey!21268 mapValue!21268))))

(assert (= (and start!42074 res!280619) b!469466))

(assert (= (and b!469466 res!280617) b!469472))

(assert (= (and b!469472 res!280620) b!469469))

(assert (= (and b!469469 res!280618) b!469473))

(assert (= (and b!469473 (not res!280621)) b!469470))

(assert (= (and b!469467 condMapEmpty!21268) mapIsEmpty!21268))

(assert (= (and b!469467 (not condMapEmpty!21268)) mapNonEmpty!21268))

(get-info :version)

(assert (= (and mapNonEmpty!21268 ((_ is ValueCellFull!6180) mapValue!21268)) b!469468))

(assert (= (and b!469467 ((_ is ValueCellFull!6180) mapDefault!21268)) b!469471))

(assert (= start!42074 b!469467))

(declare-fun m!451721 () Bool)

(assert (=> mapNonEmpty!21268 m!451721))

(declare-fun m!451723 () Bool)

(assert (=> b!469473 m!451723))

(declare-fun m!451725 () Bool)

(assert (=> b!469473 m!451725))

(declare-fun m!451727 () Bool)

(assert (=> b!469473 m!451727))

(declare-fun m!451729 () Bool)

(assert (=> b!469470 m!451729))

(declare-fun m!451731 () Bool)

(assert (=> b!469470 m!451731))

(assert (=> b!469470 m!451731))

(declare-fun m!451733 () Bool)

(assert (=> b!469470 m!451733))

(declare-fun m!451735 () Bool)

(assert (=> b!469470 m!451735))

(declare-fun m!451737 () Bool)

(assert (=> b!469470 m!451737))

(declare-fun m!451739 () Bool)

(assert (=> b!469470 m!451739))

(declare-fun m!451741 () Bool)

(assert (=> b!469469 m!451741))

(declare-fun m!451743 () Bool)

(assert (=> b!469472 m!451743))

(declare-fun m!451745 () Bool)

(assert (=> start!42074 m!451745))

(declare-fun m!451747 () Bool)

(assert (=> start!42074 m!451747))

(declare-fun m!451749 () Bool)

(assert (=> start!42074 m!451749))

(check-sat (not b!469470) (not b_next!11619) (not start!42074) (not b!469472) tp_is_empty!13047 b_and!20047 (not b!469469) (not mapNonEmpty!21268) (not b!469473))
(check-sat b_and!20047 (not b_next!11619))
