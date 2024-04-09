; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20294 () Bool)

(assert start!20294)

(declare-fun b_free!4941 () Bool)

(declare-fun b_next!4941 () Bool)

(assert (=> start!20294 (= b_free!4941 (not b_next!4941))))

(declare-fun tp!17855 () Bool)

(declare-fun b_and!11705 () Bool)

(assert (=> start!20294 (= tp!17855 b_and!11705)))

(declare-fun b!199620 () Bool)

(declare-fun res!94944 () Bool)

(declare-fun e!131016 () Bool)

(assert (=> b!199620 (=> (not res!94944) (not e!131016))))

(declare-datatypes ((array!8832 0))(
  ( (array!8833 (arr!4166 (Array (_ BitVec 32) (_ BitVec 64))) (size!4491 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8832)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!199620 (= res!94944 (= (select (arr!4166 _keys!825) i!601) k0!843))))

(declare-fun b!199621 () Bool)

(declare-fun e!131020 () Bool)

(declare-fun e!131017 () Bool)

(declare-fun mapRes!8264 () Bool)

(assert (=> b!199621 (= e!131020 (and e!131017 mapRes!8264))))

(declare-fun condMapEmpty!8264 () Bool)

(declare-datatypes ((V!6043 0))(
  ( (V!6044 (val!2443 Int)) )
))
(declare-datatypes ((ValueCell!2055 0))(
  ( (ValueCellFull!2055 (v!4409 V!6043)) (EmptyCell!2055) )
))
(declare-datatypes ((array!8834 0))(
  ( (array!8835 (arr!4167 (Array (_ BitVec 32) ValueCell!2055)) (size!4492 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8834)

(declare-fun mapDefault!8264 () ValueCell!2055)

(assert (=> b!199621 (= condMapEmpty!8264 (= (arr!4167 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2055)) mapDefault!8264)))))

(declare-fun b!199622 () Bool)

(declare-fun res!94943 () Bool)

(assert (=> b!199622 (=> (not res!94943) (not e!131016))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!199622 (= res!94943 (and (= (size!4492 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4491 _keys!825) (size!4492 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!199623 () Bool)

(declare-fun res!94945 () Bool)

(assert (=> b!199623 (=> (not res!94945) (not e!131016))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8832 (_ BitVec 32)) Bool)

(assert (=> b!199623 (= res!94945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!199624 () Bool)

(declare-fun res!94939 () Bool)

(assert (=> b!199624 (=> (not res!94939) (not e!131016))))

(assert (=> b!199624 (= res!94939 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4491 _keys!825))))))

(declare-fun b!199625 () Bool)

(declare-fun tp_is_empty!4797 () Bool)

(assert (=> b!199625 (= e!131017 tp_is_empty!4797)))

(declare-fun mapIsEmpty!8264 () Bool)

(assert (=> mapIsEmpty!8264 mapRes!8264))

(declare-fun b!199627 () Bool)

(declare-fun res!94942 () Bool)

(assert (=> b!199627 (=> (not res!94942) (not e!131016))))

(declare-datatypes ((List!2631 0))(
  ( (Nil!2628) (Cons!2627 (h!3269 (_ BitVec 64)) (t!7570 List!2631)) )
))
(declare-fun arrayNoDuplicates!0 (array!8832 (_ BitVec 32) List!2631) Bool)

(assert (=> b!199627 (= res!94942 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2628))))

(declare-fun b!199628 () Bool)

(declare-fun e!131018 () Bool)

(assert (=> b!199628 (= e!131018 tp_is_empty!4797)))

(declare-fun mapNonEmpty!8264 () Bool)

(declare-fun tp!17854 () Bool)

(assert (=> mapNonEmpty!8264 (= mapRes!8264 (and tp!17854 e!131018))))

(declare-fun mapRest!8264 () (Array (_ BitVec 32) ValueCell!2055))

(declare-fun mapValue!8264 () ValueCell!2055)

(declare-fun mapKey!8264 () (_ BitVec 32))

(assert (=> mapNonEmpty!8264 (= (arr!4167 _values!649) (store mapRest!8264 mapKey!8264 mapValue!8264))))

(declare-fun b!199629 () Bool)

(declare-fun res!94941 () Bool)

(assert (=> b!199629 (=> (not res!94941) (not e!131016))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199629 (= res!94941 (validKeyInArray!0 k0!843))))

(declare-fun b!199626 () Bool)

(assert (=> b!199626 (= e!131016 (not true))))

(declare-fun lt!98476 () array!8834)

(declare-datatypes ((tuple2!3690 0))(
  ( (tuple2!3691 (_1!1855 (_ BitVec 64)) (_2!1855 V!6043)) )
))
(declare-datatypes ((List!2632 0))(
  ( (Nil!2629) (Cons!2628 (h!3270 tuple2!3690) (t!7571 List!2632)) )
))
(declare-datatypes ((ListLongMap!2617 0))(
  ( (ListLongMap!2618 (toList!1324 List!2632)) )
))
(declare-fun lt!98474 () ListLongMap!2617)

(declare-fun zeroValue!615 () V!6043)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6043)

(declare-fun getCurrentListMap!910 (array!8832 array!8834 (_ BitVec 32) (_ BitVec 32) V!6043 V!6043 (_ BitVec 32) Int) ListLongMap!2617)

(assert (=> b!199626 (= lt!98474 (getCurrentListMap!910 _keys!825 lt!98476 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98479 () ListLongMap!2617)

(declare-fun lt!98478 () ListLongMap!2617)

(assert (=> b!199626 (and (= lt!98479 lt!98478) (= lt!98478 lt!98479))))

(declare-fun v!520 () V!6043)

(declare-fun lt!98475 () ListLongMap!2617)

(declare-fun +!341 (ListLongMap!2617 tuple2!3690) ListLongMap!2617)

(assert (=> b!199626 (= lt!98478 (+!341 lt!98475 (tuple2!3691 k0!843 v!520)))))

(declare-datatypes ((Unit!5991 0))(
  ( (Unit!5992) )
))
(declare-fun lt!98477 () Unit!5991)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!23 (array!8832 array!8834 (_ BitVec 32) (_ BitVec 32) V!6043 V!6043 (_ BitVec 32) (_ BitVec 64) V!6043 (_ BitVec 32) Int) Unit!5991)

(assert (=> b!199626 (= lt!98477 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!23 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!281 (array!8832 array!8834 (_ BitVec 32) (_ BitVec 32) V!6043 V!6043 (_ BitVec 32) Int) ListLongMap!2617)

(assert (=> b!199626 (= lt!98479 (getCurrentListMapNoExtraKeys!281 _keys!825 lt!98476 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199626 (= lt!98476 (array!8835 (store (arr!4167 _values!649) i!601 (ValueCellFull!2055 v!520)) (size!4492 _values!649)))))

(assert (=> b!199626 (= lt!98475 (getCurrentListMapNoExtraKeys!281 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!94940 () Bool)

(assert (=> start!20294 (=> (not res!94940) (not e!131016))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20294 (= res!94940 (validMask!0 mask!1149))))

(assert (=> start!20294 e!131016))

(declare-fun array_inv!2727 (array!8834) Bool)

(assert (=> start!20294 (and (array_inv!2727 _values!649) e!131020)))

(assert (=> start!20294 true))

(assert (=> start!20294 tp_is_empty!4797))

(declare-fun array_inv!2728 (array!8832) Bool)

(assert (=> start!20294 (array_inv!2728 _keys!825)))

(assert (=> start!20294 tp!17855))

(assert (= (and start!20294 res!94940) b!199622))

(assert (= (and b!199622 res!94943) b!199623))

(assert (= (and b!199623 res!94945) b!199627))

(assert (= (and b!199627 res!94942) b!199624))

(assert (= (and b!199624 res!94939) b!199629))

(assert (= (and b!199629 res!94941) b!199620))

(assert (= (and b!199620 res!94944) b!199626))

(assert (= (and b!199621 condMapEmpty!8264) mapIsEmpty!8264))

(assert (= (and b!199621 (not condMapEmpty!8264)) mapNonEmpty!8264))

(get-info :version)

(assert (= (and mapNonEmpty!8264 ((_ is ValueCellFull!2055) mapValue!8264)) b!199628))

(assert (= (and b!199621 ((_ is ValueCellFull!2055) mapDefault!8264)) b!199625))

(assert (= start!20294 b!199621))

(declare-fun m!226093 () Bool)

(assert (=> b!199629 m!226093))

(declare-fun m!226095 () Bool)

(assert (=> b!199620 m!226095))

(declare-fun m!226097 () Bool)

(assert (=> mapNonEmpty!8264 m!226097))

(declare-fun m!226099 () Bool)

(assert (=> b!199623 m!226099))

(declare-fun m!226101 () Bool)

(assert (=> b!199626 m!226101))

(declare-fun m!226103 () Bool)

(assert (=> b!199626 m!226103))

(declare-fun m!226105 () Bool)

(assert (=> b!199626 m!226105))

(declare-fun m!226107 () Bool)

(assert (=> b!199626 m!226107))

(declare-fun m!226109 () Bool)

(assert (=> b!199626 m!226109))

(declare-fun m!226111 () Bool)

(assert (=> b!199626 m!226111))

(declare-fun m!226113 () Bool)

(assert (=> b!199627 m!226113))

(declare-fun m!226115 () Bool)

(assert (=> start!20294 m!226115))

(declare-fun m!226117 () Bool)

(assert (=> start!20294 m!226117))

(declare-fun m!226119 () Bool)

(assert (=> start!20294 m!226119))

(check-sat (not b_next!4941) tp_is_empty!4797 (not start!20294) (not b!199629) (not b!199627) (not b!199626) b_and!11705 (not b!199623) (not mapNonEmpty!8264))
(check-sat b_and!11705 (not b_next!4941))
