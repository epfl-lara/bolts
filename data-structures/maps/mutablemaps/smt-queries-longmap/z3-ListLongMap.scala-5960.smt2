; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77616 () Bool)

(assert start!77616)

(declare-fun b_free!16173 () Bool)

(declare-fun b_next!16173 () Bool)

(assert (=> start!77616 (= b_free!16173 (not b_next!16173))))

(declare-fun tp!56782 () Bool)

(declare-fun b_and!26557 () Bool)

(assert (=> start!77616 (= tp!56782 b_and!26557)))

(declare-fun b!904005 () Bool)

(declare-fun res!610055 () Bool)

(declare-fun e!506578 () Bool)

(assert (=> b!904005 (=> (not res!610055) (not e!506578))))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53212 0))(
  ( (array!53213 (arr!25561 (Array (_ BitVec 32) (_ BitVec 64))) (size!26021 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53212)

(declare-fun k0!1033 () (_ BitVec 64))

(assert (=> b!904005 (= res!610055 (and (= (select (arr!25561 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!904006 () Bool)

(declare-fun e!506581 () Bool)

(declare-fun e!506577 () Bool)

(assert (=> b!904006 (= e!506581 e!506577)))

(declare-fun res!610054 () Bool)

(assert (=> b!904006 (=> res!610054 e!506577)))

(declare-datatypes ((V!29753 0))(
  ( (V!29754 (val!9346 Int)) )
))
(declare-datatypes ((tuple2!12156 0))(
  ( (tuple2!12157 (_1!6088 (_ BitVec 64)) (_2!6088 V!29753)) )
))
(declare-datatypes ((List!18031 0))(
  ( (Nil!18028) (Cons!18027 (h!19173 tuple2!12156) (t!25422 List!18031)) )
))
(declare-datatypes ((ListLongMap!10867 0))(
  ( (ListLongMap!10868 (toList!5449 List!18031)) )
))
(declare-fun lt!408109 () ListLongMap!10867)

(declare-fun contains!4462 (ListLongMap!10867 (_ BitVec 64)) Bool)

(assert (=> b!904006 (= res!610054 (not (contains!4462 lt!408109 k0!1033)))))

(declare-datatypes ((ValueCell!8814 0))(
  ( (ValueCellFull!8814 (v!11851 V!29753)) (EmptyCell!8814) )
))
(declare-datatypes ((array!53214 0))(
  ( (array!53215 (arr!25562 (Array (_ BitVec 32) ValueCell!8814)) (size!26022 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53214)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29753)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29753)

(declare-fun getCurrentListMap!2686 (array!53212 array!53214 (_ BitVec 32) (_ BitVec 32) V!29753 V!29753 (_ BitVec 32) Int) ListLongMap!10867)

(assert (=> b!904006 (= lt!408109 (getCurrentListMap!2686 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!904007 () Bool)

(assert (=> b!904007 (= e!506577 true)))

(declare-fun lt!408108 () V!29753)

(declare-fun apply!432 (ListLongMap!10867 (_ BitVec 64)) V!29753)

(assert (=> b!904007 (= lt!408108 (apply!432 lt!408109 k0!1033))))

(declare-fun b!904008 () Bool)

(declare-fun res!610051 () Bool)

(assert (=> b!904008 (=> (not res!610051) (not e!506578))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53212 (_ BitVec 32)) Bool)

(assert (=> b!904008 (= res!610051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!904009 () Bool)

(declare-fun res!610057 () Bool)

(assert (=> b!904009 (=> (not res!610057) (not e!506578))))

(declare-datatypes ((List!18032 0))(
  ( (Nil!18029) (Cons!18028 (h!19174 (_ BitVec 64)) (t!25423 List!18032)) )
))
(declare-fun arrayNoDuplicates!0 (array!53212 (_ BitVec 32) List!18032) Bool)

(assert (=> b!904009 (= res!610057 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18029))))

(declare-fun mapNonEmpty!29599 () Bool)

(declare-fun mapRes!29599 () Bool)

(declare-fun tp!56781 () Bool)

(declare-fun e!506579 () Bool)

(assert (=> mapNonEmpty!29599 (= mapRes!29599 (and tp!56781 e!506579))))

(declare-fun mapValue!29599 () ValueCell!8814)

(declare-fun mapRest!29599 () (Array (_ BitVec 32) ValueCell!8814))

(declare-fun mapKey!29599 () (_ BitVec 32))

(assert (=> mapNonEmpty!29599 (= (arr!25562 _values!1152) (store mapRest!29599 mapKey!29599 mapValue!29599))))

(declare-fun mapIsEmpty!29599 () Bool)

(assert (=> mapIsEmpty!29599 mapRes!29599))

(declare-fun b!904010 () Bool)

(declare-fun res!610052 () Bool)

(assert (=> b!904010 (=> (not res!610052) (not e!506578))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904010 (= res!610052 (inRange!0 i!717 mask!1756))))

(declare-fun b!904011 () Bool)

(declare-fun res!610056 () Bool)

(assert (=> b!904011 (=> (not res!610056) (not e!506578))))

(assert (=> b!904011 (= res!610056 (and (= (size!26022 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26021 _keys!1386) (size!26022 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!904012 () Bool)

(assert (=> b!904012 (= e!506578 (not e!506581))))

(declare-fun res!610058 () Bool)

(assert (=> b!904012 (=> res!610058 e!506581)))

(assert (=> b!904012 (= res!610058 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26021 _keys!1386))))))

(declare-fun arrayContainsKey!0 (array!53212 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904012 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30629 0))(
  ( (Unit!30630) )
))
(declare-fun lt!408110 () Unit!30629)

(declare-fun lemmaKeyInListMapIsInArray!177 (array!53212 array!53214 (_ BitVec 32) (_ BitVec 32) V!29753 V!29753 (_ BitVec 64) Int) Unit!30629)

(assert (=> b!904012 (= lt!408110 (lemmaKeyInListMapIsInArray!177 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun res!610053 () Bool)

(assert (=> start!77616 (=> (not res!610053) (not e!506578))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77616 (= res!610053 (validMask!0 mask!1756))))

(assert (=> start!77616 e!506578))

(declare-fun e!506580 () Bool)

(declare-fun array_inv!20006 (array!53214) Bool)

(assert (=> start!77616 (and (array_inv!20006 _values!1152) e!506580)))

(assert (=> start!77616 tp!56782))

(assert (=> start!77616 true))

(declare-fun tp_is_empty!18591 () Bool)

(assert (=> start!77616 tp_is_empty!18591))

(declare-fun array_inv!20007 (array!53212) Bool)

(assert (=> start!77616 (array_inv!20007 _keys!1386)))

(declare-fun b!904013 () Bool)

(assert (=> b!904013 (= e!506579 tp_is_empty!18591)))

(declare-fun b!904014 () Bool)

(declare-fun e!506582 () Bool)

(assert (=> b!904014 (= e!506580 (and e!506582 mapRes!29599))))

(declare-fun condMapEmpty!29599 () Bool)

(declare-fun mapDefault!29599 () ValueCell!8814)

(assert (=> b!904014 (= condMapEmpty!29599 (= (arr!25562 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8814)) mapDefault!29599)))))

(declare-fun b!904015 () Bool)

(assert (=> b!904015 (= e!506582 tp_is_empty!18591)))

(declare-fun b!904016 () Bool)

(declare-fun res!610059 () Bool)

(assert (=> b!904016 (=> (not res!610059) (not e!506578))))

(assert (=> b!904016 (= res!610059 (contains!4462 (getCurrentListMap!2686 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(assert (= (and start!77616 res!610053) b!904011))

(assert (= (and b!904011 res!610056) b!904008))

(assert (= (and b!904008 res!610051) b!904009))

(assert (= (and b!904009 res!610057) b!904016))

(assert (= (and b!904016 res!610059) b!904010))

(assert (= (and b!904010 res!610052) b!904005))

(assert (= (and b!904005 res!610055) b!904012))

(assert (= (and b!904012 (not res!610058)) b!904006))

(assert (= (and b!904006 (not res!610054)) b!904007))

(assert (= (and b!904014 condMapEmpty!29599) mapIsEmpty!29599))

(assert (= (and b!904014 (not condMapEmpty!29599)) mapNonEmpty!29599))

(get-info :version)

(assert (= (and mapNonEmpty!29599 ((_ is ValueCellFull!8814) mapValue!29599)) b!904013))

(assert (= (and b!904014 ((_ is ValueCellFull!8814) mapDefault!29599)) b!904015))

(assert (= start!77616 b!904014))

(declare-fun m!839651 () Bool)

(assert (=> b!904009 m!839651))

(declare-fun m!839653 () Bool)

(assert (=> b!904008 m!839653))

(declare-fun m!839655 () Bool)

(assert (=> b!904006 m!839655))

(declare-fun m!839657 () Bool)

(assert (=> b!904006 m!839657))

(declare-fun m!839659 () Bool)

(assert (=> b!904012 m!839659))

(declare-fun m!839661 () Bool)

(assert (=> b!904012 m!839661))

(declare-fun m!839663 () Bool)

(assert (=> mapNonEmpty!29599 m!839663))

(declare-fun m!839665 () Bool)

(assert (=> start!77616 m!839665))

(declare-fun m!839667 () Bool)

(assert (=> start!77616 m!839667))

(declare-fun m!839669 () Bool)

(assert (=> start!77616 m!839669))

(declare-fun m!839671 () Bool)

(assert (=> b!904005 m!839671))

(declare-fun m!839673 () Bool)

(assert (=> b!904007 m!839673))

(declare-fun m!839675 () Bool)

(assert (=> b!904010 m!839675))

(declare-fun m!839677 () Bool)

(assert (=> b!904016 m!839677))

(assert (=> b!904016 m!839677))

(declare-fun m!839679 () Bool)

(assert (=> b!904016 m!839679))

(check-sat tp_is_empty!18591 (not b!904009) (not b!904012) (not b_next!16173) (not b!904006) (not b!904008) (not b!904016) b_and!26557 (not b!904010) (not start!77616) (not mapNonEmpty!29599) (not b!904007))
(check-sat b_and!26557 (not b_next!16173))
