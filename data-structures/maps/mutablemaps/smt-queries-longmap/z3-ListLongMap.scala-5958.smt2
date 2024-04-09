; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77604 () Bool)

(assert start!77604)

(declare-fun b_free!16161 () Bool)

(declare-fun b_next!16161 () Bool)

(assert (=> start!77604 (= b_free!16161 (not b_next!16161))))

(declare-fun tp!56746 () Bool)

(declare-fun b_and!26545 () Bool)

(assert (=> start!77604 (= tp!56746 b_and!26545)))

(declare-fun b!903789 () Bool)

(declare-fun e!506456 () Bool)

(declare-fun e!506452 () Bool)

(assert (=> b!903789 (= e!506456 e!506452)))

(declare-fun res!609891 () Bool)

(assert (=> b!903789 (=> res!609891 e!506452)))

(declare-datatypes ((V!29737 0))(
  ( (V!29738 (val!9340 Int)) )
))
(declare-datatypes ((tuple2!12146 0))(
  ( (tuple2!12147 (_1!6083 (_ BitVec 64)) (_2!6083 V!29737)) )
))
(declare-datatypes ((List!18021 0))(
  ( (Nil!18018) (Cons!18017 (h!19163 tuple2!12146) (t!25412 List!18021)) )
))
(declare-datatypes ((ListLongMap!10857 0))(
  ( (ListLongMap!10858 (toList!5444 List!18021)) )
))
(declare-fun lt!408055 () ListLongMap!10857)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun contains!4457 (ListLongMap!10857 (_ BitVec 64)) Bool)

(assert (=> b!903789 (= res!609891 (not (contains!4457 lt!408055 k0!1033)))))

