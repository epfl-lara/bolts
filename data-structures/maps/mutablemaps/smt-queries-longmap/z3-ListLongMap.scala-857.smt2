; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20252 () Bool)

(assert start!20252)

(declare-fun b_free!4899 () Bool)

(declare-fun b_next!4899 () Bool)

(assert (=> start!20252 (= b_free!4899 (not b_next!4899))))

(declare-fun tp!17728 () Bool)

(declare-fun b_and!11663 () Bool)

(assert (=> start!20252 (= tp!17728 b_and!11663)))

(declare-fun b!198990 () Bool)

(declare-fun res!94498 () Bool)

(declare-fun e!130704 () Bool)

(assert (=> b!198990 (=> (not res!94498) (not e!130704))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198990 (= res!94498 (validKeyInArray!0 k0!843))))

(declare-fun b!198991 () Bool)

(declare-fun res!94500 () Bool)

(assert (=> b!198991 (=> (not res!94500) (not e!130704))))

(declare-datatypes ((array!8750 0))(
  ( (array!8751 (arr!4125 (Array (_ BitVec 32) (_ BitVec 64))) (size!4450 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8750)

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!198991 (= res!94500 (= (select (arr!4125 _keys!825) i!601) k0!843))))

(declare-fun b!198992 () Bool)

(declare-fun res!94504 () Bool)

(assert (=> b!198992 (=> (not res!94504) (not e!130704))))

(declare-datatypes ((List!2604 0))(
  ( (Nil!2601) (Cons!2600 (h!3242 (_ BitVec 64)) (t!7543 List!2604)) )
))
(declare-fun arrayNoDuplicates!0 (array!8750 (_ BitVec 32) List!2604) Bool)

(assert (=> b!198992 (= res!94504 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2601))))

(declare-fun b!198993 () Bool)

(assert (=> b!198993 (= e!130704 (not true))))

(declare-datatypes ((V!5987 0))(
  ( (V!5988 (val!2422 Int)) )
))
(declare-datatypes ((tuple2!3664 0))(
  ( (tuple2!3665 (_1!1842 (_ BitVec 64)) (_2!1842 V!5987)) )
))
(declare-datatypes ((List!2605 0))(
  ( (Nil!2602) (Cons!2601 (h!3243 tuple2!3664) (t!7544 List!2605)) )
))
(declare-datatypes ((ListLongMap!2591 0))(
  ( (ListLongMap!2592 (toList!1311 List!2605)) )
))
(declare-fun lt!98161 () ListLongMap!2591)

(declare-fun lt!98159 () ListLongMap!2591)

(assert (=> b!198993 (and (= lt!98161 lt!98159) (= lt!98159 lt!98161))))

(declare-fun lt!98160 () ListLongMap!2591)

(declare-fun v!520 () V!5987)

(declare-fun +!328 (ListLongMap!2591 tuple2!3664) ListLongMap!2591)

(assert (=> b!198993 (= lt!98159 (+!328 lt!98160 (tuple2!3665 k0!843 v!520)))))

(declare-datatypes ((Unit!5965 0))(
  ( (Unit!5966) )
))
(declare-fun lt!98158 () Unit!5965)

(declare-datatypes ((ValueCell!2034 0))(
  ( (ValueCellFull!2034 (v!4388 V!5987)) (EmptyCell!2034) )
))
(declare-datatypes ((array!8752 0))(
  ( (array!8753 (arr!4126 (Array (_ BitVec 32) ValueCell!2034)) (size!4451 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8752)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!5987)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5987)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!10 (array!8750 array!8752 (_ BitVec 32) (_ BitVec 32) V!5987 V!5987 (_ BitVec 32) (_ BitVec 64) V!5987 (_ BitVec 32) Int) Unit!5965)

(assert (=> b!198993 (= lt!98158 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!10 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!268 (array!8750 array!8752 (_ BitVec 32) (_ BitVec 32) V!5987 V!5987 (_ BitVec 32) Int) ListLongMap!2591)

(assert (=> b!198993 (= lt!98161 (getCurrentListMapNoExtraKeys!268 _keys!825 (array!8753 (store (arr!4126 _values!649) i!601 (ValueCellFull!2034 v!520)) (size!4451 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!198993 (= lt!98160 (getCurrentListMapNoExtraKeys!268 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!198994 () Bool)

(declare-fun e!130702 () Bool)

(declare-fun tp_is_empty!4755 () Bool)

(assert (=> b!198994 (= e!130702 tp_is_empty!4755)))

(declare-fun b!198995 () Bool)

(declare-fun res!94502 () Bool)

(assert (=> b!198995 (=> (not res!94502) (not e!130704))))

(assert (=> b!198995 (= res!94502 (and (= (size!4451 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4450 _keys!825) (size!4451 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!198996 () Bool)

(declare-fun res!94501 () Bool)

(assert (=> b!198996 (=> (not res!94501) (not e!130704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8750 (_ BitVec 32)) Bool)

(assert (=> b!198996 (= res!94501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun res!94499 () Bool)

(assert (=> start!20252 (=> (not res!94499) (not e!130704))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20252 (= res!94499 (validMask!0 mask!1149))))

(assert (=> start!20252 e!130704))

(declare-fun e!130703 () Bool)

(declare-fun array_inv!2693 (array!8752) Bool)

(assert (=> start!20252 (and (array_inv!2693 _values!649) e!130703)))

(assert (=> start!20252 true))

(assert (=> start!20252 tp_is_empty!4755))

(declare-fun array_inv!2694 (array!8750) Bool)

(assert (=> start!20252 (array_inv!2694 _keys!825)))

(assert (=> start!20252 tp!17728))

(declare-fun b!198997 () Bool)

(declare-fun e!130701 () Bool)

(assert (=> b!198997 (= e!130701 tp_is_empty!4755)))

(declare-fun b!198998 () Bool)

(declare-fun mapRes!8201 () Bool)

(assert (=> b!198998 (= e!130703 (and e!130702 mapRes!8201))))

(declare-fun condMapEmpty!8201 () Bool)

(declare-fun mapDefault!8201 () ValueCell!2034)

(assert (=> b!198998 (= condMapEmpty!8201 (= (arr!4126 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2034)) mapDefault!8201)))))

(declare-fun mapNonEmpty!8201 () Bool)

(declare-fun tp!17729 () Bool)

(assert (=> mapNonEmpty!8201 (= mapRes!8201 (and tp!17729 e!130701))))

(declare-fun mapRest!8201 () (Array (_ BitVec 32) ValueCell!2034))

(declare-fun mapKey!8201 () (_ BitVec 32))

(declare-fun mapValue!8201 () ValueCell!2034)

(assert (=> mapNonEmpty!8201 (= (arr!4126 _values!649) (store mapRest!8201 mapKey!8201 mapValue!8201))))

(declare-fun mapIsEmpty!8201 () Bool)

(assert (=> mapIsEmpty!8201 mapRes!8201))

(declare-fun b!198999 () Bool)

(declare-fun res!94503 () Bool)

(assert (=> b!198999 (=> (not res!94503) (not e!130704))))

(assert (=> b!198999 (= res!94503 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4450 _keys!825))))))

(assert (= (and start!20252 res!94499) b!198995))

(assert (= (and b!198995 res!94502) b!198996))

(assert (= (and b!198996 res!94501) b!198992))

(assert (= (and b!198992 res!94504) b!198999))

(assert (= (and b!198999 res!94503) b!198990))

(assert (= (and b!198990 res!94498) b!198991))

(assert (= (and b!198991 res!94500) b!198993))

(assert (= (and b!198998 condMapEmpty!8201) mapIsEmpty!8201))

(assert (= (and b!198998 (not condMapEmpty!8201)) mapNonEmpty!8201))

(get-info :version)

(assert (= (and mapNonEmpty!8201 ((_ is ValueCellFull!2034) mapValue!8201)) b!198997))

(assert (= (and b!198998 ((_ is ValueCellFull!2034) mapDefault!8201)) b!198994))

(assert (= start!20252 b!198998))

(declare-fun m!225527 () Bool)

(assert (=> b!198992 m!225527))

(declare-fun m!225529 () Bool)

(assert (=> mapNonEmpty!8201 m!225529))

(declare-fun m!225531 () Bool)

(assert (=> b!198996 m!225531))

(declare-fun m!225533 () Bool)

(assert (=> b!198991 m!225533))

(declare-fun m!225535 () Bool)

(assert (=> b!198993 m!225535))

(declare-fun m!225537 () Bool)

(assert (=> b!198993 m!225537))

(declare-fun m!225539 () Bool)

(assert (=> b!198993 m!225539))

(declare-fun m!225541 () Bool)

(assert (=> b!198993 m!225541))

(declare-fun m!225543 () Bool)

(assert (=> b!198993 m!225543))

(declare-fun m!225545 () Bool)

(assert (=> start!20252 m!225545))

(declare-fun m!225547 () Bool)

(assert (=> start!20252 m!225547))

(declare-fun m!225549 () Bool)

(assert (=> start!20252 m!225549))

(declare-fun m!225551 () Bool)

(assert (=> b!198990 m!225551))

(check-sat (not b!198992) (not b!198993) (not b!198996) b_and!11663 (not mapNonEmpty!8201) (not b_next!4899) tp_is_empty!4755 (not start!20252) (not b!198990))
(check-sat b_and!11663 (not b_next!4899))
