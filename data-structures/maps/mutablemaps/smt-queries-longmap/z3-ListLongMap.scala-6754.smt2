; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84758 () Bool)

(assert start!84758)

(declare-fun b_free!20085 () Bool)

(declare-fun b_next!20085 () Bool)

(assert (=> start!84758 (= b_free!20085 (not b_next!20085))))

(declare-fun tp!70054 () Bool)

(declare-fun b_and!32273 () Bool)

(assert (=> start!84758 (= tp!70054 b_and!32273)))

(declare-fun b!990678 () Bool)

(declare-fun res!662455 () Bool)

(declare-fun e!558666 () Bool)

(assert (=> b!990678 (=> (not res!662455) (not e!558666))))

(declare-datatypes ((array!62553 0))(
  ( (array!62554 (arr!30123 (Array (_ BitVec 32) (_ BitVec 64))) (size!30603 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62553)

(declare-datatypes ((List!20965 0))(
  ( (Nil!20962) (Cons!20961 (h!22123 (_ BitVec 64)) (t!29950 List!20965)) )
))
(declare-fun arrayNoDuplicates!0 (array!62553 (_ BitVec 32) List!20965) Bool)

(assert (=> b!990678 (= res!662455 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20962))))

(declare-fun b!990679 () Bool)

(declare-fun e!558663 () Bool)

(declare-fun tp_is_empty!23301 () Bool)

(assert (=> b!990679 (= e!558663 tp_is_empty!23301)))

(declare-fun b!990680 () Bool)

(declare-fun e!558664 () Bool)

(assert (=> b!990680 (= e!558664 tp_is_empty!23301)))

(declare-fun b!990681 () Bool)

(declare-fun res!662456 () Bool)

(assert (=> b!990681 (=> (not res!662456) (not e!558666))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!36051 0))(
  ( (V!36052 (val!11701 Int)) )
))
(declare-datatypes ((ValueCell!11169 0))(
  ( (ValueCellFull!11169 (v!14274 V!36051)) (EmptyCell!11169) )
))
(declare-datatypes ((array!62555 0))(
  ( (array!62556 (arr!30124 (Array (_ BitVec 32) ValueCell!11169)) (size!30604 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62555)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!990681 (= res!662456 (and (= (size!30604 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30603 _keys!1544) (size!30604 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!990682 () Bool)

(declare-fun res!662457 () Bool)

(assert (=> b!990682 (=> (not res!662457) (not e!558666))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62553 (_ BitVec 32)) Bool)

(assert (=> b!990682 (= res!662457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!990683 () Bool)

(declare-fun e!558662 () Bool)

(assert (=> b!990683 (= e!558662 false)))

(declare-fun minValue!1220 () V!36051)

(declare-fun zeroValue!1220 () V!36051)

(declare-fun defaultEntry!1281 () Int)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((tuple2!15016 0))(
  ( (tuple2!15017 (_1!7518 (_ BitVec 64)) (_2!7518 V!36051)) )
))
(declare-datatypes ((List!20966 0))(
  ( (Nil!20963) (Cons!20962 (h!22124 tuple2!15016) (t!29951 List!20966)) )
))
(declare-datatypes ((ListLongMap!13727 0))(
  ( (ListLongMap!13728 (toList!6879 List!20966)) )
))
(declare-fun lt!439627 () ListLongMap!13727)

(declare-fun getCurrentListMap!3888 (array!62553 array!62555 (_ BitVec 32) (_ BitVec 32) V!36051 V!36051 (_ BitVec 32) Int) ListLongMap!13727)

(assert (=> b!990683 (= lt!439627 (getCurrentListMap!3888 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!990684 () Bool)

(assert (=> b!990684 (= e!558666 e!558662)))

(declare-fun res!662458 () Bool)

(assert (=> b!990684 (=> (not res!662458) (not e!558662))))

(declare-fun lt!439626 () Bool)

(assert (=> b!990684 (= res!662458 (and (or lt!439626 (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (or lt!439626 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (or (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not lt!439626))))))

(assert (=> b!990684 (= lt!439626 (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun res!662454 () Bool)

(assert (=> start!84758 (=> (not res!662454) (not e!558666))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84758 (= res!662454 (validMask!0 mask!1948))))

(assert (=> start!84758 e!558666))

(assert (=> start!84758 true))

(assert (=> start!84758 tp_is_empty!23301))

(declare-fun e!558665 () Bool)

(declare-fun array_inv!23131 (array!62555) Bool)

(assert (=> start!84758 (and (array_inv!23131 _values!1278) e!558665)))

(assert (=> start!84758 tp!70054))

(declare-fun array_inv!23132 (array!62553) Bool)

(assert (=> start!84758 (array_inv!23132 _keys!1544)))

(declare-fun b!990685 () Bool)

(declare-fun res!662453 () Bool)

(assert (=> b!990685 (=> (not res!662453) (not e!558666))))

(assert (=> b!990685 (= res!662453 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30603 _keys!1544))))))

(declare-fun b!990686 () Bool)

(declare-fun res!662452 () Bool)

(assert (=> b!990686 (=> (not res!662452) (not e!558666))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!990686 (= res!662452 (validKeyInArray!0 (select (arr!30123 _keys!1544) from!1932)))))

(declare-fun mapNonEmpty!37004 () Bool)

(declare-fun mapRes!37004 () Bool)

(declare-fun tp!70055 () Bool)

(assert (=> mapNonEmpty!37004 (= mapRes!37004 (and tp!70055 e!558663))))

(declare-fun mapValue!37004 () ValueCell!11169)

(declare-fun mapKey!37004 () (_ BitVec 32))

(declare-fun mapRest!37004 () (Array (_ BitVec 32) ValueCell!11169))

(assert (=> mapNonEmpty!37004 (= (arr!30124 _values!1278) (store mapRest!37004 mapKey!37004 mapValue!37004))))

(declare-fun mapIsEmpty!37004 () Bool)

(assert (=> mapIsEmpty!37004 mapRes!37004))

(declare-fun b!990687 () Bool)

(assert (=> b!990687 (= e!558665 (and e!558664 mapRes!37004))))

(declare-fun condMapEmpty!37004 () Bool)

(declare-fun mapDefault!37004 () ValueCell!11169)

(assert (=> b!990687 (= condMapEmpty!37004 (= (arr!30124 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11169)) mapDefault!37004)))))

(assert (= (and start!84758 res!662454) b!990681))

(assert (= (and b!990681 res!662456) b!990682))

(assert (= (and b!990682 res!662457) b!990678))

(assert (= (and b!990678 res!662455) b!990685))

(assert (= (and b!990685 res!662453) b!990686))

(assert (= (and b!990686 res!662452) b!990684))

(assert (= (and b!990684 res!662458) b!990683))

(assert (= (and b!990687 condMapEmpty!37004) mapIsEmpty!37004))

(assert (= (and b!990687 (not condMapEmpty!37004)) mapNonEmpty!37004))

(get-info :version)

(assert (= (and mapNonEmpty!37004 ((_ is ValueCellFull!11169) mapValue!37004)) b!990679))

(assert (= (and b!990687 ((_ is ValueCellFull!11169) mapDefault!37004)) b!990680))

(assert (= start!84758 b!990687))

(declare-fun m!918595 () Bool)

(assert (=> mapNonEmpty!37004 m!918595))

(declare-fun m!918597 () Bool)

(assert (=> b!990686 m!918597))

(assert (=> b!990686 m!918597))

(declare-fun m!918599 () Bool)

(assert (=> b!990686 m!918599))

(declare-fun m!918601 () Bool)

(assert (=> b!990682 m!918601))

(declare-fun m!918603 () Bool)

(assert (=> b!990678 m!918603))

(declare-fun m!918605 () Bool)

(assert (=> start!84758 m!918605))

(declare-fun m!918607 () Bool)

(assert (=> start!84758 m!918607))

(declare-fun m!918609 () Bool)

(assert (=> start!84758 m!918609))

(declare-fun m!918611 () Bool)

(assert (=> b!990683 m!918611))

(check-sat (not mapNonEmpty!37004) (not b!990686) (not b_next!20085) (not b!990682) b_and!32273 (not b!990678) tp_is_empty!23301 (not start!84758) (not b!990683))
(check-sat b_and!32273 (not b_next!20085))
