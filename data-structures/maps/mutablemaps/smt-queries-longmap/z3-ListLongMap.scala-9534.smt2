; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113104 () Bool)

(assert start!113104)

(declare-fun b_free!31119 () Bool)

(declare-fun b_next!31119 () Bool)

(assert (=> start!113104 (= b_free!31119 (not b_next!31119))))

(declare-fun tp!109162 () Bool)

(declare-fun b_and!50159 () Bool)

(assert (=> start!113104 (= tp!109162 b_and!50159)))

(declare-fun mapIsEmpty!57385 () Bool)

(declare-fun mapRes!57385 () Bool)

(assert (=> mapIsEmpty!57385 mapRes!57385))

(declare-fun b!1340062 () Bool)

(declare-fun res!889028 () Bool)

(declare-fun e!763346 () Bool)

(assert (=> b!1340062 (=> (not res!889028) (not e!763346))))

(declare-datatypes ((array!91051 0))(
  ( (array!91052 (arr!43977 (Array (_ BitVec 32) (_ BitVec 64))) (size!44528 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91051)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91051 (_ BitVec 32)) Bool)

(assert (=> b!1340062 (= res!889028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1340063 () Bool)

(declare-fun e!763343 () Bool)

(declare-fun e!763342 () Bool)

(assert (=> b!1340063 (= e!763343 (and e!763342 mapRes!57385))))

(declare-fun condMapEmpty!57385 () Bool)

(declare-datatypes ((V!54595 0))(
  ( (V!54596 (val!18634 Int)) )
))
(declare-datatypes ((ValueCell!17661 0))(
  ( (ValueCellFull!17661 (v!21280 V!54595)) (EmptyCell!17661) )
))
(declare-datatypes ((array!91053 0))(
  ( (array!91054 (arr!43978 (Array (_ BitVec 32) ValueCell!17661)) (size!44529 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91053)

(declare-fun mapDefault!57385 () ValueCell!17661)

(assert (=> b!1340063 (= condMapEmpty!57385 (= (arr!43978 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17661)) mapDefault!57385)))))

(declare-fun b!1340064 () Bool)

(declare-fun res!889033 () Bool)

(assert (=> b!1340064 (=> (not res!889033) (not e!763346))))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1340064 (= res!889033 (validKeyInArray!0 (select (arr!43977 _keys!1571) from!1960)))))

(declare-fun res!889029 () Bool)

(assert (=> start!113104 (=> (not res!889029) (not e!763346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113104 (= res!889029 (validMask!0 mask!1977))))

(assert (=> start!113104 e!763346))

(declare-fun tp_is_empty!37119 () Bool)

(assert (=> start!113104 tp_is_empty!37119))

(assert (=> start!113104 true))

(declare-fun array_inv!33081 (array!91051) Bool)

(assert (=> start!113104 (array_inv!33081 _keys!1571)))

(declare-fun array_inv!33082 (array!91053) Bool)

(assert (=> start!113104 (and (array_inv!33082 _values!1303) e!763343)))

(assert (=> start!113104 tp!109162))

(declare-fun b!1340065 () Bool)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1340065 (= e!763346 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000)))))

(declare-fun b!1340066 () Bool)

(declare-fun res!889034 () Bool)

(assert (=> b!1340066 (=> (not res!889034) (not e!763346))))

(assert (=> b!1340066 (= res!889034 (and (= (size!44529 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44528 _keys!1571) (size!44529 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1340067 () Bool)

(declare-fun e!763345 () Bool)

(assert (=> b!1340067 (= e!763345 tp_is_empty!37119)))

(declare-fun b!1340068 () Bool)

(declare-fun res!889032 () Bool)

(assert (=> b!1340068 (=> (not res!889032) (not e!763346))))

(declare-fun k0!1142 () (_ BitVec 64))

(assert (=> b!1340068 (= res!889032 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44528 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!57385 () Bool)

(declare-fun tp!109163 () Bool)

(assert (=> mapNonEmpty!57385 (= mapRes!57385 (and tp!109163 e!763345))))

(declare-fun mapRest!57385 () (Array (_ BitVec 32) ValueCell!17661))

(declare-fun mapKey!57385 () (_ BitVec 32))

(declare-fun mapValue!57385 () ValueCell!17661)

(assert (=> mapNonEmpty!57385 (= (arr!43978 _values!1303) (store mapRest!57385 mapKey!57385 mapValue!57385))))

(declare-fun b!1340069 () Bool)

(declare-fun res!889031 () Bool)

(assert (=> b!1340069 (=> (not res!889031) (not e!763346))))

(declare-fun minValue!1245 () V!54595)

(declare-fun zeroValue!1245 () V!54595)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24132 0))(
  ( (tuple2!24133 (_1!12076 (_ BitVec 64)) (_2!12076 V!54595)) )
))
(declare-datatypes ((List!31318 0))(
  ( (Nil!31315) (Cons!31314 (h!32523 tuple2!24132) (t!45657 List!31318)) )
))
(declare-datatypes ((ListLongMap!21801 0))(
  ( (ListLongMap!21802 (toList!10916 List!31318)) )
))
(declare-fun contains!9028 (ListLongMap!21801 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5820 (array!91051 array!91053 (_ BitVec 32) (_ BitVec 32) V!54595 V!54595 (_ BitVec 32) Int) ListLongMap!21801)

(assert (=> b!1340069 (= res!889031 (contains!9028 (getCurrentListMap!5820 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1340070 () Bool)

(assert (=> b!1340070 (= e!763342 tp_is_empty!37119)))

(declare-fun b!1340071 () Bool)

(declare-fun res!889030 () Bool)

(assert (=> b!1340071 (=> (not res!889030) (not e!763346))))

(assert (=> b!1340071 (= res!889030 (not (= (select (arr!43977 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1340072 () Bool)

(declare-fun res!889027 () Bool)

(assert (=> b!1340072 (=> (not res!889027) (not e!763346))))

(declare-datatypes ((List!31319 0))(
  ( (Nil!31316) (Cons!31315 (h!32524 (_ BitVec 64)) (t!45658 List!31319)) )
))
(declare-fun arrayNoDuplicates!0 (array!91051 (_ BitVec 32) List!31319) Bool)

(assert (=> b!1340072 (= res!889027 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31316))))

(assert (= (and start!113104 res!889029) b!1340066))

(assert (= (and b!1340066 res!889034) b!1340062))

(assert (= (and b!1340062 res!889028) b!1340072))

(assert (= (and b!1340072 res!889027) b!1340068))

(assert (= (and b!1340068 res!889032) b!1340069))

(assert (= (and b!1340069 res!889031) b!1340071))

(assert (= (and b!1340071 res!889030) b!1340064))

(assert (= (and b!1340064 res!889033) b!1340065))

(assert (= (and b!1340063 condMapEmpty!57385) mapIsEmpty!57385))

(assert (= (and b!1340063 (not condMapEmpty!57385)) mapNonEmpty!57385))

(get-info :version)

(assert (= (and mapNonEmpty!57385 ((_ is ValueCellFull!17661) mapValue!57385)) b!1340067))

(assert (= (and b!1340063 ((_ is ValueCellFull!17661) mapDefault!57385)) b!1340070))

(assert (= start!113104 b!1340063))

(declare-fun m!1227909 () Bool)

(assert (=> mapNonEmpty!57385 m!1227909))

(declare-fun m!1227911 () Bool)

(assert (=> b!1340064 m!1227911))

(assert (=> b!1340064 m!1227911))

(declare-fun m!1227913 () Bool)

(assert (=> b!1340064 m!1227913))

(declare-fun m!1227915 () Bool)

(assert (=> b!1340069 m!1227915))

(assert (=> b!1340069 m!1227915))

(declare-fun m!1227917 () Bool)

(assert (=> b!1340069 m!1227917))

(assert (=> b!1340071 m!1227911))

(declare-fun m!1227919 () Bool)

(assert (=> b!1340062 m!1227919))

(declare-fun m!1227921 () Bool)

(assert (=> start!113104 m!1227921))

(declare-fun m!1227923 () Bool)

(assert (=> start!113104 m!1227923))

(declare-fun m!1227925 () Bool)

(assert (=> start!113104 m!1227925))

(declare-fun m!1227927 () Bool)

(assert (=> b!1340072 m!1227927))

(check-sat (not b!1340064) (not b!1340069) (not b!1340072) (not start!113104) (not mapNonEmpty!57385) (not b_next!31119) tp_is_empty!37119 b_and!50159 (not b!1340062))
(check-sat b_and!50159 (not b_next!31119))
