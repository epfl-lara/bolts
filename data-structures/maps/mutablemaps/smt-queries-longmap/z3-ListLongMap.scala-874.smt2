; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20354 () Bool)

(assert start!20354)

(declare-fun b_free!5001 () Bool)

(declare-fun b_next!5001 () Bool)

(assert (=> start!20354 (= b_free!5001 (not b_next!5001))))

(declare-fun tp!18035 () Bool)

(declare-fun b_and!11765 () Bool)

(assert (=> start!20354 (= tp!18035 b_and!11765)))

(declare-fun b!200602 () Bool)

(declare-fun e!131540 () Bool)

(declare-fun e!131544 () Bool)

(declare-fun mapRes!8354 () Bool)

(assert (=> b!200602 (= e!131540 (and e!131544 mapRes!8354))))

(declare-fun condMapEmpty!8354 () Bool)

(declare-datatypes ((V!6123 0))(
  ( (V!6124 (val!2473 Int)) )
))
(declare-datatypes ((ValueCell!2085 0))(
  ( (ValueCellFull!2085 (v!4439 V!6123)) (EmptyCell!2085) )
))
(declare-datatypes ((array!8944 0))(
  ( (array!8945 (arr!4222 (Array (_ BitVec 32) ValueCell!2085)) (size!4547 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8944)

(declare-fun mapDefault!8354 () ValueCell!2085)

(assert (=> b!200602 (= condMapEmpty!8354 (= (arr!4222 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2085)) mapDefault!8354)))))

(declare-fun b!200603 () Bool)

(declare-fun e!131543 () Bool)

(declare-fun e!131541 () Bool)

(assert (=> b!200603 (= e!131543 (not e!131541))))

(declare-fun res!95655 () Bool)

(assert (=> b!200603 (=> res!95655 e!131541)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!200603 (= res!95655 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6123)

(declare-datatypes ((array!8946 0))(
  ( (array!8947 (arr!4223 (Array (_ BitVec 32) (_ BitVec 64))) (size!4548 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8946)

(declare-fun defaultEntry!657 () Int)

(declare-datatypes ((tuple2!3734 0))(
  ( (tuple2!3735 (_1!1877 (_ BitVec 64)) (_2!1877 V!6123)) )
))
(declare-datatypes ((List!2675 0))(
  ( (Nil!2672) (Cons!2671 (h!3313 tuple2!3734) (t!7614 List!2675)) )
))
(declare-datatypes ((ListLongMap!2661 0))(
  ( (ListLongMap!2662 (toList!1346 List!2675)) )
))
(declare-fun lt!99336 () ListLongMap!2661)

(declare-fun minValue!615 () V!6123)

(declare-fun getCurrentListMap!931 (array!8946 array!8944 (_ BitVec 32) (_ BitVec 32) V!6123 V!6123 (_ BitVec 32) Int) ListLongMap!2661)

(assert (=> b!200603 (= lt!99336 (getCurrentListMap!931 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99335 () array!8944)

(declare-fun lt!99334 () ListLongMap!2661)

(assert (=> b!200603 (= lt!99334 (getCurrentListMap!931 _keys!825 lt!99335 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99347 () ListLongMap!2661)

(declare-fun lt!99340 () ListLongMap!2661)

(assert (=> b!200603 (and (= lt!99347 lt!99340) (= lt!99340 lt!99347))))

(declare-fun lt!99338 () ListLongMap!2661)

(declare-fun lt!99337 () tuple2!3734)

(declare-fun +!363 (ListLongMap!2661 tuple2!3734) ListLongMap!2661)

(assert (=> b!200603 (= lt!99340 (+!363 lt!99338 lt!99337))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun v!520 () V!6123)

(assert (=> b!200603 (= lt!99337 (tuple2!3735 k0!843 v!520))))

(declare-datatypes ((Unit!6033 0))(
  ( (Unit!6034) )
))
(declare-fun lt!99349 () Unit!6033)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!44 (array!8946 array!8944 (_ BitVec 32) (_ BitVec 32) V!6123 V!6123 (_ BitVec 32) (_ BitVec 64) V!6123 (_ BitVec 32) Int) Unit!6033)

(assert (=> b!200603 (= lt!99349 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!44 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!302 (array!8946 array!8944 (_ BitVec 32) (_ BitVec 32) V!6123 V!6123 (_ BitVec 32) Int) ListLongMap!2661)

(assert (=> b!200603 (= lt!99347 (getCurrentListMapNoExtraKeys!302 _keys!825 lt!99335 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200603 (= lt!99335 (array!8945 (store (arr!4222 _values!649) i!601 (ValueCellFull!2085 v!520)) (size!4547 _values!649)))))

(assert (=> b!200603 (= lt!99338 (getCurrentListMapNoExtraKeys!302 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!200604 () Bool)

(declare-fun res!95659 () Bool)

(assert (=> b!200604 (=> (not res!95659) (not e!131543))))

(declare-datatypes ((List!2676 0))(
  ( (Nil!2673) (Cons!2672 (h!3314 (_ BitVec 64)) (t!7615 List!2676)) )
))
(declare-fun arrayNoDuplicates!0 (array!8946 (_ BitVec 32) List!2676) Bool)

(assert (=> b!200604 (= res!95659 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2673))))

(declare-fun res!95653 () Bool)

(assert (=> start!20354 (=> (not res!95653) (not e!131543))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20354 (= res!95653 (validMask!0 mask!1149))))

(assert (=> start!20354 e!131543))

(declare-fun array_inv!2769 (array!8944) Bool)

(assert (=> start!20354 (and (array_inv!2769 _values!649) e!131540)))

(assert (=> start!20354 true))

(declare-fun tp_is_empty!4857 () Bool)

(assert (=> start!20354 tp_is_empty!4857))

(declare-fun array_inv!2770 (array!8946) Bool)

(assert (=> start!20354 (array_inv!2770 _keys!825)))

(assert (=> start!20354 tp!18035))

(declare-fun b!200605 () Bool)

(declare-fun e!131542 () Bool)

(assert (=> b!200605 (= e!131542 true)))

(declare-fun lt!99342 () tuple2!3734)

(declare-fun lt!99341 () ListLongMap!2661)

(declare-fun lt!99348 () ListLongMap!2661)

(assert (=> b!200605 (= (+!363 lt!99348 lt!99342) (+!363 lt!99341 lt!99337))))

(declare-fun lt!99344 () ListLongMap!2661)

(declare-fun lt!99339 () Unit!6033)

(declare-fun addCommutativeForDiffKeys!85 (ListLongMap!2661 (_ BitVec 64) V!6123 (_ BitVec 64) V!6123) Unit!6033)

(assert (=> b!200605 (= lt!99339 (addCommutativeForDiffKeys!85 lt!99344 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapNonEmpty!8354 () Bool)

(declare-fun tp!18034 () Bool)

(declare-fun e!131545 () Bool)

(assert (=> mapNonEmpty!8354 (= mapRes!8354 (and tp!18034 e!131545))))

(declare-fun mapValue!8354 () ValueCell!2085)

(declare-fun mapRest!8354 () (Array (_ BitVec 32) ValueCell!2085))

(declare-fun mapKey!8354 () (_ BitVec 32))

(assert (=> mapNonEmpty!8354 (= (arr!4222 _values!649) (store mapRest!8354 mapKey!8354 mapValue!8354))))

(declare-fun b!200606 () Bool)

(declare-fun res!95657 () Bool)

(assert (=> b!200606 (=> (not res!95657) (not e!131543))))

(assert (=> b!200606 (= res!95657 (= (select (arr!4223 _keys!825) i!601) k0!843))))

(declare-fun b!200607 () Bool)

(assert (=> b!200607 (= e!131544 tp_is_empty!4857)))

(declare-fun b!200608 () Bool)

(declare-fun res!95651 () Bool)

(assert (=> b!200608 (=> (not res!95651) (not e!131543))))

(assert (=> b!200608 (= res!95651 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4548 _keys!825))))))

(declare-fun b!200609 () Bool)

(assert (=> b!200609 (= e!131541 e!131542)))

(declare-fun res!95658 () Bool)

(assert (=> b!200609 (=> res!95658 e!131542)))

(assert (=> b!200609 (= res!95658 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!99345 () ListLongMap!2661)

(assert (=> b!200609 (= lt!99345 lt!99348)))

(assert (=> b!200609 (= lt!99348 (+!363 lt!99344 lt!99337))))

(declare-fun lt!99346 () Unit!6033)

(assert (=> b!200609 (= lt!99346 (addCommutativeForDiffKeys!85 lt!99338 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (=> b!200609 (= lt!99334 (+!363 lt!99345 lt!99342))))

(declare-fun lt!99343 () tuple2!3734)

(assert (=> b!200609 (= lt!99345 (+!363 lt!99340 lt!99343))))

(assert (=> b!200609 (= lt!99336 lt!99341)))

(assert (=> b!200609 (= lt!99341 (+!363 lt!99344 lt!99342))))

(assert (=> b!200609 (= lt!99344 (+!363 lt!99338 lt!99343))))

(assert (=> b!200609 (= lt!99334 (+!363 (+!363 lt!99347 lt!99343) lt!99342))))

(assert (=> b!200609 (= lt!99342 (tuple2!3735 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!200609 (= lt!99343 (tuple2!3735 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!200610 () Bool)

(declare-fun res!95652 () Bool)

(assert (=> b!200610 (=> (not res!95652) (not e!131543))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!200610 (= res!95652 (validKeyInArray!0 k0!843))))

(declare-fun b!200611 () Bool)

(declare-fun res!95654 () Bool)

(assert (=> b!200611 (=> (not res!95654) (not e!131543))))

(assert (=> b!200611 (= res!95654 (and (= (size!4547 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4548 _keys!825) (size!4547 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!200612 () Bool)

(declare-fun res!95656 () Bool)

(assert (=> b!200612 (=> (not res!95656) (not e!131543))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8946 (_ BitVec 32)) Bool)

(assert (=> b!200612 (= res!95656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!200613 () Bool)

(assert (=> b!200613 (= e!131545 tp_is_empty!4857)))

(declare-fun mapIsEmpty!8354 () Bool)

(assert (=> mapIsEmpty!8354 mapRes!8354))

(assert (= (and start!20354 res!95653) b!200611))

(assert (= (and b!200611 res!95654) b!200612))

(assert (= (and b!200612 res!95656) b!200604))

(assert (= (and b!200604 res!95659) b!200608))

(assert (= (and b!200608 res!95651) b!200610))

(assert (= (and b!200610 res!95652) b!200606))

(assert (= (and b!200606 res!95657) b!200603))

(assert (= (and b!200603 (not res!95655)) b!200609))

(assert (= (and b!200609 (not res!95658)) b!200605))

(assert (= (and b!200602 condMapEmpty!8354) mapIsEmpty!8354))

(assert (= (and b!200602 (not condMapEmpty!8354)) mapNonEmpty!8354))

(get-info :version)

(assert (= (and mapNonEmpty!8354 ((_ is ValueCellFull!2085) mapValue!8354)) b!200613))

(assert (= (and b!200602 ((_ is ValueCellFull!2085) mapDefault!8354)) b!200607))

(assert (= start!20354 b!200602))

(declare-fun m!227197 () Bool)

(assert (=> mapNonEmpty!8354 m!227197))

(declare-fun m!227199 () Bool)

(assert (=> b!200603 m!227199))

(declare-fun m!227201 () Bool)

(assert (=> b!200603 m!227201))

(declare-fun m!227203 () Bool)

(assert (=> b!200603 m!227203))

(declare-fun m!227205 () Bool)

(assert (=> b!200603 m!227205))

(declare-fun m!227207 () Bool)

(assert (=> b!200603 m!227207))

(declare-fun m!227209 () Bool)

(assert (=> b!200603 m!227209))

(declare-fun m!227211 () Bool)

(assert (=> b!200603 m!227211))

(declare-fun m!227213 () Bool)

(assert (=> start!20354 m!227213))

(declare-fun m!227215 () Bool)

(assert (=> start!20354 m!227215))

(declare-fun m!227217 () Bool)

(assert (=> start!20354 m!227217))

(declare-fun m!227219 () Bool)

(assert (=> b!200612 m!227219))

(declare-fun m!227221 () Bool)

(assert (=> b!200609 m!227221))

(declare-fun m!227223 () Bool)

(assert (=> b!200609 m!227223))

(declare-fun m!227225 () Bool)

(assert (=> b!200609 m!227225))

(declare-fun m!227227 () Bool)

(assert (=> b!200609 m!227227))

(declare-fun m!227229 () Bool)

(assert (=> b!200609 m!227229))

(declare-fun m!227231 () Bool)

(assert (=> b!200609 m!227231))

(declare-fun m!227233 () Bool)

(assert (=> b!200609 m!227233))

(assert (=> b!200609 m!227221))

(declare-fun m!227235 () Bool)

(assert (=> b!200609 m!227235))

(declare-fun m!227237 () Bool)

(assert (=> b!200606 m!227237))

(declare-fun m!227239 () Bool)

(assert (=> b!200604 m!227239))

(declare-fun m!227241 () Bool)

(assert (=> b!200610 m!227241))

(declare-fun m!227243 () Bool)

(assert (=> b!200605 m!227243))

(declare-fun m!227245 () Bool)

(assert (=> b!200605 m!227245))

(declare-fun m!227247 () Bool)

(assert (=> b!200605 m!227247))

(check-sat (not b!200609) tp_is_empty!4857 (not mapNonEmpty!8354) b_and!11765 (not b!200604) (not start!20354) (not b_next!5001) (not b!200610) (not b!200603) (not b!200612) (not b!200605))
(check-sat b_and!11765 (not b_next!5001))
