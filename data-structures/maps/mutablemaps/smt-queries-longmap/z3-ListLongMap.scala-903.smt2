; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20528 () Bool)

(assert start!20528)

(declare-fun b_free!5175 () Bool)

(declare-fun b_next!5175 () Bool)

(assert (=> start!20528 (= b_free!5175 (not b_next!5175))))

(declare-fun tp!18556 () Bool)

(declare-fun b_and!11939 () Bool)

(assert (=> start!20528 (= tp!18556 b_and!11939)))

(declare-fun b!203743 () Bool)

(declare-fun e!133372 () Bool)

(declare-fun e!133368 () Bool)

(assert (=> b!203743 (= e!133372 e!133368)))

(declare-fun res!98012 () Bool)

(assert (=> b!203743 (=> res!98012 e!133368)))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!203743 (= res!98012 (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6355 0))(
  ( (V!6356 (val!2560 Int)) )
))
(declare-datatypes ((tuple2!3880 0))(
  ( (tuple2!3881 (_1!1950 (_ BitVec 64)) (_2!1950 V!6355)) )
))
(declare-datatypes ((List!2804 0))(
  ( (Nil!2801) (Cons!2800 (h!3442 tuple2!3880) (t!7743 List!2804)) )
))
(declare-datatypes ((ListLongMap!2807 0))(
  ( (ListLongMap!2808 (toList!1419 List!2804)) )
))
(declare-fun lt!102986 () ListLongMap!2807)

(declare-fun lt!102988 () ListLongMap!2807)

(assert (=> b!203743 (= lt!102986 lt!102988)))

(declare-fun lt!102990 () ListLongMap!2807)

(declare-fun lt!102997 () tuple2!3880)

(declare-fun +!436 (ListLongMap!2807 tuple2!3880) ListLongMap!2807)

(assert (=> b!203743 (= lt!102988 (+!436 lt!102990 lt!102997))))

(declare-fun lt!102993 () ListLongMap!2807)

(declare-fun lt!102994 () ListLongMap!2807)

(assert (=> b!203743 (= lt!102993 lt!102994)))

(declare-fun lt!102989 () ListLongMap!2807)

(assert (=> b!203743 (= lt!102994 (+!436 lt!102989 lt!102997))))

(declare-fun lt!102992 () ListLongMap!2807)

(assert (=> b!203743 (= lt!102986 (+!436 lt!102992 lt!102997))))

(declare-fun zeroValue!615 () V!6355)

