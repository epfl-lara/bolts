; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77646 () Bool)

(assert start!77646)

(declare-fun b_free!16203 () Bool)

(declare-fun b_next!16203 () Bool)

(assert (=> start!77646 (= b_free!16203 (not b_next!16203))))

(declare-fun tp!56871 () Bool)

(declare-fun b_and!26587 () Bool)

(assert (=> start!77646 (= tp!56871 b_and!26587)))

(declare-fun b!904546 () Bool)

(declare-fun res!610457 () Bool)

(declare-fun e!506893 () Bool)

(assert (=> b!904546 (=> (not res!610457) (not e!506893))))

(declare-datatypes ((array!53272 0))(
  ( (array!53273 (arr!25591 (Array (_ BitVec 32) (_ BitVec 64))) (size!26051 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53272)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53272 (_ BitVec 32)) Bool)

(assert (=> b!904546 (= res!610457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!904547 () Bool)

(declare-fun e!506892 () Bool)

(declare-fun e!506891 () Bool)

(declare-fun mapRes!29644 () Bool)

(assert (=> b!904547 (= e!506892 (and e!506891 mapRes!29644))))

(declare-fun condMapEmpty!29644 () Bool)

(declare-datatypes ((V!29793 0))(
  ( (V!29794 (val!9361 Int)) )
))
(declare-datatypes ((ValueCell!8829 0))(
  ( (ValueCellFull!8829 (v!11866 V!29793)) (EmptyCell!8829) )
))
(declare-datatypes ((array!53274 0))(
  ( (array!53275 (arr!25592 (Array (_ BitVec 32) ValueCell!8829)) (size!26052 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53274)

(declare-fun mapDefault!29644 () ValueCell!8829)

(assert (=> b!904547 (= condMapEmpty!29644 (= (arr!25592 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8829)) mapDefault!29644)))))

(declare-fun b!904548 () Bool)

(declare-fun tp_is_empty!18621 () Bool)

(assert (=> b!904548 (= e!506891 tp_is_empty!18621)))

(declare-fun b!904549 () Bool)

(declare-fun e!506894 () Bool)

(assert (=> b!904549 (= e!506894 tp_is_empty!18621)))

(declare-fun b!904550 () Bool)

(declare-fun res!610456 () Bool)

(assert (=> b!904550 (=> (not res!610456) (not e!506893))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!904550 (= res!610456 (and (= (size!26052 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26051 _keys!1386) (size!26052 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!904551 () Bool)

(declare-fun res!610461 () Bool)

(assert (=> b!904551 (=> (not res!610461) (not e!506893))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun k0!1033 () (_ BitVec 64))

(assert (=> b!904551 (= res!610461 (and (= (select (arr!25591 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!904552 () Bool)

(declare-fun res!610462 () Bool)

(assert (=> b!904552 (=> (not res!610462) (not e!506893))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29793)

(declare-fun minValue!1094 () V!29793)

(declare-datatypes ((tuple2!12186 0))(
  ( (tuple2!12187 (_1!6103 (_ BitVec 64)) (_2!6103 V!29793)) )
))
(declare-datatypes ((List!18057 0))(
  ( (Nil!18054) (Cons!18053 (h!19199 tuple2!12186) (t!25448 List!18057)) )
))
(declare-datatypes ((ListLongMap!10897 0))(
  ( (ListLongMap!10898 (toList!5464 List!18057)) )
))
(declare-fun contains!4477 (ListLongMap!10897 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2701 (array!53272 array!53274 (_ BitVec 32) (_ BitVec 32) V!29793 V!29793 (_ BitVec 32) Int) ListLongMap!10897)

(assert (=> b!904552 (= res!610462 (contains!4477 (getCurrentListMap!2701 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun mapNonEmpty!29644 () Bool)

(declare-fun tp!56872 () Bool)

(assert (=> mapNonEmpty!29644 (= mapRes!29644 (and tp!56872 e!506894))))

(declare-fun mapKey!29644 () (_ BitVec 32))

(declare-fun mapValue!29644 () ValueCell!8829)

(declare-fun mapRest!29644 () (Array (_ BitVec 32) ValueCell!8829))

(assert (=> mapNonEmpty!29644 (= (arr!25592 _values!1152) (store mapRest!29644 mapKey!29644 mapValue!29644))))

(declare-fun mapIsEmpty!29644 () Bool)

(assert (=> mapIsEmpty!29644 mapRes!29644))

(declare-fun b!904553 () Bool)

(declare-fun e!506897 () Bool)

(assert (=> b!904553 (= e!506893 (not e!506897))))

(declare-fun res!610459 () Bool)

(assert (=> b!904553 (=> res!610459 e!506897)))

(assert (=> b!904553 (= res!610459 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26051 _keys!1386))))))

(declare-fun arrayContainsKey!0 (array!53272 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904553 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30655 0))(
  ( (Unit!30656) )
))
(declare-fun lt!408244 () Unit!30655)

(declare-fun lemmaKeyInListMapIsInArray!190 (array!53272 array!53274 (_ BitVec 32) (_ BitVec 32) V!29793 V!29793 (_ BitVec 64) Int) Unit!30655)

(assert (=> b!904553 (= lt!408244 (lemmaKeyInListMapIsInArray!190 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!904554 () Bool)

(declare-fun e!506896 () Bool)

(assert (=> b!904554 (= e!506897 e!506896)))

(declare-fun res!610463 () Bool)

(assert (=> b!904554 (=> res!610463 e!506896)))

(declare-fun lt!408245 () ListLongMap!10897)

(assert (=> b!904554 (= res!610463 (not (contains!4477 lt!408245 k0!1033)))))

(assert (=> b!904554 (= lt!408245 (getCurrentListMap!2701 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!904555 () Bool)

(assert (=> b!904555 (= e!506896 true)))

(declare-fun lt!408243 () V!29793)

(declare-fun apply!443 (ListLongMap!10897 (_ BitVec 64)) V!29793)

(assert (=> b!904555 (= lt!408243 (apply!443 lt!408245 k0!1033))))

(declare-fun b!904556 () Bool)

(declare-fun res!610458 () Bool)

(assert (=> b!904556 (=> (not res!610458) (not e!506893))))

(declare-datatypes ((List!18058 0))(
  ( (Nil!18055) (Cons!18054 (h!19200 (_ BitVec 64)) (t!25449 List!18058)) )
))
(declare-fun arrayNoDuplicates!0 (array!53272 (_ BitVec 32) List!18058) Bool)

(assert (=> b!904556 (= res!610458 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18055))))

(declare-fun b!904545 () Bool)

(declare-fun res!610460 () Bool)

(assert (=> b!904545 (=> (not res!610460) (not e!506893))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904545 (= res!610460 (inRange!0 i!717 mask!1756))))

(declare-fun res!610464 () Bool)

(assert (=> start!77646 (=> (not res!610464) (not e!506893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77646 (= res!610464 (validMask!0 mask!1756))))

(assert (=> start!77646 e!506893))

(declare-fun array_inv!20028 (array!53274) Bool)

(assert (=> start!77646 (and (array_inv!20028 _values!1152) e!506892)))

(assert (=> start!77646 tp!56871))

(assert (=> start!77646 true))

(assert (=> start!77646 tp_is_empty!18621))

(declare-fun array_inv!20029 (array!53272) Bool)

(assert (=> start!77646 (array_inv!20029 _keys!1386)))

(assert (= (and start!77646 res!610464) b!904550))

(assert (= (and b!904550 res!610456) b!904546))

(assert (= (and b!904546 res!610457) b!904556))

(assert (= (and b!904556 res!610458) b!904552))

(assert (= (and b!904552 res!610462) b!904545))

(assert (= (and b!904545 res!610460) b!904551))

(assert (= (and b!904551 res!610461) b!904553))

(assert (= (and b!904553 (not res!610459)) b!904554))

(assert (= (and b!904554 (not res!610463)) b!904555))

(assert (= (and b!904547 condMapEmpty!29644) mapIsEmpty!29644))

(assert (= (and b!904547 (not condMapEmpty!29644)) mapNonEmpty!29644))

(get-info :version)

(assert (= (and mapNonEmpty!29644 ((_ is ValueCellFull!8829) mapValue!29644)) b!904549))

(assert (= (and b!904547 ((_ is ValueCellFull!8829) mapDefault!29644)) b!904548))

(assert (= start!77646 b!904547))

(declare-fun m!840101 () Bool)

(assert (=> start!77646 m!840101))

(declare-fun m!840103 () Bool)

(assert (=> start!77646 m!840103))

(declare-fun m!840105 () Bool)

(assert (=> start!77646 m!840105))

(declare-fun m!840107 () Bool)

(assert (=> mapNonEmpty!29644 m!840107))

(declare-fun m!840109 () Bool)

(assert (=> b!904556 m!840109))

(declare-fun m!840111 () Bool)

(assert (=> b!904555 m!840111))

(declare-fun m!840113 () Bool)

(assert (=> b!904553 m!840113))

(declare-fun m!840115 () Bool)

(assert (=> b!904553 m!840115))

(declare-fun m!840117 () Bool)

(assert (=> b!904552 m!840117))

(assert (=> b!904552 m!840117))

(declare-fun m!840119 () Bool)

(assert (=> b!904552 m!840119))

(declare-fun m!840121 () Bool)

(assert (=> b!904554 m!840121))

(declare-fun m!840123 () Bool)

(assert (=> b!904554 m!840123))

(declare-fun m!840125 () Bool)

(assert (=> b!904551 m!840125))

(declare-fun m!840127 () Bool)

(assert (=> b!904546 m!840127))

(declare-fun m!840129 () Bool)

(assert (=> b!904545 m!840129))

(check-sat tp_is_empty!18621 (not start!77646) (not b_next!16203) (not b!904546) (not b!904555) (not b!904545) (not b!904554) (not b!904556) (not b!904552) (not mapNonEmpty!29644) b_and!26587 (not b!904553))
(check-sat b_and!26587 (not b_next!16203))