(declare-datatypes ((ValueCell!8808 0))(
  ( (ValueCellFull!8808 (v!11845 V!29737)) (EmptyCell!8808) )
))
(declare-datatypes ((array!53190 0))(
  ( (array!53191 (arr!25550 (Array (_ BitVec 32) ValueCell!8808)) (size!26010 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53190)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29737)

(declare-datatypes ((array!53192 0))(
  ( (array!53193 (arr!25551 (Array (_ BitVec 32) (_ BitVec 64))) (size!26011 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53192)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29737)

(declare-fun getCurrentListMap!2681 (array!53192 array!53190 (_ BitVec 32) (_ BitVec 32) V!29737 V!29737 (_ BitVec 32) Int) ListLongMap!10857)

(assert (=> b!903789 (= lt!408055 (getCurrentListMap!2681 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!903790 () Bool)

(declare-fun res!609895 () Bool)

(declare-fun e!506451 () Bool)

(assert (=> b!903790 (=> (not res!609895) (not e!506451))))

(assert (=> b!903790 (= res!609895 (contains!4457 (getCurrentListMap!2681 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!903791 () Bool)

(declare-fun res!609892 () Bool)

(assert (=> b!903791 (=> (not res!609892) (not e!506451))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53192 (_ BitVec 32)) Bool)

(assert (=> b!903791 (= res!609892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!903792 () Bool)

(declare-fun res!609893 () Bool)

(assert (=> b!903792 (=> (not res!609893) (not e!506451))))

(declare-datatypes ((List!18022 0))(
  ( (Nil!18019) (Cons!18018 (h!19164 (_ BitVec 64)) (t!25413 List!18022)) )
))
(declare-fun arrayNoDuplicates!0 (array!53192 (_ BitVec 32) List!18022) Bool)

(assert (=> b!903792 (= res!609893 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18019))))

(declare-fun res!609894 () Bool)

(assert (=> start!77604 (=> (not res!609894) (not e!506451))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77604 (= res!609894 (validMask!0 mask!1756))))

(assert (=> start!77604 e!506451))

(declare-fun e!506454 () Bool)

(declare-fun array_inv!19996 (array!53190) Bool)

(assert (=> start!77604 (and (array_inv!19996 _values!1152) e!506454)))

(assert (=> start!77604 tp!56746))

(assert (=> start!77604 true))

(declare-fun tp_is_empty!18579 () Bool)

(assert (=> start!77604 tp_is_empty!18579))

(declare-fun array_inv!19997 (array!53192) Bool)

(assert (=> start!77604 (array_inv!19997 _keys!1386)))

(declare-fun b!903793 () Bool)

(declare-fun e!506455 () Bool)

(assert (=> b!903793 (= e!506455 tp_is_empty!18579)))

(declare-fun b!903794 () Bool)

(assert (=> b!903794 (= e!506451 (not e!506456))))

(declare-fun res!609889 () Bool)

(assert (=> b!903794 (=> res!609889 e!506456)))

(assert (=> b!903794 (= res!609889 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26011 _keys!1386))))))

(declare-fun arrayContainsKey!0 (array!53192 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!903794 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30619 0))(
  ( (Unit!30620) )
))
(declare-fun lt!408056 () Unit!30619)

(declare-fun lemmaKeyInListMapIsInArray!172 (array!53192 array!53190 (_ BitVec 32) (_ BitVec 32) V!29737 V!29737 (_ BitVec 64) Int) Unit!30619)

(assert (=> b!903794 (= lt!408056 (lemmaKeyInListMapIsInArray!172 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun mapIsEmpty!29581 () Bool)

(declare-fun mapRes!29581 () Bool)

(assert (=> mapIsEmpty!29581 mapRes!29581))

(declare-fun b!903795 () Bool)

(assert (=> b!903795 (= e!506452 true)))

(declare-fun lt!408054 () V!29737)

(declare-fun apply!427 (ListLongMap!10857 (_ BitVec 64)) V!29737)

(assert (=> b!903795 (= lt!408054 (apply!427 lt!408055 k0!1033))))

(declare-fun b!903796 () Bool)

(declare-fun res!609890 () Bool)

(assert (=> b!903796 (=> (not res!609890) (not e!506451))))

(assert (=> b!903796 (= res!609890 (and (= (size!26010 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26011 _keys!1386) (size!26010 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!29581 () Bool)

(declare-fun tp!56745 () Bool)

(declare-fun e!506450 () Bool)

(assert (=> mapNonEmpty!29581 (= mapRes!29581 (and tp!56745 e!506450))))

(declare-fun mapKey!29581 () (_ BitVec 32))

(declare-fun mapValue!29581 () ValueCell!8808)

(declare-fun mapRest!29581 () (Array (_ BitVec 32) ValueCell!8808))

(assert (=> mapNonEmpty!29581 (= (arr!25550 _values!1152) (store mapRest!29581 mapKey!29581 mapValue!29581))))

(declare-fun b!903797 () Bool)

(assert (=> b!903797 (= e!506450 tp_is_empty!18579)))

(declare-fun b!903798 () Bool)

(declare-fun res!609896 () Bool)

(assert (=> b!903798 (=> (not res!609896) (not e!506451))))

(assert (=> b!903798 (= res!609896 (and (= (select (arr!25551 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!903799 () Bool)

(declare-fun res!609897 () Bool)

(assert (=> b!903799 (=> (not res!609897) (not e!506451))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!903799 (= res!609897 (inRange!0 i!717 mask!1756))))

(declare-fun b!903800 () Bool)

(assert (=> b!903800 (= e!506454 (and e!506455 mapRes!29581))))

(declare-fun condMapEmpty!29581 () Bool)

(declare-fun mapDefault!29581 () ValueCell!8808)

(assert (=> b!903800 (= condMapEmpty!29581 (= (arr!25550 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8808)) mapDefault!29581)))))

(assert (= (and start!77604 res!609894) b!903796))

(assert (= (and b!903796 res!609890) b!903791))

(assert (= (and b!903791 res!609892) b!903792))

(assert (= (and b!903792 res!609893) b!903790))

(assert (= (and b!903790 res!609895) b!903799))

(assert (= (and b!903799 res!609897) b!903798))

(assert (= (and b!903798 res!609896) b!903794))

(assert (= (and b!903794 (not res!609889)) b!903789))

(assert (= (and b!903789 (not res!609891)) b!903795))

(assert (= (and b!903800 condMapEmpty!29581) mapIsEmpty!29581))

(assert (= (and b!903800 (not condMapEmpty!29581)) mapNonEmpty!29581))

(get-info :version)

(assert (= (and mapNonEmpty!29581 ((_ is ValueCellFull!8808) mapValue!29581)) b!903797))

(assert (= (and b!903800 ((_ is ValueCellFull!8808) mapDefault!29581)) b!903793))

(assert (= start!77604 b!903800))

(declare-fun m!839471 () Bool)

(assert (=> b!903789 m!839471))

(declare-fun m!839473 () Bool)

(assert (=> b!903789 m!839473))

(declare-fun m!839475 () Bool)

(assert (=> b!903790 m!839475))

(assert (=> b!903790 m!839475))

(declare-fun m!839477 () Bool)

(assert (=> b!903790 m!839477))

(declare-fun m!839479 () Bool)

(assert (=> mapNonEmpty!29581 m!839479))

(declare-fun m!839481 () Bool)

(assert (=> b!903791 m!839481))

(declare-fun m!839483 () Bool)

(assert (=> b!903795 m!839483))

(declare-fun m!839485 () Bool)

(assert (=> start!77604 m!839485))

(declare-fun m!839487 () Bool)

(assert (=> start!77604 m!839487))

(declare-fun m!839489 () Bool)

(assert (=> start!77604 m!839489))

(declare-fun m!839491 () Bool)

(assert (=> b!903794 m!839491))

(declare-fun m!839493 () Bool)

(assert (=> b!903794 m!839493))

(declare-fun m!839495 () Bool)

(assert (=> b!903798 m!839495))

(declare-fun m!839497 () Bool)

(assert (=> b!903799 m!839497))

(declare-fun m!839499 () Bool)

(assert (=> b!903792 m!839499))

(check-sat (not b_next!16161) (not b!903791) tp_is_empty!18579 (not mapNonEmpty!29581) (not b!903795) (not b!903792) (not b!903789) b_and!26545 (not start!77604) (not b!903790) (not b!903794) (not b!903799))
(check-sat b_and!26545 (not b_next!16161))
