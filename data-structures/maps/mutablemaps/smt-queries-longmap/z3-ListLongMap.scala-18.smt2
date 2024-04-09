; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532 () Bool)

(assert start!532)

(declare-fun b!3123 () Bool)

(declare-fun e!1388 () Bool)

(declare-fun tp_is_empty!93 () Bool)

(assert (=> b!3123 (= e!1388 tp_is_empty!93)))

(declare-fun b!3124 () Bool)

(declare-fun e!1384 () Bool)

(assert (=> b!3124 (= e!1384 tp_is_empty!93)))

(declare-fun b!3125 () Bool)

(declare-fun res!5022 () Bool)

(declare-fun e!1387 () Bool)

(assert (=> b!3125 (=> (not res!5022) (not e!1387))))

(declare-datatypes ((array!121 0))(
  ( (array!122 (arr!54 (Array (_ BitVec 32) (_ BitVec 64))) (size!116 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!121)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!121 (_ BitVec 32)) Bool)

(assert (=> b!3125 (= res!5022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!3126 () Bool)

(assert (=> b!3126 (= e!1387 false)))

(declare-fun lt!423 () Bool)

(declare-datatypes ((List!42 0))(
  ( (Nil!39) (Cons!38 (h!604 (_ BitVec 64)) (t!2169 List!42)) )
))
(declare-fun arrayNoDuplicates!0 (array!121 (_ BitVec 32) List!42) Bool)

(assert (=> b!3126 (= lt!423 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!39))))

(declare-fun mapIsEmpty!95 () Bool)

(declare-fun mapRes!95 () Bool)

(assert (=> mapIsEmpty!95 mapRes!95))

(declare-fun res!5021 () Bool)

(assert (=> start!532 (=> (not res!5021) (not e!1387))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!532 (= res!5021 (validMask!0 mask!2250))))

(assert (=> start!532 e!1387))

(assert (=> start!532 true))

(declare-datatypes ((V!301 0))(
  ( (V!302 (val!52 Int)) )
))
(declare-datatypes ((ValueCell!30 0))(
  ( (ValueCellFull!30 (v!1139 V!301)) (EmptyCell!30) )
))
(declare-datatypes ((array!123 0))(
  ( (array!124 (arr!55 (Array (_ BitVec 32) ValueCell!30)) (size!117 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!123)

(declare-fun e!1386 () Bool)

(declare-fun array_inv!35 (array!123) Bool)

(assert (=> start!532 (and (array_inv!35 _values!1492) e!1386)))

(declare-fun array_inv!36 (array!121) Bool)

(assert (=> start!532 (array_inv!36 _keys!1806)))

(declare-fun b!3127 () Bool)

(declare-fun res!5023 () Bool)

(assert (=> b!3127 (=> (not res!5023) (not e!1387))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3127 (= res!5023 (and (= (size!117 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!116 _keys!1806) (size!117 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!95 () Bool)

(declare-fun tp!335 () Bool)

(assert (=> mapNonEmpty!95 (= mapRes!95 (and tp!335 e!1384))))

(declare-fun mapValue!95 () ValueCell!30)

(declare-fun mapKey!95 () (_ BitVec 32))

(declare-fun mapRest!95 () (Array (_ BitVec 32) ValueCell!30))

(assert (=> mapNonEmpty!95 (= (arr!55 _values!1492) (store mapRest!95 mapKey!95 mapValue!95))))

(declare-fun b!3128 () Bool)

(assert (=> b!3128 (= e!1386 (and e!1388 mapRes!95))))

(declare-fun condMapEmpty!95 () Bool)

(declare-fun mapDefault!95 () ValueCell!30)

(assert (=> b!3128 (= condMapEmpty!95 (= (arr!55 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!30)) mapDefault!95)))))

(assert (= (and start!532 res!5021) b!3127))

(assert (= (and b!3127 res!5023) b!3125))

(assert (= (and b!3125 res!5022) b!3126))

(assert (= (and b!3128 condMapEmpty!95) mapIsEmpty!95))

(assert (= (and b!3128 (not condMapEmpty!95)) mapNonEmpty!95))

(get-info :version)

(assert (= (and mapNonEmpty!95 ((_ is ValueCellFull!30) mapValue!95)) b!3124))

(assert (= (and b!3128 ((_ is ValueCellFull!30) mapDefault!95)) b!3123))

(assert (= start!532 b!3128))

(declare-fun m!1445 () Bool)

(assert (=> b!3125 m!1445))

(declare-fun m!1447 () Bool)

(assert (=> b!3126 m!1447))

(declare-fun m!1449 () Bool)

(assert (=> start!532 m!1449))

(declare-fun m!1451 () Bool)

(assert (=> start!532 m!1451))

(declare-fun m!1453 () Bool)

(assert (=> start!532 m!1453))

(declare-fun m!1455 () Bool)

(assert (=> mapNonEmpty!95 m!1455))

(check-sat (not b!3126) (not mapNonEmpty!95) (not start!532) (not b!3125) tp_is_empty!93)
(check-sat)
