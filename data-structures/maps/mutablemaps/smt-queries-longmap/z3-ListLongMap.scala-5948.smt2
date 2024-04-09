; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77544 () Bool)

(assert start!77544)

(declare-fun b_free!16101 () Bool)

(declare-fun b_next!16101 () Bool)

(assert (=> start!77544 (= b_free!16101 (not b_next!16101))))

(declare-fun tp!56565 () Bool)

(declare-fun b_and!26485 () Bool)

(assert (=> start!77544 (= tp!56565 b_and!26485)))

(declare-fun b!903044 () Bool)

(declare-fun e!505955 () Bool)

(assert (=> b!903044 (= e!505955 false)))

(declare-datatypes ((V!29657 0))(
  ( (V!29658 (val!9310 Int)) )
))
(declare-datatypes ((ValueCell!8778 0))(
  ( (ValueCellFull!8778 (v!11815 V!29657)) (EmptyCell!8778) )
))
(declare-datatypes ((array!53084 0))(
  ( (array!53085 (arr!25497 (Array (_ BitVec 32) ValueCell!8778)) (size!25957 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53084)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29657)

(declare-datatypes ((array!53086 0))(
  ( (array!53087 (arr!25498 (Array (_ BitVec 32) (_ BitVec 64))) (size!25958 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53086)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun lt!407918 () Bool)

(declare-fun minValue!1094 () V!29657)

(declare-datatypes ((tuple2!12110 0))(
  ( (tuple2!12111 (_1!6065 (_ BitVec 64)) (_2!6065 V!29657)) )
))
(declare-datatypes ((List!17987 0))(
  ( (Nil!17984) (Cons!17983 (h!19129 tuple2!12110) (t!25378 List!17987)) )
))
(declare-datatypes ((ListLongMap!10821 0))(
  ( (ListLongMap!10822 (toList!5426 List!17987)) )
))
(declare-fun contains!4439 (ListLongMap!10821 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2663 (array!53086 array!53084 (_ BitVec 32) (_ BitVec 32) V!29657 V!29657 (_ BitVec 32) Int) ListLongMap!10821)

(assert (=> b!903044 (= lt!407918 (contains!4439 (getCurrentListMap!2663 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun res!609417 () Bool)

(assert (=> start!77544 (=> (not res!609417) (not e!505955))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77544 (= res!609417 (validMask!0 mask!1756))))

(assert (=> start!77544 e!505955))

(declare-fun e!505956 () Bool)

(declare-fun array_inv!19960 (array!53084) Bool)

(assert (=> start!77544 (and (array_inv!19960 _values!1152) e!505956)))

(assert (=> start!77544 tp!56565))

(assert (=> start!77544 true))

(declare-fun tp_is_empty!18519 () Bool)

(assert (=> start!77544 tp_is_empty!18519))

(declare-fun array_inv!19961 (array!53086) Bool)

(assert (=> start!77544 (array_inv!19961 _keys!1386)))

(declare-fun b!903045 () Bool)

(declare-fun e!505957 () Bool)

(declare-fun mapRes!29491 () Bool)

(assert (=> b!903045 (= e!505956 (and e!505957 mapRes!29491))))

(declare-fun condMapEmpty!29491 () Bool)

(declare-fun mapDefault!29491 () ValueCell!8778)

(assert (=> b!903045 (= condMapEmpty!29491 (= (arr!25497 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8778)) mapDefault!29491)))))

(declare-fun mapIsEmpty!29491 () Bool)

(assert (=> mapIsEmpty!29491 mapRes!29491))

(declare-fun b!903046 () Bool)

(declare-fun e!505954 () Bool)

(assert (=> b!903046 (= e!505954 tp_is_empty!18519)))

(declare-fun mapNonEmpty!29491 () Bool)

(declare-fun tp!56566 () Bool)

(assert (=> mapNonEmpty!29491 (= mapRes!29491 (and tp!56566 e!505954))))

(declare-fun mapValue!29491 () ValueCell!8778)

(declare-fun mapKey!29491 () (_ BitVec 32))

(declare-fun mapRest!29491 () (Array (_ BitVec 32) ValueCell!8778))

(assert (=> mapNonEmpty!29491 (= (arr!25497 _values!1152) (store mapRest!29491 mapKey!29491 mapValue!29491))))

(declare-fun b!903047 () Bool)

(declare-fun res!609414 () Bool)

(assert (=> b!903047 (=> (not res!609414) (not e!505955))))

(assert (=> b!903047 (= res!609414 (and (= (size!25957 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25958 _keys!1386) (size!25957 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!903048 () Bool)

(assert (=> b!903048 (= e!505957 tp_is_empty!18519)))

(declare-fun b!903049 () Bool)

(declare-fun res!609415 () Bool)

(assert (=> b!903049 (=> (not res!609415) (not e!505955))))

(declare-datatypes ((List!17988 0))(
  ( (Nil!17985) (Cons!17984 (h!19130 (_ BitVec 64)) (t!25379 List!17988)) )
))
(declare-fun arrayNoDuplicates!0 (array!53086 (_ BitVec 32) List!17988) Bool)

(assert (=> b!903049 (= res!609415 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17985))))

(declare-fun b!903050 () Bool)

(declare-fun res!609416 () Bool)

(assert (=> b!903050 (=> (not res!609416) (not e!505955))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53086 (_ BitVec 32)) Bool)

(assert (=> b!903050 (= res!609416 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(assert (= (and start!77544 res!609417) b!903047))

(assert (= (and b!903047 res!609414) b!903050))

(assert (= (and b!903050 res!609416) b!903049))

(assert (= (and b!903049 res!609415) b!903044))

(assert (= (and b!903045 condMapEmpty!29491) mapIsEmpty!29491))

(assert (= (and b!903045 (not condMapEmpty!29491)) mapNonEmpty!29491))

(get-info :version)

(assert (= (and mapNonEmpty!29491 ((_ is ValueCellFull!8778) mapValue!29491)) b!903046))

(assert (= (and b!903045 ((_ is ValueCellFull!8778) mapDefault!29491)) b!903048))

(assert (= start!77544 b!903045))

(declare-fun m!838893 () Bool)

(assert (=> mapNonEmpty!29491 m!838893))

(declare-fun m!838895 () Bool)

(assert (=> b!903050 m!838895))

(declare-fun m!838897 () Bool)

(assert (=> b!903044 m!838897))

(assert (=> b!903044 m!838897))

(declare-fun m!838899 () Bool)

(assert (=> b!903044 m!838899))

(declare-fun m!838901 () Bool)

(assert (=> b!903049 m!838901))

(declare-fun m!838903 () Bool)

(assert (=> start!77544 m!838903))

(declare-fun m!838905 () Bool)

(assert (=> start!77544 m!838905))

(declare-fun m!838907 () Bool)

(assert (=> start!77544 m!838907))

(check-sat (not b_next!16101) (not b!903050) (not start!77544) (not mapNonEmpty!29491) (not b!903044) (not b!903049) tp_is_empty!18519 b_and!26485)
(check-sat b_and!26485 (not b_next!16101))
