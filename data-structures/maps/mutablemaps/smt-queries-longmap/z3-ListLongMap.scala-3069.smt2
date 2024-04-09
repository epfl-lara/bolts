; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43276 () Bool)

(assert start!43276)

(declare-fun b_free!12135 () Bool)

(declare-fun b_next!12135 () Bool)

(assert (=> start!43276 (= b_free!12135 (not b_next!12135))))

(declare-fun tp!42675 () Bool)

(declare-fun b_and!20905 () Bool)

(assert (=> start!43276 (= tp!42675 b_and!20905)))

(declare-fun mapNonEmpty!22168 () Bool)

(declare-fun mapRes!22168 () Bool)

(declare-fun tp!42676 () Bool)

(declare-fun e!281922 () Bool)

(assert (=> mapNonEmpty!22168 (= mapRes!22168 (and tp!42676 e!281922))))

(declare-fun mapKey!22168 () (_ BitVec 32))

(declare-datatypes ((V!19267 0))(
  ( (V!19268 (val!6871 Int)) )
))
(declare-datatypes ((ValueCell!6462 0))(
  ( (ValueCellFull!6462 (v!9156 V!19267)) (EmptyCell!6462) )
))
(declare-fun mapRest!22168 () (Array (_ BitVec 32) ValueCell!6462))

(declare-datatypes ((array!30933 0))(
  ( (array!30934 (arr!14870 (Array (_ BitVec 32) ValueCell!6462)) (size!15228 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30933)

(declare-fun mapValue!22168 () ValueCell!6462)

(assert (=> mapNonEmpty!22168 (= (arr!14870 _values!1516) (store mapRest!22168 mapKey!22168 mapValue!22168))))

(declare-fun b!479189 () Bool)

(declare-fun e!281920 () Bool)

(declare-fun tp_is_empty!13647 () Bool)

(assert (=> b!479189 (= e!281920 tp_is_empty!13647)))

(declare-fun res!285912 () Bool)

(declare-fun e!281923 () Bool)

(assert (=> start!43276 (=> (not res!285912) (not e!281923))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43276 (= res!285912 (validMask!0 mask!2352))))

(assert (=> start!43276 e!281923))

(assert (=> start!43276 true))

(assert (=> start!43276 tp_is_empty!13647))

(declare-fun e!281921 () Bool)

(declare-fun array_inv!10712 (array!30933) Bool)

(assert (=> start!43276 (and (array_inv!10712 _values!1516) e!281921)))

(assert (=> start!43276 tp!42675))

(declare-datatypes ((array!30935 0))(
  ( (array!30936 (arr!14871 (Array (_ BitVec 32) (_ BitVec 64))) (size!15229 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30935)

(declare-fun array_inv!10713 (array!30935) Bool)

(assert (=> start!43276 (array_inv!10713 _keys!1874)))

(declare-fun b!479190 () Bool)

(declare-fun res!285914 () Bool)

(assert (=> b!479190 (=> (not res!285914) (not e!281923))))

(declare-datatypes ((List!9124 0))(
  ( (Nil!9121) (Cons!9120 (h!9976 (_ BitVec 64)) (t!15338 List!9124)) )
))
(declare-fun arrayNoDuplicates!0 (array!30935 (_ BitVec 32) List!9124) Bool)

(assert (=> b!479190 (= res!285914 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9121))))

(declare-fun mapIsEmpty!22168 () Bool)

(assert (=> mapIsEmpty!22168 mapRes!22168))

(declare-fun b!479191 () Bool)

(declare-fun res!285913 () Bool)

(assert (=> b!479191 (=> (not res!285913) (not e!281923))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!479191 (= res!285913 (and (= (size!15228 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15229 _keys!1874) (size!15228 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!479192 () Bool)

(assert (=> b!479192 (= e!281922 tp_is_empty!13647)))

(declare-fun b!479193 () Bool)

(assert (=> b!479193 (= e!281921 (and e!281920 mapRes!22168))))

(declare-fun condMapEmpty!22168 () Bool)

(declare-fun mapDefault!22168 () ValueCell!6462)

(assert (=> b!479193 (= condMapEmpty!22168 (= (arr!14870 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6462)) mapDefault!22168)))))

(declare-fun b!479194 () Bool)

(declare-fun res!285915 () Bool)

(assert (=> b!479194 (=> (not res!285915) (not e!281923))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30935 (_ BitVec 32)) Bool)

(assert (=> b!479194 (= res!285915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!479195 () Bool)

(assert (=> b!479195 (= e!281923 false)))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun lt!217817 () Bool)

(declare-fun minValue!1458 () V!19267)

(declare-fun zeroValue!1458 () V!19267)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9012 0))(
  ( (tuple2!9013 (_1!4516 (_ BitVec 64)) (_2!4516 V!19267)) )
))
(declare-datatypes ((List!9125 0))(
  ( (Nil!9122) (Cons!9121 (h!9977 tuple2!9012) (t!15339 List!9125)) )
))
(declare-datatypes ((ListLongMap!7939 0))(
  ( (ListLongMap!7940 (toList!3985 List!9125)) )
))
(declare-fun contains!2592 (ListLongMap!7939 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2277 (array!30935 array!30933 (_ BitVec 32) (_ BitVec 32) V!19267 V!19267 (_ BitVec 32) Int) ListLongMap!7939)

(assert (=> b!479195 (= lt!217817 (contains!2592 (getCurrentListMap!2277 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(assert (= (and start!43276 res!285912) b!479191))

(assert (= (and b!479191 res!285913) b!479194))

(assert (= (and b!479194 res!285915) b!479190))

(assert (= (and b!479190 res!285914) b!479195))

(assert (= (and b!479193 condMapEmpty!22168) mapIsEmpty!22168))

(assert (= (and b!479193 (not condMapEmpty!22168)) mapNonEmpty!22168))

(get-info :version)

(assert (= (and mapNonEmpty!22168 ((_ is ValueCellFull!6462) mapValue!22168)) b!479192))

(assert (= (and b!479193 ((_ is ValueCellFull!6462) mapDefault!22168)) b!479189))

(assert (= start!43276 b!479193))

(declare-fun m!461183 () Bool)

(assert (=> b!479190 m!461183))

(declare-fun m!461185 () Bool)

(assert (=> b!479195 m!461185))

(assert (=> b!479195 m!461185))

(declare-fun m!461187 () Bool)

(assert (=> b!479195 m!461187))

(declare-fun m!461189 () Bool)

(assert (=> mapNonEmpty!22168 m!461189))

(declare-fun m!461191 () Bool)

(assert (=> b!479194 m!461191))

(declare-fun m!461193 () Bool)

(assert (=> start!43276 m!461193))

(declare-fun m!461195 () Bool)

(assert (=> start!43276 m!461195))

(declare-fun m!461197 () Bool)

(assert (=> start!43276 m!461197))

(check-sat (not b!479194) tp_is_empty!13647 (not mapNonEmpty!22168) (not start!43276) (not b!479190) (not b_next!12135) b_and!20905 (not b!479195))
(check-sat b_and!20905 (not b_next!12135))
