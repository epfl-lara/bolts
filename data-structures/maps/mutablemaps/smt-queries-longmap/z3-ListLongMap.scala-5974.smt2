; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77700 () Bool)

(assert start!77700)

(declare-fun b_free!16257 () Bool)

(declare-fun b_next!16257 () Bool)

(assert (=> start!77700 (= b_free!16257 (not b_next!16257))))

(declare-fun tp!57033 () Bool)

(declare-fun b_and!26685 () Bool)

(assert (=> start!77700 (= tp!57033 b_and!26685)))

(declare-fun b!905629 () Bool)

(declare-fun e!507531 () Bool)

(declare-fun e!507529 () Bool)

(declare-fun mapRes!29725 () Bool)

(assert (=> b!905629 (= e!507531 (and e!507529 mapRes!29725))))

(declare-fun condMapEmpty!29725 () Bool)

(declare-datatypes ((V!29865 0))(
  ( (V!29866 (val!9388 Int)) )
))
(declare-datatypes ((ValueCell!8856 0))(
  ( (ValueCellFull!8856 (v!11893 V!29865)) (EmptyCell!8856) )
))
(declare-datatypes ((array!53380 0))(
  ( (array!53381 (arr!25645 (Array (_ BitVec 32) ValueCell!8856)) (size!26105 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53380)

(declare-fun mapDefault!29725 () ValueCell!8856)

(assert (=> b!905629 (= condMapEmpty!29725 (= (arr!25645 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8856)) mapDefault!29725)))))

(declare-fun b!905630 () Bool)

(declare-fun e!507526 () Bool)

(assert (=> b!905630 (= e!507526 true)))

(declare-datatypes ((tuple2!12236 0))(
  ( (tuple2!12237 (_1!6128 (_ BitVec 64)) (_2!6128 V!29865)) )
))
(declare-datatypes ((List!18100 0))(
  ( (Nil!18097) (Cons!18096 (h!19242 tuple2!12236) (t!25537 List!18100)) )
))
(declare-datatypes ((ListLongMap!10947 0))(
  ( (ListLongMap!10948 (toList!5489 List!18100)) )
))
(declare-fun lt!408626 () ListLongMap!10947)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun lt!408624 () V!29865)

(declare-fun apply!466 (ListLongMap!10947 (_ BitVec 64)) V!29865)

(assert (=> b!905630 (= (apply!466 lt!408626 k0!1033) lt!408624)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29865)

(declare-datatypes ((array!53382 0))(
  ( (array!53383 (arr!25646 (Array (_ BitVec 32) (_ BitVec 64))) (size!26106 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53382)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29865)

(declare-datatypes ((Unit!30703 0))(
  ( (Unit!30704) )
))
(declare-fun lt!408623 () Unit!30703)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!17 (array!53382 array!53380 (_ BitVec 32) (_ BitVec 32) V!29865 V!29865 (_ BitVec 64) V!29865 (_ BitVec 32) Int) Unit!30703)

(assert (=> b!905630 (= lt!408623 (lemmaListMapApplyFromThenApplyFromZero!17 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!408624 i!717 defaultEntry!1160))))

(declare-fun b!905631 () Bool)

(declare-fun res!611259 () Bool)

(declare-fun e!507530 () Bool)

(assert (=> b!905631 (=> (not res!611259) (not e!507530))))

(declare-datatypes ((List!18101 0))(
  ( (Nil!18098) (Cons!18097 (h!19243 (_ BitVec 64)) (t!25538 List!18101)) )
))
(declare-fun arrayNoDuplicates!0 (array!53382 (_ BitVec 32) List!18101) Bool)

(assert (=> b!905631 (= res!611259 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18098))))

(declare-fun b!905632 () Bool)

(declare-fun res!611262 () Bool)

(declare-fun e!507528 () Bool)

(assert (=> b!905632 (=> (not res!611262) (not e!507528))))

(assert (=> b!905632 (= res!611262 (and (= (select (arr!25646 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!905633 () Bool)

(declare-fun e!507527 () Bool)

(assert (=> b!905633 (= e!507528 (not e!507527))))

(declare-fun res!611255 () Bool)

(assert (=> b!905633 (=> res!611255 e!507527)))

(assert (=> b!905633 (= res!611255 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26106 _keys!1386))))))

(declare-fun get!13491 (ValueCell!8856 V!29865) V!29865)

(declare-fun dynLambda!1339 (Int (_ BitVec 64)) V!29865)

(assert (=> b!905633 (= lt!408624 (get!13491 (select (arr!25645 _values!1152) i!717) (dynLambda!1339 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53382 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!905633 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun lt!408622 () Unit!30703)

(declare-fun lemmaKeyInListMapIsInArray!212 (array!53382 array!53380 (_ BitVec 32) (_ BitVec 32) V!29865 V!29865 (_ BitVec 64) Int) Unit!30703)

(assert (=> b!905633 (= lt!408622 (lemmaKeyInListMapIsInArray!212 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun mapIsEmpty!29725 () Bool)

(assert (=> mapIsEmpty!29725 mapRes!29725))

(declare-fun b!905634 () Bool)

(declare-fun res!611258 () Bool)

(assert (=> b!905634 (=> (not res!611258) (not e!507530))))

(assert (=> b!905634 (= res!611258 (and (= (size!26105 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26106 _keys!1386) (size!26105 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!905635 () Bool)

(declare-fun res!611256 () Bool)

(assert (=> b!905635 (=> res!611256 e!507526)))

(declare-fun lt!408625 () ListLongMap!10947)

(assert (=> b!905635 (= res!611256 (not (= (apply!466 lt!408625 k0!1033) lt!408624)))))

(declare-fun b!905637 () Bool)

(declare-fun tp_is_empty!18675 () Bool)

(assert (=> b!905637 (= e!507529 tp_is_empty!18675)))

(declare-fun b!905638 () Bool)

(assert (=> b!905638 (= e!507527 e!507526)))

(declare-fun res!611253 () Bool)

(assert (=> b!905638 (=> res!611253 e!507526)))

(declare-fun contains!4499 (ListLongMap!10947 (_ BitVec 64)) Bool)

(assert (=> b!905638 (= res!611253 (not (contains!4499 lt!408625 k0!1033)))))

(declare-fun getCurrentListMap!2723 (array!53382 array!53380 (_ BitVec 32) (_ BitVec 32) V!29865 V!29865 (_ BitVec 32) Int) ListLongMap!10947)

(assert (=> b!905638 (= lt!408625 (getCurrentListMap!2723 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!905639 () Bool)

(declare-fun res!611260 () Bool)

(assert (=> b!905639 (=> (not res!611260) (not e!507528))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!905639 (= res!611260 (inRange!0 i!717 mask!1756))))

(declare-fun b!905640 () Bool)

(declare-fun e!507532 () Bool)

(assert (=> b!905640 (= e!507532 tp_is_empty!18675)))

(declare-fun mapNonEmpty!29725 () Bool)

(declare-fun tp!57034 () Bool)

(assert (=> mapNonEmpty!29725 (= mapRes!29725 (and tp!57034 e!507532))))

(declare-fun mapValue!29725 () ValueCell!8856)

(declare-fun mapKey!29725 () (_ BitVec 32))

(declare-fun mapRest!29725 () (Array (_ BitVec 32) ValueCell!8856))

(assert (=> mapNonEmpty!29725 (= (arr!25645 _values!1152) (store mapRest!29725 mapKey!29725 mapValue!29725))))

(declare-fun b!905641 () Bool)

(declare-fun res!611261 () Bool)

(assert (=> b!905641 (=> (not res!611261) (not e!507530))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53382 (_ BitVec 32)) Bool)

(assert (=> b!905641 (= res!611261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!905636 () Bool)

(assert (=> b!905636 (= e!507530 e!507528)))

(declare-fun res!611257 () Bool)

(assert (=> b!905636 (=> (not res!611257) (not e!507528))))

(assert (=> b!905636 (= res!611257 (contains!4499 lt!408626 k0!1033))))

(assert (=> b!905636 (= lt!408626 (getCurrentListMap!2723 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun res!611254 () Bool)

(assert (=> start!77700 (=> (not res!611254) (not e!507530))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77700 (= res!611254 (validMask!0 mask!1756))))

(assert (=> start!77700 e!507530))

(declare-fun array_inv!20068 (array!53380) Bool)

(assert (=> start!77700 (and (array_inv!20068 _values!1152) e!507531)))

(assert (=> start!77700 tp!57033))

(assert (=> start!77700 true))

(assert (=> start!77700 tp_is_empty!18675))

(declare-fun array_inv!20069 (array!53382) Bool)

(assert (=> start!77700 (array_inv!20069 _keys!1386)))

(assert (= (and start!77700 res!611254) b!905634))

(assert (= (and b!905634 res!611258) b!905641))

(assert (= (and b!905641 res!611261) b!905631))

(assert (= (and b!905631 res!611259) b!905636))

(assert (= (and b!905636 res!611257) b!905639))

(assert (= (and b!905639 res!611260) b!905632))

(assert (= (and b!905632 res!611262) b!905633))

(assert (= (and b!905633 (not res!611255)) b!905638))

(assert (= (and b!905638 (not res!611253)) b!905635))

(assert (= (and b!905635 (not res!611256)) b!905630))

(assert (= (and b!905629 condMapEmpty!29725) mapIsEmpty!29725))

(assert (= (and b!905629 (not condMapEmpty!29725)) mapNonEmpty!29725))

(get-info :version)

(assert (= (and mapNonEmpty!29725 ((_ is ValueCellFull!8856) mapValue!29725)) b!905640))

(assert (= (and b!905629 ((_ is ValueCellFull!8856) mapDefault!29725)) b!905637))

(assert (= start!77700 b!905629))

(declare-fun b_lambda!13161 () Bool)

(assert (=> (not b_lambda!13161) (not b!905633)))

(declare-fun t!25536 () Bool)

(declare-fun tb!5287 () Bool)

(assert (=> (and start!77700 (= defaultEntry!1160 defaultEntry!1160) t!25536) tb!5287))

(declare-fun result!10361 () Bool)

(assert (=> tb!5287 (= result!10361 tp_is_empty!18675)))

(assert (=> b!905633 t!25536))

(declare-fun b_and!26687 () Bool)

(assert (= b_and!26685 (and (=> t!25536 result!10361) b_and!26687)))

(declare-fun m!841131 () Bool)

(assert (=> b!905632 m!841131))

(declare-fun m!841133 () Bool)

(assert (=> mapNonEmpty!29725 m!841133))

(declare-fun m!841135 () Bool)

(assert (=> b!905638 m!841135))

(declare-fun m!841137 () Bool)

(assert (=> b!905638 m!841137))

(declare-fun m!841139 () Bool)

(assert (=> b!905635 m!841139))

(declare-fun m!841141 () Bool)

(assert (=> b!905630 m!841141))

(declare-fun m!841143 () Bool)

(assert (=> b!905630 m!841143))

(declare-fun m!841145 () Bool)

(assert (=> b!905636 m!841145))

(declare-fun m!841147 () Bool)

(assert (=> b!905636 m!841147))

(declare-fun m!841149 () Bool)

(assert (=> start!77700 m!841149))

(declare-fun m!841151 () Bool)

(assert (=> start!77700 m!841151))

(declare-fun m!841153 () Bool)

(assert (=> start!77700 m!841153))

(declare-fun m!841155 () Bool)

(assert (=> b!905639 m!841155))

(declare-fun m!841157 () Bool)

(assert (=> b!905633 m!841157))

(declare-fun m!841159 () Bool)

(assert (=> b!905633 m!841159))

(declare-fun m!841161 () Bool)

(assert (=> b!905633 m!841161))

(declare-fun m!841163 () Bool)

(assert (=> b!905633 m!841163))

(assert (=> b!905633 m!841157))

(assert (=> b!905633 m!841161))

(declare-fun m!841165 () Bool)

(assert (=> b!905633 m!841165))

(declare-fun m!841167 () Bool)

(assert (=> b!905631 m!841167))

(declare-fun m!841169 () Bool)

(assert (=> b!905641 m!841169))

(check-sat (not b!905635) (not b!905631) (not b!905638) tp_is_empty!18675 (not start!77700) (not mapNonEmpty!29725) (not b!905630) b_and!26687 (not b!905641) (not b!905633) (not b_next!16257) (not b!905639) (not b!905636) (not b_lambda!13161))
(check-sat b_and!26687 (not b_next!16257))
