; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43532 () Bool)

(assert start!43532)

(declare-fun b_free!12303 () Bool)

(declare-fun b_next!12303 () Bool)

(assert (=> start!43532 (= b_free!12303 (not b_next!12303))))

(declare-fun tp!43192 () Bool)

(declare-fun b_and!21081 () Bool)

(assert (=> start!43532 (= tp!43192 b_and!21081)))

(declare-fun b!482042 () Bool)

(declare-fun res!287428 () Bool)

(declare-fun e!283672 () Bool)

(assert (=> b!482042 (=> (not res!287428) (not e!283672))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!31261 0))(
  ( (array!31262 (arr!15030 (Array (_ BitVec 32) (_ BitVec 64))) (size!15388 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31261)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19491 0))(
  ( (V!19492 (val!6955 Int)) )
))
(declare-datatypes ((ValueCell!6546 0))(
  ( (ValueCellFull!6546 (v!9244 V!19491)) (EmptyCell!6546) )
))
(declare-datatypes ((array!31263 0))(
  ( (array!31264 (arr!15031 (Array (_ BitVec 32) ValueCell!6546)) (size!15389 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31263)

(assert (=> b!482042 (= res!287428 (and (= (size!15389 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15388 _keys!1874) (size!15389 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun res!287426 () Bool)

(assert (=> start!43532 (=> (not res!287426) (not e!283672))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43532 (= res!287426 (validMask!0 mask!2352))))

(assert (=> start!43532 e!283672))

(assert (=> start!43532 true))

(declare-fun tp_is_empty!13815 () Bool)

(assert (=> start!43532 tp_is_empty!13815))

(declare-fun e!283671 () Bool)

(declare-fun array_inv!10820 (array!31263) Bool)

(assert (=> start!43532 (and (array_inv!10820 _values!1516) e!283671)))

(assert (=> start!43532 tp!43192))

(declare-fun array_inv!10821 (array!31261) Bool)

(assert (=> start!43532 (array_inv!10821 _keys!1874)))

(declare-fun mapIsEmpty!22432 () Bool)

(declare-fun mapRes!22432 () Bool)

(assert (=> mapIsEmpty!22432 mapRes!22432))

(declare-fun b!482043 () Bool)

(assert (=> b!482043 (= e!283672 false)))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun lt!218654 () Bool)

(declare-fun minValue!1458 () V!19491)

(declare-fun zeroValue!1458 () V!19491)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9130 0))(
  ( (tuple2!9131 (_1!4575 (_ BitVec 64)) (_2!4575 V!19491)) )
))
(declare-datatypes ((List!9246 0))(
  ( (Nil!9243) (Cons!9242 (h!10098 tuple2!9130) (t!15468 List!9246)) )
))
(declare-datatypes ((ListLongMap!8057 0))(
  ( (ListLongMap!8058 (toList!4044 List!9246)) )
))
(declare-fun contains!2655 (ListLongMap!8057 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2336 (array!31261 array!31263 (_ BitVec 32) (_ BitVec 32) V!19491 V!19491 (_ BitVec 32) Int) ListLongMap!8057)

(assert (=> b!482043 (= lt!218654 (contains!2655 (getCurrentListMap!2336 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!482044 () Bool)

(declare-fun e!283668 () Bool)

(assert (=> b!482044 (= e!283671 (and e!283668 mapRes!22432))))

(declare-fun condMapEmpty!22432 () Bool)

(declare-fun mapDefault!22432 () ValueCell!6546)

(assert (=> b!482044 (= condMapEmpty!22432 (= (arr!15031 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6546)) mapDefault!22432)))))

(declare-fun b!482045 () Bool)

(declare-fun e!283670 () Bool)

(assert (=> b!482045 (= e!283670 tp_is_empty!13815)))

(declare-fun b!482046 () Bool)

(declare-fun res!287427 () Bool)

(assert (=> b!482046 (=> (not res!287427) (not e!283672))))

(declare-datatypes ((List!9247 0))(
  ( (Nil!9244) (Cons!9243 (h!10099 (_ BitVec 64)) (t!15469 List!9247)) )
))
(declare-fun arrayNoDuplicates!0 (array!31261 (_ BitVec 32) List!9247) Bool)

(assert (=> b!482046 (= res!287427 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9244))))

(declare-fun b!482047 () Bool)

(declare-fun res!287425 () Bool)

(assert (=> b!482047 (=> (not res!287425) (not e!283672))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31261 (_ BitVec 32)) Bool)

(assert (=> b!482047 (= res!287425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!482048 () Bool)

(assert (=> b!482048 (= e!283668 tp_is_empty!13815)))

(declare-fun mapNonEmpty!22432 () Bool)

(declare-fun tp!43191 () Bool)

(assert (=> mapNonEmpty!22432 (= mapRes!22432 (and tp!43191 e!283670))))

(declare-fun mapKey!22432 () (_ BitVec 32))

(declare-fun mapRest!22432 () (Array (_ BitVec 32) ValueCell!6546))

(declare-fun mapValue!22432 () ValueCell!6546)

(assert (=> mapNonEmpty!22432 (= (arr!15031 _values!1516) (store mapRest!22432 mapKey!22432 mapValue!22432))))

(assert (= (and start!43532 res!287426) b!482042))

(assert (= (and b!482042 res!287428) b!482047))

(assert (= (and b!482047 res!287425) b!482046))

(assert (= (and b!482046 res!287427) b!482043))

(assert (= (and b!482044 condMapEmpty!22432) mapIsEmpty!22432))

(assert (= (and b!482044 (not condMapEmpty!22432)) mapNonEmpty!22432))

(get-info :version)

(assert (= (and mapNonEmpty!22432 ((_ is ValueCellFull!6546) mapValue!22432)) b!482045))

(assert (= (and b!482044 ((_ is ValueCellFull!6546) mapDefault!22432)) b!482048))

(assert (= start!43532 b!482044))

(declare-fun m!463379 () Bool)

(assert (=> b!482047 m!463379))

(declare-fun m!463381 () Bool)

(assert (=> b!482046 m!463381))

(declare-fun m!463383 () Bool)

(assert (=> start!43532 m!463383))

(declare-fun m!463385 () Bool)

(assert (=> start!43532 m!463385))

(declare-fun m!463387 () Bool)

(assert (=> start!43532 m!463387))

(declare-fun m!463389 () Bool)

(assert (=> mapNonEmpty!22432 m!463389))

(declare-fun m!463391 () Bool)

(assert (=> b!482043 m!463391))

(assert (=> b!482043 m!463391))

(declare-fun m!463393 () Bool)

(assert (=> b!482043 m!463393))

(check-sat (not b!482043) (not b!482046) b_and!21081 (not start!43532) tp_is_empty!13815 (not mapNonEmpty!22432) (not b_next!12303) (not b!482047))
(check-sat b_and!21081 (not b_next!12303))
