; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42278 () Bool)

(assert start!42278)

(declare-fun b_free!11775 () Bool)

(declare-fun b_next!11775 () Bool)

(assert (=> start!42278 (= b_free!11775 (not b_next!11775))))

(declare-fun tp!41352 () Bool)

(declare-fun b_and!20231 () Bool)

(assert (=> start!42278 (= tp!41352 b_and!20231)))

(declare-fun b!471493 () Bool)

(declare-fun res!281733 () Bool)

(declare-fun e!276372 () Bool)

(assert (=> b!471493 (=> (not res!281733) (not e!276372))))

(declare-datatypes ((array!30133 0))(
  ( (array!30134 (arr!14485 (Array (_ BitVec 32) (_ BitVec 64))) (size!14837 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30133)

(declare-datatypes ((List!8848 0))(
  ( (Nil!8845) (Cons!8844 (h!9700 (_ BitVec 64)) (t!14822 List!8848)) )
))
(declare-fun arrayNoDuplicates!0 (array!30133 (_ BitVec 32) List!8848) Bool)

(assert (=> b!471493 (= res!281733 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8845))))

(declare-fun mapNonEmpty!21511 () Bool)

(declare-fun mapRes!21511 () Bool)

(declare-fun tp!41353 () Bool)

(declare-fun e!276370 () Bool)

(assert (=> mapNonEmpty!21511 (= mapRes!21511 (and tp!41353 e!276370))))

(declare-datatypes ((V!18709 0))(
  ( (V!18710 (val!6646 Int)) )
))
(declare-datatypes ((ValueCell!6258 0))(
  ( (ValueCellFull!6258 (v!8933 V!18709)) (EmptyCell!6258) )
))
(declare-fun mapRest!21511 () (Array (_ BitVec 32) ValueCell!6258))

(declare-fun mapValue!21511 () ValueCell!6258)

(declare-datatypes ((array!30135 0))(
  ( (array!30136 (arr!14486 (Array (_ BitVec 32) ValueCell!6258)) (size!14838 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30135)

(declare-fun mapKey!21511 () (_ BitVec 32))

(assert (=> mapNonEmpty!21511 (= (arr!14486 _values!833) (store mapRest!21511 mapKey!21511 mapValue!21511))))

(declare-fun b!471494 () Bool)

(declare-fun e!276371 () Bool)

(declare-fun tp_is_empty!13203 () Bool)

(assert (=> b!471494 (= e!276371 tp_is_empty!13203)))

(declare-fun res!281732 () Bool)

(assert (=> start!42278 (=> (not res!281732) (not e!276372))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42278 (= res!281732 (validMask!0 mask!1365))))

(assert (=> start!42278 e!276372))

(assert (=> start!42278 tp_is_empty!13203))

(assert (=> start!42278 tp!41352))

(assert (=> start!42278 true))

(declare-fun array_inv!10452 (array!30133) Bool)

(assert (=> start!42278 (array_inv!10452 _keys!1025)))

(declare-fun e!276369 () Bool)

(declare-fun array_inv!10453 (array!30135) Bool)

(assert (=> start!42278 (and (array_inv!10453 _values!833) e!276369)))

(declare-fun b!471495 () Bool)

(declare-fun res!281735 () Bool)

(assert (=> b!471495 (=> (not res!281735) (not e!276372))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30133 (_ BitVec 32)) Bool)

(assert (=> b!471495 (= res!281735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471496 () Bool)

(declare-fun res!281734 () Bool)

(assert (=> b!471496 (=> (not res!281734) (not e!276372))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!471496 (= res!281734 (and (= (size!14838 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14837 _keys!1025) (size!14838 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!21511 () Bool)

(assert (=> mapIsEmpty!21511 mapRes!21511))

(declare-fun b!471497 () Bool)

(assert (=> b!471497 (= e!276369 (and e!276371 mapRes!21511))))

(declare-fun condMapEmpty!21511 () Bool)

(declare-fun mapDefault!21511 () ValueCell!6258)

(assert (=> b!471497 (= condMapEmpty!21511 (= (arr!14486 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6258)) mapDefault!21511)))))

(declare-fun b!471498 () Bool)

(assert (=> b!471498 (= e!276372 (not true))))

(declare-datatypes ((tuple2!8730 0))(
  ( (tuple2!8731 (_1!4375 (_ BitVec 64)) (_2!4375 V!18709)) )
))
(declare-datatypes ((List!8849 0))(
  ( (Nil!8846) (Cons!8845 (h!9701 tuple2!8730) (t!14823 List!8849)) )
))
(declare-datatypes ((ListLongMap!7657 0))(
  ( (ListLongMap!7658 (toList!3844 List!8849)) )
))
(declare-fun lt!213959 () ListLongMap!7657)

(declare-fun lt!213958 () ListLongMap!7657)

(assert (=> b!471498 (= lt!213959 lt!213958)))

(declare-fun zeroValue!794 () V!18709)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13814 0))(
  ( (Unit!13815) )
))
(declare-fun lt!213960 () Unit!13814)

(declare-fun minValueBefore!38 () V!18709)

(declare-fun minValueAfter!38 () V!18709)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!201 (array!30133 array!30135 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18709 V!18709 V!18709 V!18709 (_ BitVec 32) Int) Unit!13814)

(assert (=> b!471498 (= lt!213960 (lemmaNoChangeToArrayThenSameMapNoExtras!201 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2006 (array!30133 array!30135 (_ BitVec 32) (_ BitVec 32) V!18709 V!18709 (_ BitVec 32) Int) ListLongMap!7657)

(assert (=> b!471498 (= lt!213958 (getCurrentListMapNoExtraKeys!2006 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471498 (= lt!213959 (getCurrentListMapNoExtraKeys!2006 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471499 () Bool)

(assert (=> b!471499 (= e!276370 tp_is_empty!13203)))

(assert (= (and start!42278 res!281732) b!471496))

(assert (= (and b!471496 res!281734) b!471495))

(assert (= (and b!471495 res!281735) b!471493))

(assert (= (and b!471493 res!281733) b!471498))

(assert (= (and b!471497 condMapEmpty!21511) mapIsEmpty!21511))

(assert (= (and b!471497 (not condMapEmpty!21511)) mapNonEmpty!21511))

(get-info :version)

(assert (= (and mapNonEmpty!21511 ((_ is ValueCellFull!6258) mapValue!21511)) b!471499))

(assert (= (and b!471497 ((_ is ValueCellFull!6258) mapDefault!21511)) b!471494))

(assert (= start!42278 b!471497))

(declare-fun m!453625 () Bool)

(assert (=> b!471498 m!453625))

(declare-fun m!453627 () Bool)

(assert (=> b!471498 m!453627))

(declare-fun m!453629 () Bool)

(assert (=> b!471498 m!453629))

(declare-fun m!453631 () Bool)

(assert (=> mapNonEmpty!21511 m!453631))

(declare-fun m!453633 () Bool)

(assert (=> b!471493 m!453633))

(declare-fun m!453635 () Bool)

(assert (=> b!471495 m!453635))

(declare-fun m!453637 () Bool)

(assert (=> start!42278 m!453637))

(declare-fun m!453639 () Bool)

(assert (=> start!42278 m!453639))

(declare-fun m!453641 () Bool)

(assert (=> start!42278 m!453641))

(check-sat tp_is_empty!13203 (not b!471493) (not b!471495) (not mapNonEmpty!21511) (not b_next!11775) (not b!471498) (not start!42278) b_and!20231)
(check-sat b_and!20231 (not b_next!11775))
