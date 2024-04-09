; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3754 () Bool)

(assert start!3754)

(declare-fun mapIsEmpty!1132 () Bool)

(declare-fun mapRes!1132 () Bool)

(assert (=> mapIsEmpty!1132 mapRes!1132))

(declare-fun b!26227 () Bool)

(declare-fun e!17041 () Bool)

(declare-fun tp_is_empty!1077 () Bool)

(assert (=> b!26227 (= e!17041 tp_is_empty!1077)))

(declare-fun res!15575 () Bool)

(declare-fun e!17038 () Bool)

(assert (=> start!3754 (=> (not res!15575) (not e!17038))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3754 (= res!15575 (validMask!0 mask!2294))))

(assert (=> start!3754 e!17038))

(assert (=> start!3754 true))

(declare-datatypes ((V!1261 0))(
  ( (V!1262 (val!565 Int)) )
))
(declare-datatypes ((ValueCell!339 0))(
  ( (ValueCellFull!339 (v!1651 V!1261)) (EmptyCell!339) )
))
(declare-datatypes ((array!1387 0))(
  ( (array!1388 (arr!651 (Array (_ BitVec 32) ValueCell!339)) (size!752 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1387)

(declare-fun e!17037 () Bool)

(declare-fun array_inv!451 (array!1387) Bool)

(assert (=> start!3754 (and (array_inv!451 _values!1501) e!17037)))

(declare-datatypes ((array!1389 0))(
  ( (array!1390 (arr!652 (Array (_ BitVec 32) (_ BitVec 64))) (size!753 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1389)

(declare-fun array_inv!452 (array!1389) Bool)

(assert (=> start!3754 (array_inv!452 _keys!1833)))

(declare-fun b!26228 () Bool)

(declare-fun res!15576 () Bool)

(assert (=> b!26228 (=> (not res!15576) (not e!17038))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!26228 (= res!15576 (and (= (size!752 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!753 _keys!1833) (size!752 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!26229 () Bool)

(assert (=> b!26229 (= e!17038 false)))

(declare-fun lt!10335 () Bool)

(declare-datatypes ((List!578 0))(
  ( (Nil!575) (Cons!574 (h!1141 (_ BitVec 64)) (t!3267 List!578)) )
))
(declare-fun arrayNoDuplicates!0 (array!1389 (_ BitVec 32) List!578) Bool)

(assert (=> b!26229 (= lt!10335 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!575))))

(declare-fun b!26230 () Bool)

(declare-fun e!17039 () Bool)

(assert (=> b!26230 (= e!17037 (and e!17039 mapRes!1132))))

(declare-fun condMapEmpty!1132 () Bool)

(declare-fun mapDefault!1132 () ValueCell!339)

(assert (=> b!26230 (= condMapEmpty!1132 (= (arr!651 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!339)) mapDefault!1132)))))

(declare-fun b!26231 () Bool)

(assert (=> b!26231 (= e!17039 tp_is_empty!1077)))

(declare-fun b!26232 () Bool)

(declare-fun res!15577 () Bool)

(assert (=> b!26232 (=> (not res!15577) (not e!17038))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1389 (_ BitVec 32)) Bool)

(assert (=> b!26232 (= res!15577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!1132 () Bool)

(declare-fun tp!3652 () Bool)

(assert (=> mapNonEmpty!1132 (= mapRes!1132 (and tp!3652 e!17041))))

(declare-fun mapKey!1132 () (_ BitVec 32))

(declare-fun mapValue!1132 () ValueCell!339)

(declare-fun mapRest!1132 () (Array (_ BitVec 32) ValueCell!339))

(assert (=> mapNonEmpty!1132 (= (arr!651 _values!1501) (store mapRest!1132 mapKey!1132 mapValue!1132))))

(assert (= (and start!3754 res!15575) b!26228))

(assert (= (and b!26228 res!15576) b!26232))

(assert (= (and b!26232 res!15577) b!26229))

(assert (= (and b!26230 condMapEmpty!1132) mapIsEmpty!1132))

(assert (= (and b!26230 (not condMapEmpty!1132)) mapNonEmpty!1132))

(get-info :version)

(assert (= (and mapNonEmpty!1132 ((_ is ValueCellFull!339) mapValue!1132)) b!26227))

(assert (= (and b!26230 ((_ is ValueCellFull!339) mapDefault!1132)) b!26231))

(assert (= start!3754 b!26230))

(declare-fun m!21085 () Bool)

(assert (=> start!3754 m!21085))

(declare-fun m!21087 () Bool)

(assert (=> start!3754 m!21087))

(declare-fun m!21089 () Bool)

(assert (=> start!3754 m!21089))

(declare-fun m!21091 () Bool)

(assert (=> b!26229 m!21091))

(declare-fun m!21093 () Bool)

(assert (=> b!26232 m!21093))

(declare-fun m!21095 () Bool)

(assert (=> mapNonEmpty!1132 m!21095))

(check-sat (not b!26229) (not start!3754) tp_is_empty!1077 (not b!26232) (not mapNonEmpty!1132))
(check-sat)
