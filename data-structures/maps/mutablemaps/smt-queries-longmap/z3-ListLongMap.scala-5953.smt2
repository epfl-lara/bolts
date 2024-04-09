; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77574 () Bool)

(assert start!77574)

(declare-fun b_free!16131 () Bool)

(declare-fun b_next!16131 () Bool)

(assert (=> start!77574 (= b_free!16131 (not b_next!16131))))

(declare-fun tp!56655 () Bool)

(declare-fun b_and!26515 () Bool)

(assert (=> start!77574 (= tp!56655 b_and!26515)))

(declare-fun b!903359 () Bool)

(declare-fun e!506183 () Bool)

(declare-fun e!506179 () Bool)

(declare-fun mapRes!29536 () Bool)

(assert (=> b!903359 (= e!506183 (and e!506179 mapRes!29536))))

(declare-fun condMapEmpty!29536 () Bool)

(declare-datatypes ((V!29697 0))(
  ( (V!29698 (val!9325 Int)) )
))
(declare-datatypes ((ValueCell!8793 0))(
  ( (ValueCellFull!8793 (v!11830 V!29697)) (EmptyCell!8793) )
))
(declare-datatypes ((array!53138 0))(
  ( (array!53139 (arr!25524 (Array (_ BitVec 32) ValueCell!8793)) (size!25984 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53138)

(declare-fun mapDefault!29536 () ValueCell!8793)

(assert (=> b!903359 (= condMapEmpty!29536 (= (arr!25524 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8793)) mapDefault!29536)))))

(declare-fun b!903360 () Bool)

(declare-fun res!609595 () Bool)

(declare-fun e!506182 () Bool)

(assert (=> b!903360 (=> (not res!609595) (not e!506182))))

(declare-datatypes ((array!53140 0))(
  ( (array!53141 (arr!25525 (Array (_ BitVec 32) (_ BitVec 64))) (size!25985 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53140)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53140 (_ BitVec 32)) Bool)

(assert (=> b!903360 (= res!609595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!903361 () Bool)

(declare-fun res!609597 () Bool)

(assert (=> b!903361 (=> (not res!609597) (not e!506182))))

(declare-datatypes ((List!18005 0))(
  ( (Nil!18002) (Cons!18001 (h!19147 (_ BitVec 64)) (t!25396 List!18005)) )
))
(declare-fun arrayNoDuplicates!0 (array!53140 (_ BitVec 32) List!18005) Bool)

(assert (=> b!903361 (= res!609597 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18002))))

(declare-fun b!903362 () Bool)

(declare-fun res!609596 () Bool)

(assert (=> b!903362 (=> (not res!609596) (not e!506182))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!903362 (= res!609596 (and (= (size!25984 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25985 _keys!1386) (size!25984 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!29536 () Bool)

(assert (=> mapIsEmpty!29536 mapRes!29536))

(declare-fun res!609594 () Bool)

(assert (=> start!77574 (=> (not res!609594) (not e!506182))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77574 (= res!609594 (validMask!0 mask!1756))))

(assert (=> start!77574 e!506182))

(declare-fun array_inv!19976 (array!53138) Bool)

(assert (=> start!77574 (and (array_inv!19976 _values!1152) e!506183)))

(assert (=> start!77574 tp!56655))

(assert (=> start!77574 true))

(declare-fun tp_is_empty!18549 () Bool)

(assert (=> start!77574 tp_is_empty!18549))

(declare-fun array_inv!19977 (array!53140) Bool)

(assert (=> start!77574 (array_inv!19977 _keys!1386)))

(declare-fun b!903363 () Bool)

(declare-fun e!506180 () Bool)

(assert (=> b!903363 (= e!506180 tp_is_empty!18549)))

(declare-fun b!903364 () Bool)

(assert (=> b!903364 (= e!506182 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29697)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun lt!407963 () Bool)

(declare-fun minValue!1094 () V!29697)

(declare-datatypes ((tuple2!12128 0))(
  ( (tuple2!12129 (_1!6074 (_ BitVec 64)) (_2!6074 V!29697)) )
))
(declare-datatypes ((List!18006 0))(
  ( (Nil!18003) (Cons!18002 (h!19148 tuple2!12128) (t!25397 List!18006)) )
))
(declare-datatypes ((ListLongMap!10839 0))(
  ( (ListLongMap!10840 (toList!5435 List!18006)) )
))
(declare-fun contains!4448 (ListLongMap!10839 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2672 (array!53140 array!53138 (_ BitVec 32) (_ BitVec 32) V!29697 V!29697 (_ BitVec 32) Int) ListLongMap!10839)

(assert (=> b!903364 (= lt!407963 (contains!4448 (getCurrentListMap!2672 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun mapNonEmpty!29536 () Bool)

(declare-fun tp!56656 () Bool)

(assert (=> mapNonEmpty!29536 (= mapRes!29536 (and tp!56656 e!506180))))

(declare-fun mapKey!29536 () (_ BitVec 32))

(declare-fun mapRest!29536 () (Array (_ BitVec 32) ValueCell!8793))

(declare-fun mapValue!29536 () ValueCell!8793)

(assert (=> mapNonEmpty!29536 (= (arr!25524 _values!1152) (store mapRest!29536 mapKey!29536 mapValue!29536))))

(declare-fun b!903365 () Bool)

(assert (=> b!903365 (= e!506179 tp_is_empty!18549)))

(assert (= (and start!77574 res!609594) b!903362))

(assert (= (and b!903362 res!609596) b!903360))

(assert (= (and b!903360 res!609595) b!903361))

(assert (= (and b!903361 res!609597) b!903364))

(assert (= (and b!903359 condMapEmpty!29536) mapIsEmpty!29536))

(assert (= (and b!903359 (not condMapEmpty!29536)) mapNonEmpty!29536))

(get-info :version)

(assert (= (and mapNonEmpty!29536 ((_ is ValueCellFull!8793) mapValue!29536)) b!903363))

(assert (= (and b!903359 ((_ is ValueCellFull!8793) mapDefault!29536)) b!903365))

(assert (= start!77574 b!903359))

(declare-fun m!839133 () Bool)

(assert (=> b!903360 m!839133))

(declare-fun m!839135 () Bool)

(assert (=> mapNonEmpty!29536 m!839135))

(declare-fun m!839137 () Bool)

(assert (=> b!903361 m!839137))

(declare-fun m!839139 () Bool)

(assert (=> start!77574 m!839139))

(declare-fun m!839141 () Bool)

(assert (=> start!77574 m!839141))

(declare-fun m!839143 () Bool)

(assert (=> start!77574 m!839143))

(declare-fun m!839145 () Bool)

(assert (=> b!903364 m!839145))

(assert (=> b!903364 m!839145))

(declare-fun m!839147 () Bool)

(assert (=> b!903364 m!839147))

(check-sat (not b!903360) b_and!26515 (not b!903364) (not start!77574) (not b!903361) tp_is_empty!18549 (not mapNonEmpty!29536) (not b_next!16131))
(check-sat b_and!26515 (not b_next!16131))
