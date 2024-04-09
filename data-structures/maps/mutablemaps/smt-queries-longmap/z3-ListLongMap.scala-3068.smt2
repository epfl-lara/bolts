; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43270 () Bool)

(assert start!43270)

(declare-fun b_free!12129 () Bool)

(declare-fun b_next!12129 () Bool)

(assert (=> start!43270 (= b_free!12129 (not b_next!12129))))

(declare-fun tp!42657 () Bool)

(declare-fun b_and!20899 () Bool)

(assert (=> start!43270 (= tp!42657 b_and!20899)))

(declare-fun res!285879 () Bool)

(declare-fun e!281875 () Bool)

(assert (=> start!43270 (=> (not res!285879) (not e!281875))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43270 (= res!285879 (validMask!0 mask!2352))))

(assert (=> start!43270 e!281875))

(assert (=> start!43270 true))

(declare-fun tp_is_empty!13641 () Bool)

(assert (=> start!43270 tp_is_empty!13641))

(declare-datatypes ((V!19259 0))(
  ( (V!19260 (val!6868 Int)) )
))
(declare-datatypes ((ValueCell!6459 0))(
  ( (ValueCellFull!6459 (v!9153 V!19259)) (EmptyCell!6459) )
))
(declare-datatypes ((array!30921 0))(
  ( (array!30922 (arr!14864 (Array (_ BitVec 32) ValueCell!6459)) (size!15222 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30921)

(declare-fun e!281877 () Bool)

(declare-fun array_inv!10710 (array!30921) Bool)

(assert (=> start!43270 (and (array_inv!10710 _values!1516) e!281877)))

(assert (=> start!43270 tp!42657))

(declare-datatypes ((array!30923 0))(
  ( (array!30924 (arr!14865 (Array (_ BitVec 32) (_ BitVec 64))) (size!15223 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30923)

(declare-fun array_inv!10711 (array!30923) Bool)

(assert (=> start!43270 (array_inv!10711 _keys!1874)))

(declare-fun mapIsEmpty!22159 () Bool)

(declare-fun mapRes!22159 () Bool)

(assert (=> mapIsEmpty!22159 mapRes!22159))

(declare-fun b!479126 () Bool)

(declare-fun e!281874 () Bool)

(assert (=> b!479126 (= e!281874 tp_is_empty!13641)))

(declare-fun b!479127 () Bool)

(declare-fun res!285878 () Bool)

(assert (=> b!479127 (=> (not res!285878) (not e!281875))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!479127 (= res!285878 (and (= (size!15222 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15223 _keys!1874) (size!15222 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!479128 () Bool)

(declare-fun res!285876 () Bool)

(assert (=> b!479128 (=> (not res!285876) (not e!281875))))

(declare-datatypes ((List!9121 0))(
  ( (Nil!9118) (Cons!9117 (h!9973 (_ BitVec 64)) (t!15335 List!9121)) )
))
(declare-fun arrayNoDuplicates!0 (array!30923 (_ BitVec 32) List!9121) Bool)

(assert (=> b!479128 (= res!285876 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9118))))

(declare-fun b!479129 () Bool)

(declare-fun e!281878 () Bool)

(assert (=> b!479129 (= e!281877 (and e!281878 mapRes!22159))))

(declare-fun condMapEmpty!22159 () Bool)

(declare-fun mapDefault!22159 () ValueCell!6459)

(assert (=> b!479129 (= condMapEmpty!22159 (= (arr!14864 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6459)) mapDefault!22159)))))

(declare-fun b!479130 () Bool)

(assert (=> b!479130 (= e!281875 false)))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun lt!217808 () Bool)

(declare-fun minValue!1458 () V!19259)

(declare-fun zeroValue!1458 () V!19259)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9010 0))(
  ( (tuple2!9011 (_1!4515 (_ BitVec 64)) (_2!4515 V!19259)) )
))
(declare-datatypes ((List!9122 0))(
  ( (Nil!9119) (Cons!9118 (h!9974 tuple2!9010) (t!15336 List!9122)) )
))
(declare-datatypes ((ListLongMap!7937 0))(
  ( (ListLongMap!7938 (toList!3984 List!9122)) )
))
(declare-fun contains!2591 (ListLongMap!7937 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2276 (array!30923 array!30921 (_ BitVec 32) (_ BitVec 32) V!19259 V!19259 (_ BitVec 32) Int) ListLongMap!7937)

(assert (=> b!479130 (= lt!217808 (contains!2591 (getCurrentListMap!2276 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!479131 () Bool)

(assert (=> b!479131 (= e!281878 tp_is_empty!13641)))

(declare-fun b!479132 () Bool)

(declare-fun res!285877 () Bool)

(assert (=> b!479132 (=> (not res!285877) (not e!281875))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30923 (_ BitVec 32)) Bool)

(assert (=> b!479132 (= res!285877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun mapNonEmpty!22159 () Bool)

(declare-fun tp!42658 () Bool)

(assert (=> mapNonEmpty!22159 (= mapRes!22159 (and tp!42658 e!281874))))

(declare-fun mapKey!22159 () (_ BitVec 32))

(declare-fun mapValue!22159 () ValueCell!6459)

(declare-fun mapRest!22159 () (Array (_ BitVec 32) ValueCell!6459))

(assert (=> mapNonEmpty!22159 (= (arr!14864 _values!1516) (store mapRest!22159 mapKey!22159 mapValue!22159))))

(assert (= (and start!43270 res!285879) b!479127))

(assert (= (and b!479127 res!285878) b!479132))

(assert (= (and b!479132 res!285877) b!479128))

(assert (= (and b!479128 res!285876) b!479130))

(assert (= (and b!479129 condMapEmpty!22159) mapIsEmpty!22159))

(assert (= (and b!479129 (not condMapEmpty!22159)) mapNonEmpty!22159))

(get-info :version)

(assert (= (and mapNonEmpty!22159 ((_ is ValueCellFull!6459) mapValue!22159)) b!479126))

(assert (= (and b!479129 ((_ is ValueCellFull!6459) mapDefault!22159)) b!479131))

(assert (= start!43270 b!479129))

(declare-fun m!461135 () Bool)

(assert (=> b!479132 m!461135))

(declare-fun m!461137 () Bool)

(assert (=> mapNonEmpty!22159 m!461137))

(declare-fun m!461139 () Bool)

(assert (=> b!479128 m!461139))

(declare-fun m!461141 () Bool)

(assert (=> start!43270 m!461141))

(declare-fun m!461143 () Bool)

(assert (=> start!43270 m!461143))

(declare-fun m!461145 () Bool)

(assert (=> start!43270 m!461145))

(declare-fun m!461147 () Bool)

(assert (=> b!479130 m!461147))

(assert (=> b!479130 m!461147))

(declare-fun m!461149 () Bool)

(assert (=> b!479130 m!461149))

(check-sat (not b_next!12129) (not start!43270) tp_is_empty!13641 (not b!479128) b_and!20899 (not b!479130) (not mapNonEmpty!22159) (not b!479132))
(check-sat b_and!20899 (not b_next!12129))
