; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21192 () Bool)

(assert start!21192)

(declare-fun b_free!5631 () Bool)

(declare-fun b_next!5631 () Bool)

(assert (=> start!21192 (= b_free!5631 (not b_next!5631))))

(declare-fun tp!19964 () Bool)

(declare-fun b_and!12515 () Bool)

(assert (=> start!21192 (= tp!19964 b_and!12515)))

(declare-fun b!213288 () Bool)

(declare-fun res!104399 () Bool)

(declare-fun e!138737 () Bool)

(assert (=> b!213288 (=> (not res!104399) (not e!138737))))

(declare-datatypes ((array!10190 0))(
  ( (array!10191 (arr!4835 (Array (_ BitVec 32) (_ BitVec 64))) (size!5160 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10190)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6971 0))(
  ( (V!6972 (val!2791 Int)) )
))
(declare-datatypes ((ValueCell!2403 0))(
  ( (ValueCellFull!2403 (v!4797 V!6971)) (EmptyCell!2403) )
))
(declare-datatypes ((array!10192 0))(
  ( (array!10193 (arr!4836 (Array (_ BitVec 32) ValueCell!2403)) (size!5161 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10192)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!213288 (= res!104399 (and (= (size!5161 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5160 _keys!825) (size!5161 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!213289 () Bool)

(declare-fun e!138739 () Bool)

(declare-fun tp_is_empty!5493 () Bool)

(assert (=> b!213289 (= e!138739 tp_is_empty!5493)))

(declare-fun b!213290 () Bool)

(declare-fun res!104395 () Bool)

(assert (=> b!213290 (=> (not res!104395) (not e!138737))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!213290 (= res!104395 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5160 _keys!825))))))

(declare-fun b!213291 () Bool)

(declare-fun res!104397 () Bool)

(assert (=> b!213291 (=> (not res!104397) (not e!138737))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10190 (_ BitVec 32)) Bool)

(assert (=> b!213291 (= res!104397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!213292 () Bool)

(declare-fun res!104402 () Bool)

(assert (=> b!213292 (=> (not res!104402) (not e!138737))))

(declare-datatypes ((List!3134 0))(
  ( (Nil!3131) (Cons!3130 (h!3772 (_ BitVec 64)) (t!8093 List!3134)) )
))
(declare-fun arrayNoDuplicates!0 (array!10190 (_ BitVec 32) List!3134) Bool)

(assert (=> b!213292 (= res!104402 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3131))))

(declare-datatypes ((tuple2!4224 0))(
  ( (tuple2!4225 (_1!2122 (_ BitVec 64)) (_2!2122 V!6971)) )
))
(declare-datatypes ((List!3135 0))(
  ( (Nil!3132) (Cons!3131 (h!3773 tuple2!4224) (t!8094 List!3135)) )
))
(declare-datatypes ((ListLongMap!3151 0))(
  ( (ListLongMap!3152 (toList!1591 List!3135)) )
))
(declare-fun lt!110235 () ListLongMap!3151)

(declare-fun lt!110239 () tuple2!4224)

(declare-fun b!213293 () Bool)

(declare-fun e!138734 () Bool)

(declare-fun lt!110236 () ListLongMap!3151)

(declare-fun +!584 (ListLongMap!3151 tuple2!4224) ListLongMap!3151)

(assert (=> b!213293 (= e!138734 (= (+!584 lt!110236 lt!110239) lt!110235))))

(declare-fun lt!110232 () ListLongMap!3151)

(declare-fun lt!110237 () ListLongMap!3151)

(assert (=> b!213293 (= lt!110232 (+!584 lt!110237 lt!110239))))

(declare-fun lt!110243 () ListLongMap!3151)

(declare-fun minValue!615 () V!6971)

(declare-datatypes ((Unit!6467 0))(
  ( (Unit!6468) )
))
(declare-fun lt!110241 () Unit!6467)

(declare-fun v!520 () V!6971)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun addCommutativeForDiffKeys!206 (ListLongMap!3151 (_ BitVec 64) V!6971 (_ BitVec 64) V!6971) Unit!6467)

(assert (=> b!213293 (= lt!110241 (addCommutativeForDiffKeys!206 lt!110243 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!213294 () Bool)

(declare-fun e!138738 () Bool)

(assert (=> b!213294 (= e!138737 (not e!138738))))

(declare-fun res!104396 () Bool)

(assert (=> b!213294 (=> res!104396 e!138738)))

(assert (=> b!213294 (= res!104396 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!615 () V!6971)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1114 (array!10190 array!10192 (_ BitVec 32) (_ BitVec 32) V!6971 V!6971 (_ BitVec 32) Int) ListLongMap!3151)

(assert (=> b!213294 (= lt!110236 (getCurrentListMap!1114 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110240 () array!10192)

(assert (=> b!213294 (= lt!110235 (getCurrentListMap!1114 _keys!825 lt!110240 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110238 () ListLongMap!3151)

(declare-fun lt!110234 () ListLongMap!3151)

(assert (=> b!213294 (and (= lt!110238 lt!110234) (= lt!110234 lt!110238))))

(assert (=> b!213294 (= lt!110234 (+!584 lt!110243 lt!110239))))

(assert (=> b!213294 (= lt!110239 (tuple2!4225 k0!843 v!520))))

(declare-fun lt!110233 () Unit!6467)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!231 (array!10190 array!10192 (_ BitVec 32) (_ BitVec 32) V!6971 V!6971 (_ BitVec 32) (_ BitVec 64) V!6971 (_ BitVec 32) Int) Unit!6467)

(assert (=> b!213294 (= lt!110233 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!231 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!513 (array!10190 array!10192 (_ BitVec 32) (_ BitVec 32) V!6971 V!6971 (_ BitVec 32) Int) ListLongMap!3151)

(assert (=> b!213294 (= lt!110238 (getCurrentListMapNoExtraKeys!513 _keys!825 lt!110240 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!213294 (= lt!110240 (array!10193 (store (arr!4836 _values!649) i!601 (ValueCellFull!2403 v!520)) (size!5161 _values!649)))))

(assert (=> b!213294 (= lt!110243 (getCurrentListMapNoExtraKeys!513 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!9338 () Bool)

(declare-fun mapRes!9338 () Bool)

(assert (=> mapIsEmpty!9338 mapRes!9338))

(declare-fun b!213295 () Bool)

(declare-fun res!104403 () Bool)

(assert (=> b!213295 (=> (not res!104403) (not e!138737))))

(assert (=> b!213295 (= res!104403 (= (select (arr!4835 _keys!825) i!601) k0!843))))

(declare-fun b!213296 () Bool)

(declare-fun e!138736 () Bool)

(assert (=> b!213296 (= e!138736 tp_is_empty!5493)))

(declare-fun b!213297 () Bool)

(declare-fun res!104398 () Bool)

(assert (=> b!213297 (=> (not res!104398) (not e!138737))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!213297 (= res!104398 (validKeyInArray!0 k0!843))))

(declare-fun res!104400 () Bool)

(assert (=> start!21192 (=> (not res!104400) (not e!138737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21192 (= res!104400 (validMask!0 mask!1149))))

(assert (=> start!21192 e!138737))

(declare-fun e!138735 () Bool)

(declare-fun array_inv!3189 (array!10192) Bool)

(assert (=> start!21192 (and (array_inv!3189 _values!649) e!138735)))

(assert (=> start!21192 true))

(assert (=> start!21192 tp_is_empty!5493))

(declare-fun array_inv!3190 (array!10190) Bool)

(assert (=> start!21192 (array_inv!3190 _keys!825)))

(assert (=> start!21192 tp!19964))

(declare-fun mapNonEmpty!9338 () Bool)

(declare-fun tp!19963 () Bool)

(assert (=> mapNonEmpty!9338 (= mapRes!9338 (and tp!19963 e!138739))))

(declare-fun mapRest!9338 () (Array (_ BitVec 32) ValueCell!2403))

(declare-fun mapValue!9338 () ValueCell!2403)

(declare-fun mapKey!9338 () (_ BitVec 32))

(assert (=> mapNonEmpty!9338 (= (arr!4836 _values!649) (store mapRest!9338 mapKey!9338 mapValue!9338))))

(declare-fun b!213298 () Bool)

(assert (=> b!213298 (= e!138738 e!138734)))

(declare-fun res!104401 () Bool)

(assert (=> b!213298 (=> res!104401 e!138734)))

(assert (=> b!213298 (= res!104401 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!213298 (= lt!110236 lt!110237)))

(declare-fun lt!110242 () tuple2!4224)

(assert (=> b!213298 (= lt!110237 (+!584 lt!110243 lt!110242))))

(assert (=> b!213298 (= lt!110235 lt!110232)))

(assert (=> b!213298 (= lt!110232 (+!584 lt!110234 lt!110242))))

(assert (=> b!213298 (= lt!110235 (+!584 lt!110238 lt!110242))))

(assert (=> b!213298 (= lt!110242 (tuple2!4225 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!213299 () Bool)

(assert (=> b!213299 (= e!138735 (and e!138736 mapRes!9338))))

(declare-fun condMapEmpty!9338 () Bool)

(declare-fun mapDefault!9338 () ValueCell!2403)

(assert (=> b!213299 (= condMapEmpty!9338 (= (arr!4836 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2403)) mapDefault!9338)))))

(assert (= (and start!21192 res!104400) b!213288))

(assert (= (and b!213288 res!104399) b!213291))

(assert (= (and b!213291 res!104397) b!213292))

(assert (= (and b!213292 res!104402) b!213290))

(assert (= (and b!213290 res!104395) b!213297))

(assert (= (and b!213297 res!104398) b!213295))

(assert (= (and b!213295 res!104403) b!213294))

(assert (= (and b!213294 (not res!104396)) b!213298))

(assert (= (and b!213298 (not res!104401)) b!213293))

(assert (= (and b!213299 condMapEmpty!9338) mapIsEmpty!9338))

(assert (= (and b!213299 (not condMapEmpty!9338)) mapNonEmpty!9338))

(get-info :version)

(assert (= (and mapNonEmpty!9338 ((_ is ValueCellFull!2403) mapValue!9338)) b!213289))

(assert (= (and b!213299 ((_ is ValueCellFull!2403) mapDefault!9338)) b!213296))

(assert (= start!21192 b!213299))

(declare-fun m!241169 () Bool)

(assert (=> b!213298 m!241169))

(declare-fun m!241171 () Bool)

(assert (=> b!213298 m!241171))

(declare-fun m!241173 () Bool)

(assert (=> b!213298 m!241173))

(declare-fun m!241175 () Bool)

(assert (=> b!213293 m!241175))

(declare-fun m!241177 () Bool)

(assert (=> b!213293 m!241177))

(declare-fun m!241179 () Bool)

(assert (=> b!213293 m!241179))

(declare-fun m!241181 () Bool)

(assert (=> b!213292 m!241181))

(declare-fun m!241183 () Bool)

(assert (=> b!213295 m!241183))

(declare-fun m!241185 () Bool)

(assert (=> mapNonEmpty!9338 m!241185))

(declare-fun m!241187 () Bool)

(assert (=> b!213291 m!241187))

(declare-fun m!241189 () Bool)

(assert (=> start!21192 m!241189))

(declare-fun m!241191 () Bool)

(assert (=> start!21192 m!241191))

(declare-fun m!241193 () Bool)

(assert (=> start!21192 m!241193))

(declare-fun m!241195 () Bool)

(assert (=> b!213297 m!241195))

(declare-fun m!241197 () Bool)

(assert (=> b!213294 m!241197))

(declare-fun m!241199 () Bool)

(assert (=> b!213294 m!241199))

(declare-fun m!241201 () Bool)

(assert (=> b!213294 m!241201))

(declare-fun m!241203 () Bool)

(assert (=> b!213294 m!241203))

(declare-fun m!241205 () Bool)

(assert (=> b!213294 m!241205))

(declare-fun m!241207 () Bool)

(assert (=> b!213294 m!241207))

(declare-fun m!241209 () Bool)

(assert (=> b!213294 m!241209))

(check-sat (not b!213297) b_and!12515 (not b!213298) (not b!213294) tp_is_empty!5493 (not start!21192) (not b_next!5631) (not b!213293) (not mapNonEmpty!9338) (not b!213291) (not b!213292))
(check-sat b_and!12515 (not b_next!5631))
