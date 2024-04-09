; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108852 () Bool)

(assert start!108852)

(declare-fun b_free!28329 () Bool)

(declare-fun b_next!28329 () Bool)

(assert (=> start!108852 (= b_free!28329 (not b_next!28329))))

(declare-fun tp!100103 () Bool)

(declare-fun b_and!46405 () Bool)

(assert (=> start!108852 (= tp!100103 b_and!46405)))

(declare-fun mapIsEmpty!52511 () Bool)

(declare-fun mapRes!52511 () Bool)

(assert (=> mapIsEmpty!52511 mapRes!52511))

(declare-fun b!1284966 () Bool)

(declare-fun res!853716 () Bool)

(declare-fun e!734003 () Bool)

(assert (=> b!1284966 (=> (not res!853716) (not e!734003))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((array!84953 0))(
  ( (array!84954 (arr!40974 (Array (_ BitVec 32) (_ BitVec 64))) (size!41525 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84953)

(assert (=> b!1284966 (= res!853716 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41525 _keys!1741))))))

(declare-fun b!1284967 () Bool)

(declare-fun res!853714 () Bool)

(assert (=> b!1284967 (=> (not res!853714) (not e!734003))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1284967 (= res!853714 (and (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!1284968 () Bool)

(declare-fun e!734004 () Bool)

(declare-fun tp_is_empty!33969 () Bool)

(assert (=> b!1284968 (= e!734004 tp_is_empty!33969)))

(declare-fun b!1284969 () Bool)

(declare-fun res!853719 () Bool)

(assert (=> b!1284969 (=> (not res!853719) (not e!734003))))

(assert (=> b!1284969 (= res!853719 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41525 _keys!1741))))))

(declare-fun b!1284970 () Bool)

(assert (=> b!1284970 (= e!734003 false)))

(declare-datatypes ((V!50395 0))(
  ( (V!50396 (val!17059 Int)) )
))
(declare-fun minValue!1387 () V!50395)

(declare-fun zeroValue!1387 () V!50395)

(declare-fun lt!576807 () Bool)

(declare-datatypes ((ValueCell!16086 0))(
  ( (ValueCellFull!16086 (v!19659 V!50395)) (EmptyCell!16086) )
))
(declare-datatypes ((array!84955 0))(
  ( (array!84956 (arr!40975 (Array (_ BitVec 32) ValueCell!16086)) (size!41526 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84955)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21996 0))(
  ( (tuple2!21997 (_1!11008 (_ BitVec 64)) (_2!11008 V!50395)) )
))
(declare-datatypes ((List!29209 0))(
  ( (Nil!29206) (Cons!29205 (h!30414 tuple2!21996) (t!42760 List!29209)) )
))
(declare-datatypes ((ListLongMap!19665 0))(
  ( (ListLongMap!19666 (toList!9848 List!29209)) )
))
(declare-fun contains!7903 (ListLongMap!19665 (_ BitVec 64)) Bool)

(declare-fun +!4277 (ListLongMap!19665 tuple2!21996) ListLongMap!19665)

(declare-fun getCurrentListMapNoExtraKeys!5988 (array!84953 array!84955 (_ BitVec 32) (_ BitVec 32) V!50395 V!50395 (_ BitVec 32) Int) ListLongMap!19665)

(assert (=> b!1284970 (= lt!576807 (contains!7903 (+!4277 (getCurrentListMapNoExtraKeys!5988 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21997 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun b!1284971 () Bool)

(declare-fun res!853711 () Bool)

(assert (=> b!1284971 (=> (not res!853711) (not e!734003))))

(declare-datatypes ((List!29210 0))(
  ( (Nil!29207) (Cons!29206 (h!30415 (_ BitVec 64)) (t!42761 List!29210)) )
))
(declare-fun arrayNoDuplicates!0 (array!84953 (_ BitVec 32) List!29210) Bool)

(assert (=> b!1284971 (= res!853711 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29207))))

(declare-fun b!1284972 () Bool)

(declare-fun e!734005 () Bool)

(assert (=> b!1284972 (= e!734005 tp_is_empty!33969)))

(declare-fun b!1284965 () Bool)

(declare-fun e!734001 () Bool)

(assert (=> b!1284965 (= e!734001 (and e!734005 mapRes!52511))))

(declare-fun condMapEmpty!52511 () Bool)

(declare-fun mapDefault!52511 () ValueCell!16086)

(assert (=> b!1284965 (= condMapEmpty!52511 (= (arr!40975 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16086)) mapDefault!52511)))))

(declare-fun res!853718 () Bool)

(assert (=> start!108852 (=> (not res!853718) (not e!734003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108852 (= res!853718 (validMask!0 mask!2175))))

(assert (=> start!108852 e!734003))

(assert (=> start!108852 tp_is_empty!33969))

(assert (=> start!108852 true))

(declare-fun array_inv!31055 (array!84955) Bool)

(assert (=> start!108852 (and (array_inv!31055 _values!1445) e!734001)))

(declare-fun array_inv!31056 (array!84953) Bool)

(assert (=> start!108852 (array_inv!31056 _keys!1741)))

(assert (=> start!108852 tp!100103))

(declare-fun b!1284973 () Bool)

(declare-fun res!853713 () Bool)

(assert (=> b!1284973 (=> (not res!853713) (not e!734003))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1284973 (= res!853713 (validKeyInArray!0 (select (arr!40974 _keys!1741) from!2144)))))

(declare-fun b!1284974 () Bool)

(declare-fun res!853715 () Bool)

(assert (=> b!1284974 (=> (not res!853715) (not e!734003))))

(assert (=> b!1284974 (= res!853715 (and (= (size!41526 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41525 _keys!1741) (size!41526 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1284975 () Bool)

(declare-fun res!853712 () Bool)

(assert (=> b!1284975 (=> (not res!853712) (not e!734003))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84953 (_ BitVec 32)) Bool)

(assert (=> b!1284975 (= res!853712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1284976 () Bool)

(declare-fun res!853717 () Bool)

(assert (=> b!1284976 (=> (not res!853717) (not e!734003))))

(declare-fun getCurrentListMap!4864 (array!84953 array!84955 (_ BitVec 32) (_ BitVec 32) V!50395 V!50395 (_ BitVec 32) Int) ListLongMap!19665)

(assert (=> b!1284976 (= res!853717 (contains!7903 (getCurrentListMap!4864 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapNonEmpty!52511 () Bool)

(declare-fun tp!100104 () Bool)

(assert (=> mapNonEmpty!52511 (= mapRes!52511 (and tp!100104 e!734004))))

(declare-fun mapRest!52511 () (Array (_ BitVec 32) ValueCell!16086))

(declare-fun mapKey!52511 () (_ BitVec 32))

(declare-fun mapValue!52511 () ValueCell!16086)

(assert (=> mapNonEmpty!52511 (= (arr!40975 _values!1445) (store mapRest!52511 mapKey!52511 mapValue!52511))))

(assert (= (and start!108852 res!853718) b!1284974))

(assert (= (and b!1284974 res!853715) b!1284975))

(assert (= (and b!1284975 res!853712) b!1284971))

(assert (= (and b!1284971 res!853711) b!1284969))

(assert (= (and b!1284969 res!853719) b!1284976))

(assert (= (and b!1284976 res!853717) b!1284966))

(assert (= (and b!1284966 res!853716) b!1284973))

(assert (= (and b!1284973 res!853713) b!1284967))

(assert (= (and b!1284967 res!853714) b!1284970))

(assert (= (and b!1284965 condMapEmpty!52511) mapIsEmpty!52511))

(assert (= (and b!1284965 (not condMapEmpty!52511)) mapNonEmpty!52511))

(get-info :version)

(assert (= (and mapNonEmpty!52511 ((_ is ValueCellFull!16086) mapValue!52511)) b!1284968))

(assert (= (and b!1284965 ((_ is ValueCellFull!16086) mapDefault!52511)) b!1284972))

(assert (= start!108852 b!1284965))

(declare-fun m!1178483 () Bool)

(assert (=> start!108852 m!1178483))

(declare-fun m!1178485 () Bool)

(assert (=> start!108852 m!1178485))

(declare-fun m!1178487 () Bool)

(assert (=> start!108852 m!1178487))

(declare-fun m!1178489 () Bool)

(assert (=> b!1284973 m!1178489))

(assert (=> b!1284973 m!1178489))

(declare-fun m!1178491 () Bool)

(assert (=> b!1284973 m!1178491))

(declare-fun m!1178493 () Bool)

(assert (=> mapNonEmpty!52511 m!1178493))

(declare-fun m!1178495 () Bool)

(assert (=> b!1284971 m!1178495))

(declare-fun m!1178497 () Bool)

(assert (=> b!1284976 m!1178497))

(assert (=> b!1284976 m!1178497))

(declare-fun m!1178499 () Bool)

(assert (=> b!1284976 m!1178499))

(declare-fun m!1178501 () Bool)

(assert (=> b!1284975 m!1178501))

(declare-fun m!1178503 () Bool)

(assert (=> b!1284970 m!1178503))

(assert (=> b!1284970 m!1178503))

(declare-fun m!1178505 () Bool)

(assert (=> b!1284970 m!1178505))

(assert (=> b!1284970 m!1178505))

(declare-fun m!1178507 () Bool)

(assert (=> b!1284970 m!1178507))

(check-sat (not b!1284975) (not b!1284973) (not b!1284976) (not mapNonEmpty!52511) (not b!1284970) (not b_next!28329) (not start!108852) (not b!1284971) tp_is_empty!33969 b_and!46405)
(check-sat b_and!46405 (not b_next!28329))
