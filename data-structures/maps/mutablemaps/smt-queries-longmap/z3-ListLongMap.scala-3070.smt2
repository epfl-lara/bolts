; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43282 () Bool)

(assert start!43282)

(declare-fun b_free!12141 () Bool)

(declare-fun b_next!12141 () Bool)

(assert (=> start!43282 (= b_free!12141 (not b_next!12141))))

(declare-fun tp!42693 () Bool)

(declare-fun b_and!20911 () Bool)

(assert (=> start!43282 (= tp!42693 b_and!20911)))

(declare-fun b!479252 () Bool)

(declare-fun e!281968 () Bool)

(declare-fun e!281964 () Bool)

(declare-fun mapRes!22177 () Bool)

(assert (=> b!479252 (= e!281968 (and e!281964 mapRes!22177))))

(declare-fun condMapEmpty!22177 () Bool)

(declare-datatypes ((V!19275 0))(
  ( (V!19276 (val!6874 Int)) )
))
(declare-datatypes ((ValueCell!6465 0))(
  ( (ValueCellFull!6465 (v!9159 V!19275)) (EmptyCell!6465) )
))
(declare-datatypes ((array!30945 0))(
  ( (array!30946 (arr!14876 (Array (_ BitVec 32) ValueCell!6465)) (size!15234 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30945)

(declare-fun mapDefault!22177 () ValueCell!6465)

(assert (=> b!479252 (= condMapEmpty!22177 (= (arr!14876 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6465)) mapDefault!22177)))))

(declare-fun res!285951 () Bool)

(declare-fun e!281966 () Bool)

(assert (=> start!43282 (=> (not res!285951) (not e!281966))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43282 (= res!285951 (validMask!0 mask!2352))))

(assert (=> start!43282 e!281966))

(assert (=> start!43282 true))

(declare-fun tp_is_empty!13653 () Bool)

(assert (=> start!43282 tp_is_empty!13653))

(declare-fun array_inv!10716 (array!30945) Bool)

(assert (=> start!43282 (and (array_inv!10716 _values!1516) e!281968)))

(assert (=> start!43282 tp!42693))

(declare-datatypes ((array!30947 0))(
  ( (array!30948 (arr!14877 (Array (_ BitVec 32) (_ BitVec 64))) (size!15235 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30947)

(declare-fun array_inv!10717 (array!30947) Bool)

(assert (=> start!43282 (array_inv!10717 _keys!1874)))

(declare-fun b!479253 () Bool)

(declare-fun res!285950 () Bool)

(assert (=> b!479253 (=> (not res!285950) (not e!281966))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30947 (_ BitVec 32)) Bool)

(assert (=> b!479253 (= res!285950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!479254 () Bool)

(declare-fun e!281965 () Bool)

(assert (=> b!479254 (= e!281965 tp_is_empty!13653)))

(declare-fun b!479255 () Bool)

(assert (=> b!479255 (= e!281966 false)))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun lt!217826 () Bool)

(declare-fun minValue!1458 () V!19275)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19275)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9016 0))(
  ( (tuple2!9017 (_1!4518 (_ BitVec 64)) (_2!4518 V!19275)) )
))
(declare-datatypes ((List!9128 0))(
  ( (Nil!9125) (Cons!9124 (h!9980 tuple2!9016) (t!15342 List!9128)) )
))
(declare-datatypes ((ListLongMap!7943 0))(
  ( (ListLongMap!7944 (toList!3987 List!9128)) )
))
(declare-fun contains!2594 (ListLongMap!7943 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2279 (array!30947 array!30945 (_ BitVec 32) (_ BitVec 32) V!19275 V!19275 (_ BitVec 32) Int) ListLongMap!7943)

(assert (=> b!479255 (= lt!217826 (contains!2594 (getCurrentListMap!2279 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun mapNonEmpty!22177 () Bool)

(declare-fun tp!42694 () Bool)

(assert (=> mapNonEmpty!22177 (= mapRes!22177 (and tp!42694 e!281965))))

(declare-fun mapValue!22177 () ValueCell!6465)

(declare-fun mapKey!22177 () (_ BitVec 32))

(declare-fun mapRest!22177 () (Array (_ BitVec 32) ValueCell!6465))

(assert (=> mapNonEmpty!22177 (= (arr!14876 _values!1516) (store mapRest!22177 mapKey!22177 mapValue!22177))))

(declare-fun b!479256 () Bool)

(assert (=> b!479256 (= e!281964 tp_is_empty!13653)))

(declare-fun b!479257 () Bool)

(declare-fun res!285948 () Bool)

(assert (=> b!479257 (=> (not res!285948) (not e!281966))))

(assert (=> b!479257 (= res!285948 (and (= (size!15234 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15235 _keys!1874) (size!15234 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!22177 () Bool)

(assert (=> mapIsEmpty!22177 mapRes!22177))

(declare-fun b!479258 () Bool)

(declare-fun res!285949 () Bool)

(assert (=> b!479258 (=> (not res!285949) (not e!281966))))

(declare-datatypes ((List!9129 0))(
  ( (Nil!9126) (Cons!9125 (h!9981 (_ BitVec 64)) (t!15343 List!9129)) )
))
(declare-fun arrayNoDuplicates!0 (array!30947 (_ BitVec 32) List!9129) Bool)

(assert (=> b!479258 (= res!285949 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9126))))

(assert (= (and start!43282 res!285951) b!479257))

(assert (= (and b!479257 res!285948) b!479253))

(assert (= (and b!479253 res!285950) b!479258))

(assert (= (and b!479258 res!285949) b!479255))

(assert (= (and b!479252 condMapEmpty!22177) mapIsEmpty!22177))

(assert (= (and b!479252 (not condMapEmpty!22177)) mapNonEmpty!22177))

(get-info :version)

(assert (= (and mapNonEmpty!22177 ((_ is ValueCellFull!6465) mapValue!22177)) b!479254))

(assert (= (and b!479252 ((_ is ValueCellFull!6465) mapDefault!22177)) b!479256))

(assert (= start!43282 b!479252))

(declare-fun m!461231 () Bool)

(assert (=> b!479255 m!461231))

(assert (=> b!479255 m!461231))

(declare-fun m!461233 () Bool)

(assert (=> b!479255 m!461233))

(declare-fun m!461235 () Bool)

(assert (=> b!479258 m!461235))

(declare-fun m!461237 () Bool)

(assert (=> start!43282 m!461237))

(declare-fun m!461239 () Bool)

(assert (=> start!43282 m!461239))

(declare-fun m!461241 () Bool)

(assert (=> start!43282 m!461241))

(declare-fun m!461243 () Bool)

(assert (=> b!479253 m!461243))

(declare-fun m!461245 () Bool)

(assert (=> mapNonEmpty!22177 m!461245))

(check-sat tp_is_empty!13653 (not mapNonEmpty!22177) (not b!479258) (not b!479255) (not b!479253) b_and!20911 (not b_next!12141) (not start!43282))
(check-sat b_and!20911 (not b_next!12141))