(assert (=> b!203743 (= lt!102997 (tuple2!3881 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203744 () Bool)

(declare-fun res!98013 () Bool)

(declare-fun e!133367 () Bool)

(assert (=> b!203744 (=> (not res!98013) (not e!133367))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9284 0))(
  ( (array!9285 (arr!4392 (Array (_ BitVec 32) (_ BitVec 64))) (size!4717 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9284)

(assert (=> b!203744 (= res!98013 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4717 _keys!825))))))

(declare-fun mapNonEmpty!8615 () Bool)

(declare-fun mapRes!8615 () Bool)

(declare-fun tp!18557 () Bool)

(declare-fun e!133371 () Bool)

(assert (=> mapNonEmpty!8615 (= mapRes!8615 (and tp!18557 e!133371))))

(declare-fun mapKey!8615 () (_ BitVec 32))

(declare-datatypes ((ValueCell!2172 0))(
  ( (ValueCellFull!2172 (v!4526 V!6355)) (EmptyCell!2172) )
))
(declare-fun mapRest!8615 () (Array (_ BitVec 32) ValueCell!2172))

(declare-datatypes ((array!9286 0))(
  ( (array!9287 (arr!4393 (Array (_ BitVec 32) ValueCell!2172)) (size!4718 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9286)

(declare-fun mapValue!8615 () ValueCell!2172)

(assert (=> mapNonEmpty!8615 (= (arr!4393 _values!649) (store mapRest!8615 mapKey!8615 mapValue!8615))))

(declare-fun b!203745 () Bool)

(declare-fun res!98016 () Bool)

(assert (=> b!203745 (=> (not res!98016) (not e!133367))))

(assert (=> b!203745 (= res!98016 (= (select (arr!4392 _keys!825) i!601) k0!843))))

(declare-fun b!203746 () Bool)

(declare-fun res!98011 () Bool)

(assert (=> b!203746 (=> (not res!98011) (not e!133367))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9284 (_ BitVec 32)) Bool)

(assert (=> b!203746 (= res!98011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!203747 () Bool)

(declare-fun tp_is_empty!5031 () Bool)

(assert (=> b!203747 (= e!133371 tp_is_empty!5031)))

(declare-fun res!98015 () Bool)

(assert (=> start!20528 (=> (not res!98015) (not e!133367))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20528 (= res!98015 (validMask!0 mask!1149))))

(assert (=> start!20528 e!133367))

(declare-fun e!133366 () Bool)

(declare-fun array_inv!2891 (array!9286) Bool)

(assert (=> start!20528 (and (array_inv!2891 _values!649) e!133366)))

(assert (=> start!20528 true))

(assert (=> start!20528 tp_is_empty!5031))

(declare-fun array_inv!2892 (array!9284) Bool)

(assert (=> start!20528 (array_inv!2892 _keys!825)))

(assert (=> start!20528 tp!18556))

(declare-fun b!203748 () Bool)

(assert (=> b!203748 (= e!133367 (not e!133372))))

(declare-fun res!98010 () Bool)

(assert (=> b!203748 (=> res!98010 e!133372)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!203748 (= res!98010 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6355)

(declare-fun getCurrentListMap!988 (array!9284 array!9286 (_ BitVec 32) (_ BitVec 32) V!6355 V!6355 (_ BitVec 32) Int) ListLongMap!2807)

(assert (=> b!203748 (= lt!102993 (getCurrentListMap!988 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102996 () array!9286)

(assert (=> b!203748 (= lt!102986 (getCurrentListMap!988 _keys!825 lt!102996 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203748 (and (= lt!102992 lt!102990) (= lt!102990 lt!102992))))

(declare-fun lt!102987 () tuple2!3880)

(assert (=> b!203748 (= lt!102990 (+!436 lt!102989 lt!102987))))

(declare-fun v!520 () V!6355)

(assert (=> b!203748 (= lt!102987 (tuple2!3881 k0!843 v!520))))

(declare-datatypes ((Unit!6173 0))(
  ( (Unit!6174) )
))
(declare-fun lt!102991 () Unit!6173)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!101 (array!9284 array!9286 (_ BitVec 32) (_ BitVec 32) V!6355 V!6355 (_ BitVec 32) (_ BitVec 64) V!6355 (_ BitVec 32) Int) Unit!6173)

(assert (=> b!203748 (= lt!102991 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!101 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!359 (array!9284 array!9286 (_ BitVec 32) (_ BitVec 32) V!6355 V!6355 (_ BitVec 32) Int) ListLongMap!2807)

(assert (=> b!203748 (= lt!102992 (getCurrentListMapNoExtraKeys!359 _keys!825 lt!102996 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203748 (= lt!102996 (array!9287 (store (arr!4393 _values!649) i!601 (ValueCellFull!2172 v!520)) (size!4718 _values!649)))))

(assert (=> b!203748 (= lt!102989 (getCurrentListMapNoExtraKeys!359 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!203749 () Bool)

(assert (=> b!203749 (= e!133368 true)))

(assert (=> b!203749 (= lt!102988 (+!436 lt!102994 lt!102987))))

(declare-fun lt!102995 () Unit!6173)

(declare-fun addCommutativeForDiffKeys!147 (ListLongMap!2807 (_ BitVec 64) V!6355 (_ BitVec 64) V!6355) Unit!6173)

(assert (=> b!203749 (= lt!102995 (addCommutativeForDiffKeys!147 lt!102989 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203750 () Bool)

(declare-fun e!133369 () Bool)

(assert (=> b!203750 (= e!133369 tp_is_empty!5031)))

(declare-fun b!203751 () Bool)

(assert (=> b!203751 (= e!133366 (and e!133369 mapRes!8615))))

(declare-fun condMapEmpty!8615 () Bool)

(declare-fun mapDefault!8615 () ValueCell!2172)

(assert (=> b!203751 (= condMapEmpty!8615 (= (arr!4393 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2172)) mapDefault!8615)))))

(declare-fun b!203752 () Bool)

(declare-fun res!98017 () Bool)

(assert (=> b!203752 (=> (not res!98017) (not e!133367))))

(declare-datatypes ((List!2805 0))(
  ( (Nil!2802) (Cons!2801 (h!3443 (_ BitVec 64)) (t!7744 List!2805)) )
))
(declare-fun arrayNoDuplicates!0 (array!9284 (_ BitVec 32) List!2805) Bool)

(assert (=> b!203752 (= res!98017 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2802))))

(declare-fun b!203753 () Bool)

(declare-fun res!98009 () Bool)

(assert (=> b!203753 (=> (not res!98009) (not e!133367))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!203753 (= res!98009 (validKeyInArray!0 k0!843))))

(declare-fun mapIsEmpty!8615 () Bool)

(assert (=> mapIsEmpty!8615 mapRes!8615))

(declare-fun b!203754 () Bool)

(declare-fun res!98014 () Bool)

(assert (=> b!203754 (=> (not res!98014) (not e!133367))))

(assert (=> b!203754 (= res!98014 (and (= (size!4718 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4717 _keys!825) (size!4718 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(assert (= (and start!20528 res!98015) b!203754))

(assert (= (and b!203754 res!98014) b!203746))

(assert (= (and b!203746 res!98011) b!203752))

(assert (= (and b!203752 res!98017) b!203744))

(assert (= (and b!203744 res!98013) b!203753))

(assert (= (and b!203753 res!98009) b!203745))

(assert (= (and b!203745 res!98016) b!203748))

(assert (= (and b!203748 (not res!98010)) b!203743))

(assert (= (and b!203743 (not res!98012)) b!203749))

(assert (= (and b!203751 condMapEmpty!8615) mapIsEmpty!8615))

(assert (= (and b!203751 (not condMapEmpty!8615)) mapNonEmpty!8615))

(get-info :version)

(assert (= (and mapNonEmpty!8615 ((_ is ValueCellFull!2172) mapValue!8615)) b!203747))

(assert (= (and b!203751 ((_ is ValueCellFull!2172) mapDefault!8615)) b!203750))

(assert (= start!20528 b!203751))

(declare-fun m!231229 () Bool)

(assert (=> b!203746 m!231229))

(declare-fun m!231231 () Bool)

(assert (=> b!203743 m!231231))

(declare-fun m!231233 () Bool)

(assert (=> b!203743 m!231233))

(declare-fun m!231235 () Bool)

(assert (=> b!203743 m!231235))

(declare-fun m!231237 () Bool)

(assert (=> start!20528 m!231237))

(declare-fun m!231239 () Bool)

(assert (=> start!20528 m!231239))

(declare-fun m!231241 () Bool)

(assert (=> start!20528 m!231241))

(declare-fun m!231243 () Bool)

(assert (=> b!203748 m!231243))

(declare-fun m!231245 () Bool)

(assert (=> b!203748 m!231245))

(declare-fun m!231247 () Bool)

(assert (=> b!203748 m!231247))

(declare-fun m!231249 () Bool)

(assert (=> b!203748 m!231249))

(declare-fun m!231251 () Bool)

(assert (=> b!203748 m!231251))

(declare-fun m!231253 () Bool)

(assert (=> b!203748 m!231253))

(declare-fun m!231255 () Bool)

(assert (=> b!203748 m!231255))

(declare-fun m!231257 () Bool)

(assert (=> b!203745 m!231257))

(declare-fun m!231259 () Bool)

(assert (=> b!203752 m!231259))

(declare-fun m!231261 () Bool)

(assert (=> b!203749 m!231261))

(declare-fun m!231263 () Bool)

(assert (=> b!203749 m!231263))

(declare-fun m!231265 () Bool)

(assert (=> mapNonEmpty!8615 m!231265))

(declare-fun m!231267 () Bool)

(assert (=> b!203753 m!231267))

(check-sat b_and!11939 (not b!203746) (not b!203743) (not b!203753) tp_is_empty!5031 (not b!203752) (not b_next!5175) (not b!203749) (not mapNonEmpty!8615) (not b!203748) (not start!20528))
(check-sat b_and!11939 (not b_next!5175))
