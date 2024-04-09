; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3772 () Bool)

(assert start!3772)

(declare-fun b!26389 () Bool)

(declare-fun res!15658 () Bool)

(declare-fun e!17175 () Bool)

(assert (=> b!26389 (=> (not res!15658) (not e!17175))))

(declare-datatypes ((V!1285 0))(
  ( (V!1286 (val!574 Int)) )
))
(declare-datatypes ((ValueCell!348 0))(
  ( (ValueCellFull!348 (v!1660 V!1285)) (EmptyCell!348) )
))
(declare-datatypes ((array!1421 0))(
  ( (array!1422 (arr!668 (Array (_ BitVec 32) ValueCell!348)) (size!769 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1421)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1423 0))(
  ( (array!1424 (arr!669 (Array (_ BitVec 32) (_ BitVec 64))) (size!770 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1423)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!26389 (= res!15658 (and (= (size!769 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!770 _keys!1833) (size!769 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!26390 () Bool)

(declare-fun res!15657 () Bool)

(assert (=> b!26390 (=> (not res!15657) (not e!17175))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1423 (_ BitVec 32)) Bool)

(assert (=> b!26390 (= res!15657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!26391 () Bool)

(declare-fun e!17172 () Bool)

(declare-fun e!17176 () Bool)

(declare-fun mapRes!1159 () Bool)

(assert (=> b!26391 (= e!17172 (and e!17176 mapRes!1159))))

(declare-fun condMapEmpty!1159 () Bool)

(declare-fun mapDefault!1159 () ValueCell!348)

(assert (=> b!26391 (= condMapEmpty!1159 (= (arr!668 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!348)) mapDefault!1159)))))

(declare-fun b!26392 () Bool)

(declare-fun tp_is_empty!1095 () Bool)

(assert (=> b!26392 (= e!17176 tp_is_empty!1095)))

(declare-fun res!15656 () Bool)

(assert (=> start!3772 (=> (not res!15656) (not e!17175))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3772 (= res!15656 (validMask!0 mask!2294))))

(assert (=> start!3772 e!17175))

(assert (=> start!3772 true))

(declare-fun array_inv!461 (array!1421) Bool)

(assert (=> start!3772 (and (array_inv!461 _values!1501) e!17172)))

(declare-fun array_inv!462 (array!1423) Bool)

(assert (=> start!3772 (array_inv!462 _keys!1833)))

(declare-fun b!26393 () Bool)

(assert (=> b!26393 (= e!17175 false)))

(declare-fun lt!10362 () Bool)

(declare-datatypes ((List!584 0))(
  ( (Nil!581) (Cons!580 (h!1147 (_ BitVec 64)) (t!3273 List!584)) )
))
(declare-fun arrayNoDuplicates!0 (array!1423 (_ BitVec 32) List!584) Bool)

(assert (=> b!26393 (= lt!10362 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!581))))

(declare-fun mapNonEmpty!1159 () Bool)

(declare-fun tp!3679 () Bool)

(declare-fun e!17174 () Bool)

(assert (=> mapNonEmpty!1159 (= mapRes!1159 (and tp!3679 e!17174))))

(declare-fun mapRest!1159 () (Array (_ BitVec 32) ValueCell!348))

(declare-fun mapValue!1159 () ValueCell!348)

(declare-fun mapKey!1159 () (_ BitVec 32))

(assert (=> mapNonEmpty!1159 (= (arr!668 _values!1501) (store mapRest!1159 mapKey!1159 mapValue!1159))))

(declare-fun mapIsEmpty!1159 () Bool)

(assert (=> mapIsEmpty!1159 mapRes!1159))

(declare-fun b!26394 () Bool)

(assert (=> b!26394 (= e!17174 tp_is_empty!1095)))

(assert (= (and start!3772 res!15656) b!26389))

(assert (= (and b!26389 res!15658) b!26390))

(assert (= (and b!26390 res!15657) b!26393))

(assert (= (and b!26391 condMapEmpty!1159) mapIsEmpty!1159))

(assert (= (and b!26391 (not condMapEmpty!1159)) mapNonEmpty!1159))

(get-info :version)

(assert (= (and mapNonEmpty!1159 ((_ is ValueCellFull!348) mapValue!1159)) b!26394))

(assert (= (and b!26391 ((_ is ValueCellFull!348) mapDefault!1159)) b!26392))

(assert (= start!3772 b!26391))

(declare-fun m!21193 () Bool)

(assert (=> b!26390 m!21193))

(declare-fun m!21195 () Bool)

(assert (=> start!3772 m!21195))

(declare-fun m!21197 () Bool)

(assert (=> start!3772 m!21197))

(declare-fun m!21199 () Bool)

(assert (=> start!3772 m!21199))

(declare-fun m!21201 () Bool)

(assert (=> b!26393 m!21201))

(declare-fun m!21203 () Bool)

(assert (=> mapNonEmpty!1159 m!21203))

(check-sat (not mapNonEmpty!1159) (not b!26390) (not b!26393) (not start!3772) tp_is_empty!1095)
(check-sat)
