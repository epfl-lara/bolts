; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20696 () Bool)

(assert start!20696)

(declare-fun b_free!5343 () Bool)

(declare-fun b_next!5343 () Bool)

(assert (=> start!20696 (= b_free!5343 (not b_next!5343))))

(declare-fun tp!19061 () Bool)

(declare-fun b_and!12107 () Bool)

(assert (=> start!20696 (= tp!19061 b_and!12107)))

(declare-fun b!206712 () Bool)

(declare-fun res!100227 () Bool)

(declare-fun e!135070 () Bool)

(assert (=> b!206712 (=> (not res!100227) (not e!135070))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206712 (= res!100227 (validKeyInArray!0 k0!843))))

(declare-fun b!206713 () Bool)

(assert (=> b!206713 (= e!135070 (not true))))

(declare-datatypes ((V!6579 0))(
  ( (V!6580 (val!2644 Int)) )
))
(declare-datatypes ((ValueCell!2256 0))(
  ( (ValueCellFull!2256 (v!4610 V!6579)) (EmptyCell!2256) )
))
(declare-datatypes ((array!9606 0))(
  ( (array!9607 (arr!4553 (Array (_ BitVec 32) ValueCell!2256)) (size!4878 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9606)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!4010 0))(
  ( (tuple2!4011 (_1!2015 (_ BitVec 64)) (_2!2015 V!6579)) )
))
(declare-datatypes ((List!2925 0))(
  ( (Nil!2922) (Cons!2921 (h!3563 tuple2!4010) (t!7864 List!2925)) )
))
(declare-datatypes ((ListLongMap!2937 0))(
  ( (ListLongMap!2938 (toList!1484 List!2925)) )
))
(declare-fun lt!105819 () ListLongMap!2937)

(declare-fun zeroValue!615 () V!6579)

(declare-datatypes ((array!9608 0))(
  ( (array!9609 (arr!4554 (Array (_ BitVec 32) (_ BitVec 64))) (size!4879 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9608)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6579)

(declare-fun getCurrentListMap!1046 (array!9608 array!9606 (_ BitVec 32) (_ BitVec 32) V!6579 V!6579 (_ BitVec 32) Int) ListLongMap!2937)

(assert (=> b!206713 (= lt!105819 (getCurrentListMap!1046 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105815 () ListLongMap!2937)

(declare-fun lt!105818 () array!9606)

(assert (=> b!206713 (= lt!105815 (getCurrentListMap!1046 _keys!825 lt!105818 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105817 () ListLongMap!2937)

(declare-fun lt!105816 () ListLongMap!2937)

(assert (=> b!206713 (and (= lt!105817 lt!105816) (= lt!105816 lt!105817))))

(declare-fun lt!105820 () ListLongMap!2937)

(declare-fun v!520 () V!6579)

(declare-fun +!501 (ListLongMap!2937 tuple2!4010) ListLongMap!2937)

(assert (=> b!206713 (= lt!105816 (+!501 lt!105820 (tuple2!4011 k0!843 v!520)))))

(declare-datatypes ((Unit!6297 0))(
  ( (Unit!6298) )
))
(declare-fun lt!105814 () Unit!6297)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!159 (array!9608 array!9606 (_ BitVec 32) (_ BitVec 32) V!6579 V!6579 (_ BitVec 32) (_ BitVec 64) V!6579 (_ BitVec 32) Int) Unit!6297)

(assert (=> b!206713 (= lt!105814 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!159 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!417 (array!9608 array!9606 (_ BitVec 32) (_ BitVec 32) V!6579 V!6579 (_ BitVec 32) Int) ListLongMap!2937)

(assert (=> b!206713 (= lt!105817 (getCurrentListMapNoExtraKeys!417 _keys!825 lt!105818 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206713 (= lt!105818 (array!9607 (store (arr!4553 _values!649) i!601 (ValueCellFull!2256 v!520)) (size!4878 _values!649)))))

(assert (=> b!206713 (= lt!105820 (getCurrentListMapNoExtraKeys!417 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!206714 () Bool)

(declare-fun res!100224 () Bool)

(assert (=> b!206714 (=> (not res!100224) (not e!135070))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9608 (_ BitVec 32)) Bool)

(assert (=> b!206714 (= res!100224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!206715 () Bool)

(declare-fun res!100225 () Bool)

(assert (=> b!206715 (=> (not res!100225) (not e!135070))))

(assert (=> b!206715 (= res!100225 (and (= (size!4878 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4879 _keys!825) (size!4878 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!206716 () Bool)

(declare-fun res!100222 () Bool)

(assert (=> b!206716 (=> (not res!100222) (not e!135070))))

(assert (=> b!206716 (= res!100222 (= (select (arr!4554 _keys!825) i!601) k0!843))))

(declare-fun mapIsEmpty!8867 () Bool)

(declare-fun mapRes!8867 () Bool)

(assert (=> mapIsEmpty!8867 mapRes!8867))

(declare-fun b!206717 () Bool)

(declare-fun e!135067 () Bool)

(declare-fun e!135066 () Bool)

(assert (=> b!206717 (= e!135067 (and e!135066 mapRes!8867))))

(declare-fun condMapEmpty!8867 () Bool)

(declare-fun mapDefault!8867 () ValueCell!2256)

(assert (=> b!206717 (= condMapEmpty!8867 (= (arr!4553 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2256)) mapDefault!8867)))))

(declare-fun res!100223 () Bool)

(assert (=> start!20696 (=> (not res!100223) (not e!135070))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20696 (= res!100223 (validMask!0 mask!1149))))

(assert (=> start!20696 e!135070))

(declare-fun array_inv!3001 (array!9606) Bool)

(assert (=> start!20696 (and (array_inv!3001 _values!649) e!135067)))

(assert (=> start!20696 true))

(declare-fun tp_is_empty!5199 () Bool)

(assert (=> start!20696 tp_is_empty!5199))

(declare-fun array_inv!3002 (array!9608) Bool)

(assert (=> start!20696 (array_inv!3002 _keys!825)))

(assert (=> start!20696 tp!19061))

(declare-fun mapNonEmpty!8867 () Bool)

(declare-fun tp!19060 () Bool)

(declare-fun e!135069 () Bool)

(assert (=> mapNonEmpty!8867 (= mapRes!8867 (and tp!19060 e!135069))))

(declare-fun mapValue!8867 () ValueCell!2256)

(declare-fun mapRest!8867 () (Array (_ BitVec 32) ValueCell!2256))

(declare-fun mapKey!8867 () (_ BitVec 32))

(assert (=> mapNonEmpty!8867 (= (arr!4553 _values!649) (store mapRest!8867 mapKey!8867 mapValue!8867))))

(declare-fun b!206718 () Bool)

(assert (=> b!206718 (= e!135069 tp_is_empty!5199)))

(declare-fun b!206719 () Bool)

(declare-fun res!100226 () Bool)

(assert (=> b!206719 (=> (not res!100226) (not e!135070))))

(declare-datatypes ((List!2926 0))(
  ( (Nil!2923) (Cons!2922 (h!3564 (_ BitVec 64)) (t!7865 List!2926)) )
))
(declare-fun arrayNoDuplicates!0 (array!9608 (_ BitVec 32) List!2926) Bool)

(assert (=> b!206719 (= res!100226 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2923))))

(declare-fun b!206720 () Bool)

(declare-fun res!100228 () Bool)

(assert (=> b!206720 (=> (not res!100228) (not e!135070))))

(assert (=> b!206720 (= res!100228 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4879 _keys!825))))))

(declare-fun b!206721 () Bool)

(assert (=> b!206721 (= e!135066 tp_is_empty!5199)))

(assert (= (and start!20696 res!100223) b!206715))

(assert (= (and b!206715 res!100225) b!206714))

(assert (= (and b!206714 res!100224) b!206719))

(assert (= (and b!206719 res!100226) b!206720))

(assert (= (and b!206720 res!100228) b!206712))

(assert (= (and b!206712 res!100227) b!206716))

(assert (= (and b!206716 res!100222) b!206713))

(assert (= (and b!206717 condMapEmpty!8867) mapIsEmpty!8867))

(assert (= (and b!206717 (not condMapEmpty!8867)) mapNonEmpty!8867))

(get-info :version)

(assert (= (and mapNonEmpty!8867 ((_ is ValueCellFull!2256) mapValue!8867)) b!206718))

(assert (= (and b!206717 ((_ is ValueCellFull!2256) mapDefault!8867)) b!206721))

(assert (= start!20696 b!206717))

(declare-fun m!234477 () Bool)

(assert (=> b!206716 m!234477))

(declare-fun m!234479 () Bool)

(assert (=> mapNonEmpty!8867 m!234479))

(declare-fun m!234481 () Bool)

(assert (=> b!206712 m!234481))

(declare-fun m!234483 () Bool)

(assert (=> b!206714 m!234483))

(declare-fun m!234485 () Bool)

(assert (=> b!206719 m!234485))

(declare-fun m!234487 () Bool)

(assert (=> start!20696 m!234487))

(declare-fun m!234489 () Bool)

(assert (=> start!20696 m!234489))

(declare-fun m!234491 () Bool)

(assert (=> start!20696 m!234491))

(declare-fun m!234493 () Bool)

(assert (=> b!206713 m!234493))

(declare-fun m!234495 () Bool)

(assert (=> b!206713 m!234495))

(declare-fun m!234497 () Bool)

(assert (=> b!206713 m!234497))

(declare-fun m!234499 () Bool)

(assert (=> b!206713 m!234499))

(declare-fun m!234501 () Bool)

(assert (=> b!206713 m!234501))

(declare-fun m!234503 () Bool)

(assert (=> b!206713 m!234503))

(declare-fun m!234505 () Bool)

(assert (=> b!206713 m!234505))

(check-sat (not mapNonEmpty!8867) (not b!206719) tp_is_empty!5199 (not start!20696) (not b!206714) (not b_next!5343) b_and!12107 (not b!206712) (not b!206713))
(check-sat b_and!12107 (not b_next!5343))
