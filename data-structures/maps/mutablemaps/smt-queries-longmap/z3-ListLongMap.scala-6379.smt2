; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82040 () Bool)

(assert start!82040)

(declare-fun mapNonEmpty!33538 () Bool)

(declare-fun mapRes!33538 () Bool)

(declare-fun tp!64117 () Bool)

(declare-fun e!538937 () Bool)

(assert (=> mapNonEmpty!33538 (= mapRes!33538 (and tp!64117 e!538937))))

(declare-datatypes ((V!33051 0))(
  ( (V!33052 (val!10576 Int)) )
))
(declare-datatypes ((ValueCell!10044 0))(
  ( (ValueCellFull!10044 (v!13131 V!33051)) (EmptyCell!10044) )
))
(declare-datatypes ((array!58221 0))(
  ( (array!58222 (arr!27986 (Array (_ BitVec 32) ValueCell!10044)) (size!28466 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58221)

(declare-fun mapKey!33538 () (_ BitVec 32))

(declare-fun mapValue!33538 () ValueCell!10044)

(declare-fun mapRest!33538 () (Array (_ BitVec 32) ValueCell!10044))

(assert (=> mapNonEmpty!33538 (= (arr!27986 _values!1197) (store mapRest!33538 mapKey!33538 mapValue!33538))))

(declare-fun b!956341 () Bool)

(declare-fun e!538939 () Bool)

(declare-fun e!538938 () Bool)

(assert (=> b!956341 (= e!538939 (and e!538938 mapRes!33538))))

(declare-fun condMapEmpty!33538 () Bool)

(declare-fun mapDefault!33538 () ValueCell!10044)

(assert (=> b!956341 (= condMapEmpty!33538 (= (arr!27986 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!10044)) mapDefault!33538)))))

(declare-fun b!956342 () Bool)

(declare-fun res!640439 () Bool)

(declare-fun e!538941 () Bool)

(assert (=> b!956342 (=> (not res!640439) (not e!538941))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((array!58223 0))(
  ( (array!58224 (arr!27987 (Array (_ BitVec 32) (_ BitVec 64))) (size!28467 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58223)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!956342 (= res!640439 (and (= (size!28466 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28467 _keys!1441) (size!28466 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun res!640441 () Bool)

(assert (=> start!82040 (=> (not res!640441) (not e!538941))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82040 (= res!640441 (validMask!0 mask!1823))))

(assert (=> start!82040 e!538941))

(assert (=> start!82040 true))

(declare-fun array_inv!21655 (array!58221) Bool)

(assert (=> start!82040 (and (array_inv!21655 _values!1197) e!538939)))

(declare-fun array_inv!21656 (array!58223) Bool)

(assert (=> start!82040 (array_inv!21656 _keys!1441)))

(declare-fun b!956343 () Bool)

(declare-fun tp_is_empty!21051 () Bool)

(assert (=> b!956343 (= e!538937 tp_is_empty!21051)))

(declare-fun b!956344 () Bool)

(declare-fun res!640440 () Bool)

(assert (=> b!956344 (=> (not res!640440) (not e!538941))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58223 (_ BitVec 32)) Bool)

(assert (=> b!956344 (= res!640440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!956345 () Bool)

(assert (=> b!956345 (= e!538941 false)))

(declare-fun lt!430099 () Bool)

(declare-datatypes ((List!19628 0))(
  ( (Nil!19625) (Cons!19624 (h!20786 (_ BitVec 64)) (t!27997 List!19628)) )
))
(declare-fun arrayNoDuplicates!0 (array!58223 (_ BitVec 32) List!19628) Bool)

(assert (=> b!956345 (= lt!430099 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19625))))

(declare-fun b!956346 () Bool)

(assert (=> b!956346 (= e!538938 tp_is_empty!21051)))

(declare-fun mapIsEmpty!33538 () Bool)

(assert (=> mapIsEmpty!33538 mapRes!33538))

(assert (= (and start!82040 res!640441) b!956342))

(assert (= (and b!956342 res!640439) b!956344))

(assert (= (and b!956344 res!640440) b!956345))

(assert (= (and b!956341 condMapEmpty!33538) mapIsEmpty!33538))

(assert (= (and b!956341 (not condMapEmpty!33538)) mapNonEmpty!33538))

(get-info :version)

(assert (= (and mapNonEmpty!33538 ((_ is ValueCellFull!10044) mapValue!33538)) b!956343))

(assert (= (and b!956341 ((_ is ValueCellFull!10044) mapDefault!33538)) b!956346))

(assert (= start!82040 b!956341))

(declare-fun m!887709 () Bool)

(assert (=> mapNonEmpty!33538 m!887709))

(declare-fun m!887711 () Bool)

(assert (=> start!82040 m!887711))

(declare-fun m!887713 () Bool)

(assert (=> start!82040 m!887713))

(declare-fun m!887715 () Bool)

(assert (=> start!82040 m!887715))

(declare-fun m!887717 () Bool)

(assert (=> b!956344 m!887717))

(declare-fun m!887719 () Bool)

(assert (=> b!956345 m!887719))

(check-sat (not mapNonEmpty!33538) (not start!82040) tp_is_empty!21051 (not b!956345) (not b!956344))
(check-sat)
