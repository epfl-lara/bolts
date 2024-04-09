; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20126 () Bool)

(assert start!20126)

(declare-fun b_free!4773 () Bool)

(declare-fun b_next!4773 () Bool)

(assert (=> start!20126 (= b_free!4773 (not b_next!4773))))

(declare-fun tp!17350 () Bool)

(declare-fun b_and!11537 () Bool)

(assert (=> start!20126 (= tp!17350 b_and!11537)))

(declare-fun mapIsEmpty!8012 () Bool)

(declare-fun mapRes!8012 () Bool)

(assert (=> mapIsEmpty!8012 mapRes!8012))

(declare-fun b!197100 () Bool)

(declare-fun res!93177 () Bool)

(declare-fun e!129757 () Bool)

(assert (=> b!197100 (=> (not res!93177) (not e!129757))))

(declare-datatypes ((array!8510 0))(
  ( (array!8511 (arr!4005 (Array (_ BitVec 32) (_ BitVec 64))) (size!4330 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8510)

(declare-datatypes ((List!2520 0))(
  ( (Nil!2517) (Cons!2516 (h!3158 (_ BitVec 64)) (t!7459 List!2520)) )
))
(declare-fun arrayNoDuplicates!0 (array!8510 (_ BitVec 32) List!2520) Bool)

(assert (=> b!197100 (= res!93177 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2517))))

(declare-fun res!93180 () Bool)

(assert (=> start!20126 (=> (not res!93180) (not e!129757))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20126 (= res!93180 (validMask!0 mask!1149))))

(assert (=> start!20126 e!129757))

(declare-datatypes ((V!5819 0))(
  ( (V!5820 (val!2359 Int)) )
))
(declare-datatypes ((ValueCell!1971 0))(
  ( (ValueCellFull!1971 (v!4325 V!5819)) (EmptyCell!1971) )
))
(declare-datatypes ((array!8512 0))(
  ( (array!8513 (arr!4006 (Array (_ BitVec 32) ValueCell!1971)) (size!4331 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8512)

(declare-fun e!129758 () Bool)

(declare-fun array_inv!2605 (array!8512) Bool)

(assert (=> start!20126 (and (array_inv!2605 _values!649) e!129758)))

(assert (=> start!20126 true))

(declare-fun tp_is_empty!4629 () Bool)

(assert (=> start!20126 tp_is_empty!4629))

(declare-fun array_inv!2606 (array!8510) Bool)

(assert (=> start!20126 (array_inv!2606 _keys!825)))

(assert (=> start!20126 tp!17350))

(declare-fun b!197101 () Bool)

(declare-fun e!129756 () Bool)

(assert (=> b!197101 (= e!129756 tp_is_empty!4629)))

(declare-fun b!197102 () Bool)

(assert (=> b!197102 (= e!129758 (and e!129756 mapRes!8012))))

(declare-fun condMapEmpty!8012 () Bool)

(declare-fun mapDefault!8012 () ValueCell!1971)

(assert (=> b!197102 (= condMapEmpty!8012 (= (arr!4006 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1971)) mapDefault!8012)))))

(declare-fun b!197103 () Bool)

(declare-fun e!129760 () Bool)

(assert (=> b!197103 (= e!129760 tp_is_empty!4629)))

(declare-fun b!197104 () Bool)

(declare-fun res!93176 () Bool)

(assert (=> b!197104 (=> (not res!93176) (not e!129757))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197104 (= res!93176 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4330 _keys!825))))))

(declare-fun b!197105 () Bool)

(declare-fun res!93181 () Bool)

(assert (=> b!197105 (=> (not res!93181) (not e!129757))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8510 (_ BitVec 32)) Bool)

(assert (=> b!197105 (= res!93181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!197106 () Bool)

(assert (=> b!197106 (= e!129757 false)))

(declare-datatypes ((tuple2!3584 0))(
  ( (tuple2!3585 (_1!1802 (_ BitVec 64)) (_2!1802 V!5819)) )
))
(declare-datatypes ((List!2521 0))(
  ( (Nil!2518) (Cons!2517 (h!3159 tuple2!3584) (t!7460 List!2521)) )
))
(declare-datatypes ((ListLongMap!2511 0))(
  ( (ListLongMap!2512 (toList!1271 List!2521)) )
))
(declare-fun lt!97711 () ListLongMap!2511)

(declare-fun zeroValue!615 () V!5819)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5819)

(declare-fun getCurrentListMapNoExtraKeys!228 (array!8510 array!8512 (_ BitVec 32) (_ BitVec 32) V!5819 V!5819 (_ BitVec 32) Int) ListLongMap!2511)

(assert (=> b!197106 (= lt!97711 (getCurrentListMapNoExtraKeys!228 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!197107 () Bool)

(declare-fun res!93179 () Bool)

(assert (=> b!197107 (=> (not res!93179) (not e!129757))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197107 (= res!93179 (validKeyInArray!0 k0!843))))

(declare-fun mapNonEmpty!8012 () Bool)

(declare-fun tp!17351 () Bool)

(assert (=> mapNonEmpty!8012 (= mapRes!8012 (and tp!17351 e!129760))))

(declare-fun mapKey!8012 () (_ BitVec 32))

(declare-fun mapValue!8012 () ValueCell!1971)

(declare-fun mapRest!8012 () (Array (_ BitVec 32) ValueCell!1971))

(assert (=> mapNonEmpty!8012 (= (arr!4006 _values!649) (store mapRest!8012 mapKey!8012 mapValue!8012))))

(declare-fun b!197108 () Bool)

(declare-fun res!93175 () Bool)

(assert (=> b!197108 (=> (not res!93175) (not e!129757))))

(assert (=> b!197108 (= res!93175 (= (select (arr!4005 _keys!825) i!601) k0!843))))

(declare-fun b!197109 () Bool)

(declare-fun res!93178 () Bool)

(assert (=> b!197109 (=> (not res!93178) (not e!129757))))

(assert (=> b!197109 (= res!93178 (and (= (size!4331 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4330 _keys!825) (size!4331 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(assert (= (and start!20126 res!93180) b!197109))

(assert (= (and b!197109 res!93178) b!197105))

(assert (= (and b!197105 res!93181) b!197100))

(assert (= (and b!197100 res!93177) b!197104))

(assert (= (and b!197104 res!93176) b!197107))

(assert (= (and b!197107 res!93179) b!197108))

(assert (= (and b!197108 res!93175) b!197106))

(assert (= (and b!197102 condMapEmpty!8012) mapIsEmpty!8012))

(assert (= (and b!197102 (not condMapEmpty!8012)) mapNonEmpty!8012))

(get-info :version)

(assert (= (and mapNonEmpty!8012 ((_ is ValueCellFull!1971) mapValue!8012)) b!197103))

(assert (= (and b!197102 ((_ is ValueCellFull!1971) mapDefault!8012)) b!197101))

(assert (= start!20126 b!197102))

(declare-fun m!224121 () Bool)

(assert (=> b!197108 m!224121))

(declare-fun m!224123 () Bool)

(assert (=> b!197106 m!224123))

(declare-fun m!224125 () Bool)

(assert (=> b!197100 m!224125))

(declare-fun m!224127 () Bool)

(assert (=> start!20126 m!224127))

(declare-fun m!224129 () Bool)

(assert (=> start!20126 m!224129))

(declare-fun m!224131 () Bool)

(assert (=> start!20126 m!224131))

(declare-fun m!224133 () Bool)

(assert (=> mapNonEmpty!8012 m!224133))

(declare-fun m!224135 () Bool)

(assert (=> b!197107 m!224135))

(declare-fun m!224137 () Bool)

(assert (=> b!197105 m!224137))

(check-sat b_and!11537 tp_is_empty!4629 (not b!197106) (not start!20126) (not b!197107) (not mapNonEmpty!8012) (not b!197100) (not b_next!4773) (not b!197105))
(check-sat b_and!11537 (not b_next!4773))
