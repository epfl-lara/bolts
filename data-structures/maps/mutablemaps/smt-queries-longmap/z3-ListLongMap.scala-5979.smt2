; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77730 () Bool)

(assert start!77730)

(declare-fun b_free!16287 () Bool)

(declare-fun b_next!16287 () Bool)

(assert (=> start!77730 (= b_free!16287 (not b_next!16287))))

(declare-fun tp!57124 () Bool)

(declare-fun b_and!26745 () Bool)

(assert (=> start!77730 (= tp!57124 b_and!26745)))

(declare-fun b!906244 () Bool)

(declare-fun e!507890 () Bool)

(declare-fun tp_is_empty!18705 () Bool)

(assert (=> b!906244 (= e!507890 tp_is_empty!18705)))

(declare-fun b!906245 () Bool)

(declare-fun res!611709 () Bool)

(declare-fun e!507887 () Bool)

(assert (=> b!906245 (=> (not res!611709) (not e!507887))))

(declare-datatypes ((array!53438 0))(
  ( (array!53439 (arr!25674 (Array (_ BitVec 32) (_ BitVec 64))) (size!26134 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53438)

(declare-datatypes ((List!18124 0))(
  ( (Nil!18121) (Cons!18120 (h!19266 (_ BitVec 64)) (t!25591 List!18124)) )
))
(declare-fun arrayNoDuplicates!0 (array!53438 (_ BitVec 32) List!18124) Bool)

(assert (=> b!906245 (= res!611709 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18121))))

(declare-fun b!906246 () Bool)

(declare-fun e!507892 () Bool)

(assert (=> b!906246 (= e!507887 e!507892)))

(declare-fun res!611706 () Bool)

(assert (=> b!906246 (=> (not res!611706) (not e!507892))))

(declare-datatypes ((V!29905 0))(
  ( (V!29906 (val!9403 Int)) )
))
(declare-datatypes ((tuple2!12262 0))(
  ( (tuple2!12263 (_1!6141 (_ BitVec 64)) (_2!6141 V!29905)) )
))
(declare-datatypes ((List!18125 0))(
  ( (Nil!18122) (Cons!18121 (h!19267 tuple2!12262) (t!25592 List!18125)) )
))
(declare-datatypes ((ListLongMap!10973 0))(
  ( (ListLongMap!10974 (toList!5502 List!18125)) )
))
(declare-fun lt!408848 () ListLongMap!10973)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun contains!4512 (ListLongMap!10973 (_ BitVec 64)) Bool)

(assert (=> b!906246 (= res!611706 (contains!4512 lt!408848 k0!1033))))

(declare-datatypes ((ValueCell!8871 0))(
  ( (ValueCellFull!8871 (v!11908 V!29905)) (EmptyCell!8871) )
))
(declare-datatypes ((array!53440 0))(
  ( (array!53441 (arr!25675 (Array (_ BitVec 32) ValueCell!8871)) (size!26135 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53440)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29905)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29905)

(declare-fun getCurrentListMap!2736 (array!53438 array!53440 (_ BitVec 32) (_ BitVec 32) V!29905 V!29905 (_ BitVec 32) Int) ListLongMap!10973)

(assert (=> b!906246 (= lt!408848 (getCurrentListMap!2736 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!906247 () Bool)

(declare-fun e!507889 () Bool)

(declare-fun mapRes!29770 () Bool)

(assert (=> b!906247 (= e!507889 (and e!507890 mapRes!29770))))

(declare-fun condMapEmpty!29770 () Bool)

(declare-fun mapDefault!29770 () ValueCell!8871)

(assert (=> b!906247 (= condMapEmpty!29770 (= (arr!25675 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8871)) mapDefault!29770)))))

(declare-fun b!906248 () Bool)

(declare-fun res!611704 () Bool)

(assert (=> b!906248 (=> (not res!611704) (not e!507887))))

(assert (=> b!906248 (= res!611704 (and (= (size!26135 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26134 _keys!1386) (size!26135 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!906249 () Bool)

(declare-fun e!507888 () Bool)

(assert (=> b!906249 (= e!507892 (not e!507888))))

(declare-fun res!611712 () Bool)

(assert (=> b!906249 (=> res!611712 e!507888)))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!906249 (= res!611712 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26134 _keys!1386))))))

(declare-fun lt!408850 () V!29905)

(declare-fun get!13513 (ValueCell!8871 V!29905) V!29905)

(declare-fun dynLambda!1351 (Int (_ BitVec 64)) V!29905)

(assert (=> b!906249 (= lt!408850 (get!13513 (select (arr!25675 _values!1152) i!717) (dynLambda!1351 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!906249 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30729 0))(
  ( (Unit!30730) )
))
(declare-fun lt!408851 () Unit!30729)

(declare-fun lemmaKeyInListMapIsInArray!224 (array!53438 array!53440 (_ BitVec 32) (_ BitVec 32) V!29905 V!29905 (_ BitVec 64) Int) Unit!30729)

(assert (=> b!906249 (= lt!408851 (lemmaKeyInListMapIsInArray!224 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun mapNonEmpty!29770 () Bool)

(declare-fun tp!57123 () Bool)

(declare-fun e!507886 () Bool)

(assert (=> mapNonEmpty!29770 (= mapRes!29770 (and tp!57123 e!507886))))

(declare-fun mapKey!29770 () (_ BitVec 32))

(declare-fun mapValue!29770 () ValueCell!8871)

(declare-fun mapRest!29770 () (Array (_ BitVec 32) ValueCell!8871))

(assert (=> mapNonEmpty!29770 (= (arr!25675 _values!1152) (store mapRest!29770 mapKey!29770 mapValue!29770))))

(declare-fun b!906250 () Bool)

(declare-fun res!611707 () Bool)

(assert (=> b!906250 (=> (not res!611707) (not e!507892))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!906250 (= res!611707 (inRange!0 i!717 mask!1756))))

(declare-fun mapIsEmpty!29770 () Bool)

(assert (=> mapIsEmpty!29770 mapRes!29770))

(declare-fun b!906251 () Bool)

(declare-fun e!507891 () Bool)

(assert (=> b!906251 (= e!507891 true)))

(declare-fun apply!479 (ListLongMap!10973 (_ BitVec 64)) V!29905)

(assert (=> b!906251 (= (apply!479 lt!408848 k0!1033) lt!408850)))

(declare-fun lt!408847 () Unit!30729)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!28 (array!53438 array!53440 (_ BitVec 32) (_ BitVec 32) V!29905 V!29905 (_ BitVec 64) V!29905 (_ BitVec 32) Int) Unit!30729)

(assert (=> b!906251 (= lt!408847 (lemmaListMapApplyFromThenApplyFromZero!28 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!408850 i!717 defaultEntry!1160))))

(declare-fun b!906252 () Bool)

(declare-fun res!611711 () Bool)

(assert (=> b!906252 (=> (not res!611711) (not e!507887))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53438 (_ BitVec 32)) Bool)

(assert (=> b!906252 (= res!611711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!906254 () Bool)

(assert (=> b!906254 (= e!507886 tp_is_empty!18705)))

(declare-fun b!906255 () Bool)

(declare-fun res!611705 () Bool)

(assert (=> b!906255 (=> (not res!611705) (not e!507892))))

(assert (=> b!906255 (= res!611705 (and (= (select (arr!25674 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!906256 () Bool)

(assert (=> b!906256 (= e!507888 e!507891)))

(declare-fun res!611708 () Bool)

(assert (=> b!906256 (=> res!611708 e!507891)))

(declare-fun lt!408849 () ListLongMap!10973)

(assert (=> b!906256 (= res!611708 (not (contains!4512 lt!408849 k0!1033)))))

(assert (=> b!906256 (= lt!408849 (getCurrentListMap!2736 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!906253 () Bool)

(declare-fun res!611703 () Bool)

(assert (=> b!906253 (=> res!611703 e!507891)))

(assert (=> b!906253 (= res!611703 (not (= (apply!479 lt!408849 k0!1033) lt!408850)))))

(declare-fun res!611710 () Bool)

(assert (=> start!77730 (=> (not res!611710) (not e!507887))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77730 (= res!611710 (validMask!0 mask!1756))))

(assert (=> start!77730 e!507887))

(declare-fun array_inv!20086 (array!53440) Bool)

(assert (=> start!77730 (and (array_inv!20086 _values!1152) e!507889)))

(assert (=> start!77730 tp!57124))

(assert (=> start!77730 true))

(assert (=> start!77730 tp_is_empty!18705))

(declare-fun array_inv!20087 (array!53438) Bool)

(assert (=> start!77730 (array_inv!20087 _keys!1386)))

(assert (= (and start!77730 res!611710) b!906248))

(assert (= (and b!906248 res!611704) b!906252))

(assert (= (and b!906252 res!611711) b!906245))

(assert (= (and b!906245 res!611709) b!906246))

(assert (= (and b!906246 res!611706) b!906250))

(assert (= (and b!906250 res!611707) b!906255))

(assert (= (and b!906255 res!611705) b!906249))

(assert (= (and b!906249 (not res!611712)) b!906256))

(assert (= (and b!906256 (not res!611708)) b!906253))

(assert (= (and b!906253 (not res!611703)) b!906251))

(assert (= (and b!906247 condMapEmpty!29770) mapIsEmpty!29770))

(assert (= (and b!906247 (not condMapEmpty!29770)) mapNonEmpty!29770))

(get-info :version)

(assert (= (and mapNonEmpty!29770 ((_ is ValueCellFull!8871) mapValue!29770)) b!906254))

(assert (= (and b!906247 ((_ is ValueCellFull!8871) mapDefault!29770)) b!906244))

(assert (= start!77730 b!906247))

(declare-fun b_lambda!13191 () Bool)

(assert (=> (not b_lambda!13191) (not b!906249)))

(declare-fun t!25590 () Bool)

(declare-fun tb!5317 () Bool)

(assert (=> (and start!77730 (= defaultEntry!1160 defaultEntry!1160) t!25590) tb!5317))

(declare-fun result!10421 () Bool)

(assert (=> tb!5317 (= result!10421 tp_is_empty!18705)))

(assert (=> b!906249 t!25590))

(declare-fun b_and!26747 () Bool)

(assert (= b_and!26745 (and (=> t!25590 result!10421) b_and!26747)))

(declare-fun m!841731 () Bool)

(assert (=> mapNonEmpty!29770 m!841731))

(declare-fun m!841733 () Bool)

(assert (=> b!906246 m!841733))

(declare-fun m!841735 () Bool)

(assert (=> b!906246 m!841735))

(declare-fun m!841737 () Bool)

(assert (=> b!906256 m!841737))

(declare-fun m!841739 () Bool)

(assert (=> b!906256 m!841739))

(declare-fun m!841741 () Bool)

(assert (=> b!906245 m!841741))

(declare-fun m!841743 () Bool)

(assert (=> start!77730 m!841743))

(declare-fun m!841745 () Bool)

(assert (=> start!77730 m!841745))

(declare-fun m!841747 () Bool)

(assert (=> start!77730 m!841747))

(declare-fun m!841749 () Bool)

(assert (=> b!906252 m!841749))

(declare-fun m!841751 () Bool)

(assert (=> b!906255 m!841751))

(declare-fun m!841753 () Bool)

(assert (=> b!906249 m!841753))

(declare-fun m!841755 () Bool)

(assert (=> b!906249 m!841755))

(declare-fun m!841757 () Bool)

(assert (=> b!906249 m!841757))

(declare-fun m!841759 () Bool)

(assert (=> b!906249 m!841759))

(assert (=> b!906249 m!841753))

(assert (=> b!906249 m!841757))

(declare-fun m!841761 () Bool)

(assert (=> b!906249 m!841761))

(declare-fun m!841763 () Bool)

(assert (=> b!906250 m!841763))

(declare-fun m!841765 () Bool)

(assert (=> b!906253 m!841765))

(declare-fun m!841767 () Bool)

(assert (=> b!906251 m!841767))

(declare-fun m!841769 () Bool)

(assert (=> b!906251 m!841769))

(check-sat (not b!906249) (not b!906252) (not b!906251) (not b!906256) tp_is_empty!18705 (not b!906245) (not b!906246) (not b_next!16287) (not b!906253) (not mapNonEmpty!29770) (not b_lambda!13191) (not start!77730) (not b!906250) b_and!26747)
(check-sat b_and!26747 (not b_next!16287))
