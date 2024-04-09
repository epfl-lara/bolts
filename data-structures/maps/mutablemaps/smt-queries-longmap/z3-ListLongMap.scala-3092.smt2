; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43502 () Bool)

(assert start!43502)

(declare-fun b_free!12273 () Bool)

(declare-fun b_next!12273 () Bool)

(assert (=> start!43502 (= b_free!12273 (not b_next!12273))))

(declare-fun tp!43101 () Bool)

(declare-fun b_and!21051 () Bool)

(assert (=> start!43502 (= tp!43101 b_and!21051)))

(declare-fun mapIsEmpty!22387 () Bool)

(declare-fun mapRes!22387 () Bool)

(assert (=> mapIsEmpty!22387 mapRes!22387))

(declare-fun res!287247 () Bool)

(declare-fun e!283445 () Bool)

(assert (=> start!43502 (=> (not res!287247) (not e!283445))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43502 (= res!287247 (validMask!0 mask!2352))))

(assert (=> start!43502 e!283445))

(assert (=> start!43502 true))

(declare-fun tp_is_empty!13785 () Bool)

(assert (=> start!43502 tp_is_empty!13785))

(declare-datatypes ((V!19451 0))(
  ( (V!19452 (val!6940 Int)) )
))
(declare-datatypes ((ValueCell!6531 0))(
  ( (ValueCellFull!6531 (v!9229 V!19451)) (EmptyCell!6531) )
))
(declare-datatypes ((array!31203 0))(
  ( (array!31204 (arr!15001 (Array (_ BitVec 32) ValueCell!6531)) (size!15359 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31203)

(declare-fun e!283444 () Bool)

(declare-fun array_inv!10800 (array!31203) Bool)

(assert (=> start!43502 (and (array_inv!10800 _values!1516) e!283444)))

(assert (=> start!43502 tp!43101))

(declare-datatypes ((array!31205 0))(
  ( (array!31206 (arr!15002 (Array (_ BitVec 32) (_ BitVec 64))) (size!15360 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31205)

(declare-fun array_inv!10801 (array!31205) Bool)

(assert (=> start!43502 (array_inv!10801 _keys!1874)))

(declare-fun b!481727 () Bool)

(declare-fun res!287246 () Bool)

(assert (=> b!481727 (=> (not res!287246) (not e!283445))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31205 (_ BitVec 32)) Bool)

(assert (=> b!481727 (= res!287246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!481728 () Bool)

(assert (=> b!481728 (= e!283445 false)))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19451)

(declare-fun minValue!1458 () V!19451)

(declare-fun lt!218609 () Bool)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9110 0))(
  ( (tuple2!9111 (_1!4565 (_ BitVec 64)) (_2!4565 V!19451)) )
))
(declare-datatypes ((List!9224 0))(
  ( (Nil!9221) (Cons!9220 (h!10076 tuple2!9110) (t!15446 List!9224)) )
))
(declare-datatypes ((ListLongMap!8037 0))(
  ( (ListLongMap!8038 (toList!4034 List!9224)) )
))
(declare-fun contains!2645 (ListLongMap!8037 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2326 (array!31205 array!31203 (_ BitVec 32) (_ BitVec 32) V!19451 V!19451 (_ BitVec 32) Int) ListLongMap!8037)

(assert (=> b!481728 (= lt!218609 (contains!2645 (getCurrentListMap!2326 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!481729 () Bool)

(declare-fun e!283447 () Bool)

(assert (=> b!481729 (= e!283447 tp_is_empty!13785)))

(declare-fun b!481730 () Bool)

(declare-fun e!283443 () Bool)

(assert (=> b!481730 (= e!283444 (and e!283443 mapRes!22387))))

(declare-fun condMapEmpty!22387 () Bool)

(declare-fun mapDefault!22387 () ValueCell!6531)

(assert (=> b!481730 (= condMapEmpty!22387 (= (arr!15001 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6531)) mapDefault!22387)))))

(declare-fun b!481731 () Bool)

(declare-fun res!287248 () Bool)

(assert (=> b!481731 (=> (not res!287248) (not e!283445))))

(assert (=> b!481731 (= res!287248 (and (= (size!15359 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15360 _keys!1874) (size!15359 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!481732 () Bool)

(declare-fun res!287245 () Bool)

(assert (=> b!481732 (=> (not res!287245) (not e!283445))))

(declare-datatypes ((List!9225 0))(
  ( (Nil!9222) (Cons!9221 (h!10077 (_ BitVec 64)) (t!15447 List!9225)) )
))
(declare-fun arrayNoDuplicates!0 (array!31205 (_ BitVec 32) List!9225) Bool)

(assert (=> b!481732 (= res!287245 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9222))))

(declare-fun mapNonEmpty!22387 () Bool)

(declare-fun tp!43102 () Bool)

(assert (=> mapNonEmpty!22387 (= mapRes!22387 (and tp!43102 e!283447))))

(declare-fun mapKey!22387 () (_ BitVec 32))

(declare-fun mapRest!22387 () (Array (_ BitVec 32) ValueCell!6531))

(declare-fun mapValue!22387 () ValueCell!6531)

(assert (=> mapNonEmpty!22387 (= (arr!15001 _values!1516) (store mapRest!22387 mapKey!22387 mapValue!22387))))

(declare-fun b!481733 () Bool)

(assert (=> b!481733 (= e!283443 tp_is_empty!13785)))

(assert (= (and start!43502 res!287247) b!481731))

(assert (= (and b!481731 res!287248) b!481727))

(assert (= (and b!481727 res!287246) b!481732))

(assert (= (and b!481732 res!287245) b!481728))

(assert (= (and b!481730 condMapEmpty!22387) mapIsEmpty!22387))

(assert (= (and b!481730 (not condMapEmpty!22387)) mapNonEmpty!22387))

(get-info :version)

(assert (= (and mapNonEmpty!22387 ((_ is ValueCellFull!6531) mapValue!22387)) b!481729))

(assert (= (and b!481730 ((_ is ValueCellFull!6531) mapDefault!22387)) b!481733))

(assert (= start!43502 b!481730))

(declare-fun m!463139 () Bool)

(assert (=> start!43502 m!463139))

(declare-fun m!463141 () Bool)

(assert (=> start!43502 m!463141))

(declare-fun m!463143 () Bool)

(assert (=> start!43502 m!463143))

(declare-fun m!463145 () Bool)

(assert (=> mapNonEmpty!22387 m!463145))

(declare-fun m!463147 () Bool)

(assert (=> b!481732 m!463147))

(declare-fun m!463149 () Bool)

(assert (=> b!481728 m!463149))

(assert (=> b!481728 m!463149))

(declare-fun m!463151 () Bool)

(assert (=> b!481728 m!463151))

(declare-fun m!463153 () Bool)

(assert (=> b!481727 m!463153))

(check-sat b_and!21051 (not b_next!12273) (not mapNonEmpty!22387) (not b!481728) (not b!481732) tp_is_empty!13785 (not b!481727) (not start!43502))
(check-sat b_and!21051 (not b_next!12273))
