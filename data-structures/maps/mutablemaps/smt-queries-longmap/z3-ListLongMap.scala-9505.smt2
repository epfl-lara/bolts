; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112760 () Bool)

(assert start!112760)

(declare-fun b_free!31035 () Bool)

(declare-fun b_next!31035 () Bool)

(assert (=> start!112760 (= b_free!31035 (not b_next!31035))))

(declare-fun tp!108750 () Bool)

(declare-fun b_and!50023 () Bool)

(assert (=> start!112760 (= tp!108750 b_and!50023)))

(declare-fun b!1337043 () Bool)

(declare-fun res!887367 () Bool)

(declare-fun e!761381 () Bool)

(assert (=> b!1337043 (=> (not res!887367) (not e!761381))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90723 0))(
  ( (array!90724 (arr!43821 (Array (_ BitVec 32) (_ BitVec 64))) (size!44372 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90723)

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1337043 (= res!887367 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44372 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1337044 () Bool)

(declare-fun res!887368 () Bool)

(assert (=> b!1337044 (=> (not res!887368) (not e!761381))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90723 (_ BitVec 32)) Bool)

(assert (=> b!1337044 (= res!887368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapIsEmpty!57098 () Bool)

(declare-fun mapRes!57098 () Bool)

(assert (=> mapIsEmpty!57098 mapRes!57098))

(declare-fun mapNonEmpty!57098 () Bool)

(declare-fun tp!108749 () Bool)

(declare-fun e!761383 () Bool)

(assert (=> mapNonEmpty!57098 (= mapRes!57098 (and tp!108749 e!761383))))

(declare-datatypes ((V!54363 0))(
  ( (V!54364 (val!18547 Int)) )
))
(declare-datatypes ((ValueCell!17574 0))(
  ( (ValueCellFull!17574 (v!21186 V!54363)) (EmptyCell!17574) )
))
(declare-datatypes ((array!90725 0))(
  ( (array!90726 (arr!43822 (Array (_ BitVec 32) ValueCell!17574)) (size!44373 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90725)

(declare-fun mapValue!57098 () ValueCell!17574)

(declare-fun mapKey!57098 () (_ BitVec 32))

(declare-fun mapRest!57098 () (Array (_ BitVec 32) ValueCell!17574))

(assert (=> mapNonEmpty!57098 (= (arr!43822 _values!1320) (store mapRest!57098 mapKey!57098 mapValue!57098))))

(declare-fun b!1337045 () Bool)

(declare-fun res!887366 () Bool)

(assert (=> b!1337045 (=> (not res!887366) (not e!761381))))

(declare-datatypes ((List!31239 0))(
  ( (Nil!31236) (Cons!31235 (h!32444 (_ BitVec 64)) (t!45558 List!31239)) )
))
(declare-fun arrayNoDuplicates!0 (array!90723 (_ BitVec 32) List!31239) Bool)

(assert (=> b!1337045 (= res!887366 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31236))))

(declare-fun res!887364 () Bool)

(assert (=> start!112760 (=> (not res!887364) (not e!761381))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112760 (= res!887364 (validMask!0 mask!1998))))

(assert (=> start!112760 e!761381))

(declare-fun e!761380 () Bool)

(declare-fun array_inv!32975 (array!90725) Bool)

(assert (=> start!112760 (and (array_inv!32975 _values!1320) e!761380)))

(assert (=> start!112760 true))

(declare-fun array_inv!32976 (array!90723) Bool)

(assert (=> start!112760 (array_inv!32976 _keys!1590)))

(assert (=> start!112760 tp!108750))

(declare-fun tp_is_empty!36945 () Bool)

(assert (=> start!112760 tp_is_empty!36945))

(declare-fun b!1337046 () Bool)

(assert (=> b!1337046 (= e!761383 tp_is_empty!36945)))

(declare-fun b!1337047 () Bool)

(declare-fun res!887365 () Bool)

(assert (=> b!1337047 (=> (not res!887365) (not e!761381))))

(assert (=> b!1337047 (= res!887365 (and (= (size!44373 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44372 _keys!1590) (size!44373 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1337048 () Bool)

(declare-fun e!761384 () Bool)

(assert (=> b!1337048 (= e!761380 (and e!761384 mapRes!57098))))

(declare-fun condMapEmpty!57098 () Bool)

(declare-fun mapDefault!57098 () ValueCell!17574)

(assert (=> b!1337048 (= condMapEmpty!57098 (= (arr!43822 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17574)) mapDefault!57098)))))

(declare-fun b!1337049 () Bool)

(assert (=> b!1337049 (= e!761384 tp_is_empty!36945)))

(declare-fun b!1337050 () Bool)

(assert (=> b!1337050 (= e!761381 false)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54363)

(declare-fun zeroValue!1262 () V!54363)

(declare-fun lt!593017 () Bool)

(declare-datatypes ((tuple2!24072 0))(
  ( (tuple2!24073 (_1!12046 (_ BitVec 64)) (_2!12046 V!54363)) )
))
(declare-datatypes ((List!31240 0))(
  ( (Nil!31237) (Cons!31236 (h!32445 tuple2!24072) (t!45559 List!31240)) )
))
(declare-datatypes ((ListLongMap!21741 0))(
  ( (ListLongMap!21742 (toList!10886 List!31240)) )
))
(declare-fun contains!8989 (ListLongMap!21741 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5792 (array!90723 array!90725 (_ BitVec 32) (_ BitVec 32) V!54363 V!54363 (_ BitVec 32) Int) ListLongMap!21741)

(assert (=> b!1337050 (= lt!593017 (contains!8989 (getCurrentListMap!5792 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(assert (= (and start!112760 res!887364) b!1337047))

(assert (= (and b!1337047 res!887365) b!1337044))

(assert (= (and b!1337044 res!887368) b!1337045))

(assert (= (and b!1337045 res!887366) b!1337043))

(assert (= (and b!1337043 res!887367) b!1337050))

(assert (= (and b!1337048 condMapEmpty!57098) mapIsEmpty!57098))

(assert (= (and b!1337048 (not condMapEmpty!57098)) mapNonEmpty!57098))

(get-info :version)

(assert (= (and mapNonEmpty!57098 ((_ is ValueCellFull!17574) mapValue!57098)) b!1337046))

(assert (= (and b!1337048 ((_ is ValueCellFull!17574) mapDefault!57098)) b!1337049))

(assert (= start!112760 b!1337048))

(declare-fun m!1225203 () Bool)

(assert (=> mapNonEmpty!57098 m!1225203))

(declare-fun m!1225205 () Bool)

(assert (=> b!1337044 m!1225205))

(declare-fun m!1225207 () Bool)

(assert (=> b!1337050 m!1225207))

(assert (=> b!1337050 m!1225207))

(declare-fun m!1225209 () Bool)

(assert (=> b!1337050 m!1225209))

(declare-fun m!1225211 () Bool)

(assert (=> b!1337045 m!1225211))

(declare-fun m!1225213 () Bool)

(assert (=> start!112760 m!1225213))

(declare-fun m!1225215 () Bool)

(assert (=> start!112760 m!1225215))

(declare-fun m!1225217 () Bool)

(assert (=> start!112760 m!1225217))

(check-sat (not b!1337045) b_and!50023 (not b!1337050) (not b!1337044) tp_is_empty!36945 (not mapNonEmpty!57098) (not b_next!31035) (not start!112760))
(check-sat b_and!50023 (not b_next!31035))
