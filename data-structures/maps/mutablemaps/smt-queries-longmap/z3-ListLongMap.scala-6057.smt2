; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78418 () Bool)

(assert start!78418)

(declare-fun b_free!16755 () Bool)

(declare-fun b_next!16755 () Bool)

(assert (=> start!78418 (= b_free!16755 (not b_next!16755))))

(declare-fun tp!58553 () Bool)

(declare-fun b_and!27393 () Bool)

(assert (=> start!78418 (= tp!58553 b_and!27393)))

(declare-fun b!914308 () Bool)

(declare-fun res!616727 () Bool)

(declare-fun e!512943 () Bool)

(assert (=> b!914308 (=> (not res!616727) (not e!512943))))

(declare-datatypes ((array!54352 0))(
  ( (array!54353 (arr!26123 (Array (_ BitVec 32) (_ BitVec 64))) (size!26583 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54352)

(declare-datatypes ((List!18462 0))(
  ( (Nil!18459) (Cons!18458 (h!19604 (_ BitVec 64)) (t!26081 List!18462)) )
))
(declare-fun arrayNoDuplicates!0 (array!54352 (_ BitVec 32) List!18462) Bool)

(assert (=> b!914308 (= res!616727 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18459))))

(declare-fun b!914309 () Bool)

(declare-fun e!512947 () Bool)

(declare-fun tp_is_empty!19173 () Bool)

(assert (=> b!914309 (= e!512947 tp_is_empty!19173)))

(declare-fun res!616728 () Bool)

(assert (=> start!78418 (=> (not res!616728) (not e!512943))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78418 (= res!616728 (validMask!0 mask!1756))))

(assert (=> start!78418 e!512943))

(declare-datatypes ((V!30529 0))(
  ( (V!30530 (val!9637 Int)) )
))
(declare-datatypes ((ValueCell!9105 0))(
  ( (ValueCellFull!9105 (v!12153 V!30529)) (EmptyCell!9105) )
))
(declare-datatypes ((array!54354 0))(
  ( (array!54355 (arr!26124 (Array (_ BitVec 32) ValueCell!9105)) (size!26584 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54354)

(declare-fun e!512944 () Bool)

(declare-fun array_inv!20390 (array!54354) Bool)

(assert (=> start!78418 (and (array_inv!20390 _values!1152) e!512944)))

(assert (=> start!78418 tp!58553))

(assert (=> start!78418 true))

(assert (=> start!78418 tp_is_empty!19173))

(declare-fun array_inv!20391 (array!54352) Bool)

(assert (=> start!78418 (array_inv!20391 _keys!1386)))

(declare-fun mapIsEmpty!30498 () Bool)

(declare-fun mapRes!30498 () Bool)

(assert (=> mapIsEmpty!30498 mapRes!30498))

(declare-fun b!914310 () Bool)

(assert (=> b!914310 (= e!512944 (and e!512947 mapRes!30498))))

(declare-fun condMapEmpty!30498 () Bool)

(declare-fun mapDefault!30498 () ValueCell!9105)

(assert (=> b!914310 (= condMapEmpty!30498 (= (arr!26124 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9105)) mapDefault!30498)))))

(declare-fun b!914311 () Bool)

(declare-fun e!512946 () Bool)

(assert (=> b!914311 (= e!512946 tp_is_empty!19173)))

(declare-fun mapNonEmpty!30498 () Bool)

(declare-fun tp!58554 () Bool)

(assert (=> mapNonEmpty!30498 (= mapRes!30498 (and tp!58554 e!512946))))

(declare-fun mapKey!30498 () (_ BitVec 32))

(declare-fun mapValue!30498 () ValueCell!9105)

(declare-fun mapRest!30498 () (Array (_ BitVec 32) ValueCell!9105))

(assert (=> mapNonEmpty!30498 (= (arr!26124 _values!1152) (store mapRest!30498 mapKey!30498 mapValue!30498))))

(declare-fun b!914312 () Bool)

(declare-fun res!616726 () Bool)

(assert (=> b!914312 (=> (not res!616726) (not e!512943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54352 (_ BitVec 32)) Bool)

(assert (=> b!914312 (= res!616726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!914313 () Bool)

(assert (=> b!914313 (= e!512943 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30529)

(declare-fun lt!411431 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30529)

(declare-datatypes ((tuple2!12624 0))(
  ( (tuple2!12625 (_1!6322 (_ BitVec 64)) (_2!6322 V!30529)) )
))
(declare-datatypes ((List!18463 0))(
  ( (Nil!18460) (Cons!18459 (h!19605 tuple2!12624) (t!26082 List!18463)) )
))
(declare-datatypes ((ListLongMap!11335 0))(
  ( (ListLongMap!11336 (toList!5683 List!18463)) )
))
(declare-fun contains!4698 (ListLongMap!11335 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2912 (array!54352 array!54354 (_ BitVec 32) (_ BitVec 32) V!30529 V!30529 (_ BitVec 32) Int) ListLongMap!11335)

(assert (=> b!914313 (= lt!411431 (contains!4698 (getCurrentListMap!2912 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!914314 () Bool)

(declare-fun res!616725 () Bool)

(assert (=> b!914314 (=> (not res!616725) (not e!512943))))

(assert (=> b!914314 (= res!616725 (and (= (size!26584 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26583 _keys!1386) (size!26584 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(assert (= (and start!78418 res!616728) b!914314))

(assert (= (and b!914314 res!616725) b!914312))

(assert (= (and b!914312 res!616726) b!914308))

(assert (= (and b!914308 res!616727) b!914313))

(assert (= (and b!914310 condMapEmpty!30498) mapIsEmpty!30498))

(assert (= (and b!914310 (not condMapEmpty!30498)) mapNonEmpty!30498))

(get-info :version)

(assert (= (and mapNonEmpty!30498 ((_ is ValueCellFull!9105) mapValue!30498)) b!914311))

(assert (= (and b!914310 ((_ is ValueCellFull!9105) mapDefault!30498)) b!914309))

(assert (= start!78418 b!914310))

(declare-fun m!849147 () Bool)

(assert (=> b!914312 m!849147))

(declare-fun m!849149 () Bool)

(assert (=> b!914308 m!849149))

(declare-fun m!849151 () Bool)

(assert (=> start!78418 m!849151))

(declare-fun m!849153 () Bool)

(assert (=> start!78418 m!849153))

(declare-fun m!849155 () Bool)

(assert (=> start!78418 m!849155))

(declare-fun m!849157 () Bool)

(assert (=> b!914313 m!849157))

(assert (=> b!914313 m!849157))

(declare-fun m!849159 () Bool)

(assert (=> b!914313 m!849159))

(declare-fun m!849161 () Bool)

(assert (=> mapNonEmpty!30498 m!849161))

(check-sat tp_is_empty!19173 (not mapNonEmpty!30498) (not start!78418) (not b!914313) (not b!914308) (not b_next!16755) b_and!27393 (not b!914312))
(check-sat b_and!27393 (not b_next!16755))
