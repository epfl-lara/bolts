; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109368 () Bool)

(assert start!109368)

(declare-fun b_free!28821 () Bool)

(declare-fun b_next!28821 () Bool)

(assert (=> start!109368 (= b_free!28821 (not b_next!28821))))

(declare-fun tp!101582 () Bool)

(declare-fun b_and!46921 () Bool)

(assert (=> start!109368 (= tp!101582 b_and!46921)))

(declare-fun b!1293877 () Bool)

(declare-fun e!738415 () Bool)

(declare-fun tp_is_empty!34461 () Bool)

(assert (=> b!1293877 (= e!738415 tp_is_empty!34461)))

(declare-fun b!1293879 () Bool)

(declare-fun res!859926 () Bool)

(declare-fun e!738416 () Bool)

(assert (=> b!1293879 (=> (not res!859926) (not e!738416))))

(declare-datatypes ((array!85909 0))(
  ( (array!85910 (arr!41451 (Array (_ BitVec 32) (_ BitVec 64))) (size!42002 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85909)

(declare-datatypes ((List!29595 0))(
  ( (Nil!29592) (Cons!29591 (h!30800 (_ BitVec 64)) (t!43166 List!29595)) )
))
(declare-fun arrayNoDuplicates!0 (array!85909 (_ BitVec 32) List!29595) Bool)

(assert (=> b!1293879 (= res!859926 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29592))))

(declare-fun b!1293880 () Bool)

(declare-fun res!859919 () Bool)

(assert (=> b!1293880 (=> (not res!859919) (not e!738416))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51051 0))(
  ( (V!51052 (val!17305 Int)) )
))
(declare-datatypes ((ValueCell!16332 0))(
  ( (ValueCellFull!16332 (v!19906 V!51051)) (EmptyCell!16332) )
))
(declare-datatypes ((array!85911 0))(
  ( (array!85912 (arr!41452 (Array (_ BitVec 32) ValueCell!16332)) (size!42003 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85911)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1293880 (= res!859919 (and (= (size!42003 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42002 _keys!1741) (size!42003 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1293881 () Bool)

(declare-fun res!859923 () Bool)

(assert (=> b!1293881 (=> (not res!859923) (not e!738416))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1293881 (= res!859923 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42002 _keys!1741))))))

(declare-fun b!1293882 () Bool)

(declare-fun res!859925 () Bool)

(assert (=> b!1293882 (=> (not res!859925) (not e!738416))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1293882 (= res!859925 (not (validKeyInArray!0 (select (arr!41451 _keys!1741) from!2144))))))

(declare-fun b!1293883 () Bool)

(declare-fun e!738417 () Bool)

(assert (=> b!1293883 (= e!738417 tp_is_empty!34461)))

(declare-fun mapNonEmpty!53252 () Bool)

(declare-fun mapRes!53252 () Bool)

(declare-fun tp!101583 () Bool)

(assert (=> mapNonEmpty!53252 (= mapRes!53252 (and tp!101583 e!738415))))

(declare-fun mapValue!53252 () ValueCell!16332)

(declare-fun mapKey!53252 () (_ BitVec 32))

(declare-fun mapRest!53252 () (Array (_ BitVec 32) ValueCell!16332))

(assert (=> mapNonEmpty!53252 (= (arr!41452 _values!1445) (store mapRest!53252 mapKey!53252 mapValue!53252))))

(declare-fun b!1293884 () Bool)

(declare-fun e!738418 () Bool)

(assert (=> b!1293884 (= e!738418 (and e!738417 mapRes!53252))))

(declare-fun condMapEmpty!53252 () Bool)

(declare-fun mapDefault!53252 () ValueCell!16332)

(assert (=> b!1293884 (= condMapEmpty!53252 (= (arr!41452 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16332)) mapDefault!53252)))))

(declare-fun res!859924 () Bool)

(assert (=> start!109368 (=> (not res!859924) (not e!738416))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109368 (= res!859924 (validMask!0 mask!2175))))

(assert (=> start!109368 e!738416))

(assert (=> start!109368 tp_is_empty!34461))

(assert (=> start!109368 true))

(declare-fun array_inv!31373 (array!85911) Bool)

(assert (=> start!109368 (and (array_inv!31373 _values!1445) e!738418)))

(declare-fun array_inv!31374 (array!85909) Bool)

(assert (=> start!109368 (array_inv!31374 _keys!1741)))

(assert (=> start!109368 tp!101582))

(declare-fun b!1293878 () Bool)

(declare-fun res!859920 () Bool)

(assert (=> b!1293878 (=> (not res!859920) (not e!738416))))

(assert (=> b!1293878 (= res!859920 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42002 _keys!1741))))))

(declare-fun b!1293885 () Bool)

(declare-fun res!859922 () Bool)

(assert (=> b!1293885 (=> (not res!859922) (not e!738416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85909 (_ BitVec 32)) Bool)

(assert (=> b!1293885 (= res!859922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1293886 () Bool)

(declare-fun res!859921 () Bool)

(assert (=> b!1293886 (=> (not res!859921) (not e!738416))))

(declare-fun minValue!1387 () V!51051)

(declare-fun zeroValue!1387 () V!51051)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22416 0))(
  ( (tuple2!22417 (_1!11218 (_ BitVec 64)) (_2!11218 V!51051)) )
))
(declare-datatypes ((List!29596 0))(
  ( (Nil!29593) (Cons!29592 (h!30801 tuple2!22416) (t!43167 List!29596)) )
))
(declare-datatypes ((ListLongMap!20085 0))(
  ( (ListLongMap!20086 (toList!10058 List!29596)) )
))
(declare-fun contains!8114 (ListLongMap!20085 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5044 (array!85909 array!85911 (_ BitVec 32) (_ BitVec 32) V!51051 V!51051 (_ BitVec 32) Int) ListLongMap!20085)

(assert (=> b!1293886 (= res!859921 (contains!8114 (getCurrentListMap!5044 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapIsEmpty!53252 () Bool)

(assert (=> mapIsEmpty!53252 mapRes!53252))

(declare-fun b!1293887 () Bool)

(assert (=> b!1293887 (= e!738416 (not true))))

(assert (=> b!1293887 (not (contains!8114 (ListLongMap!20086 Nil!29593) k0!1205))))

(declare-datatypes ((Unit!42791 0))(
  ( (Unit!42792) )
))
(declare-fun lt!579610 () Unit!42791)

(declare-fun emptyContainsNothing!152 ((_ BitVec 64)) Unit!42791)

(assert (=> b!1293887 (= lt!579610 (emptyContainsNothing!152 k0!1205))))

(assert (= (and start!109368 res!859924) b!1293880))

(assert (= (and b!1293880 res!859919) b!1293885))

(assert (= (and b!1293885 res!859922) b!1293879))

(assert (= (and b!1293879 res!859926) b!1293878))

(assert (= (and b!1293878 res!859920) b!1293886))

(assert (= (and b!1293886 res!859921) b!1293881))

(assert (= (and b!1293881 res!859923) b!1293882))

(assert (= (and b!1293882 res!859925) b!1293887))

(assert (= (and b!1293884 condMapEmpty!53252) mapIsEmpty!53252))

(assert (= (and b!1293884 (not condMapEmpty!53252)) mapNonEmpty!53252))

(get-info :version)

(assert (= (and mapNonEmpty!53252 ((_ is ValueCellFull!16332) mapValue!53252)) b!1293877))

(assert (= (and b!1293884 ((_ is ValueCellFull!16332) mapDefault!53252)) b!1293883))

(assert (= start!109368 b!1293884))

(declare-fun m!1186253 () Bool)

(assert (=> start!109368 m!1186253))

(declare-fun m!1186255 () Bool)

(assert (=> start!109368 m!1186255))

(declare-fun m!1186257 () Bool)

(assert (=> start!109368 m!1186257))

(declare-fun m!1186259 () Bool)

(assert (=> mapNonEmpty!53252 m!1186259))

(declare-fun m!1186261 () Bool)

(assert (=> b!1293879 m!1186261))

(declare-fun m!1186263 () Bool)

(assert (=> b!1293887 m!1186263))

(declare-fun m!1186265 () Bool)

(assert (=> b!1293887 m!1186265))

(declare-fun m!1186267 () Bool)

(assert (=> b!1293882 m!1186267))

(assert (=> b!1293882 m!1186267))

(declare-fun m!1186269 () Bool)

(assert (=> b!1293882 m!1186269))

(declare-fun m!1186271 () Bool)

(assert (=> b!1293886 m!1186271))

(assert (=> b!1293886 m!1186271))

(declare-fun m!1186273 () Bool)

(assert (=> b!1293886 m!1186273))

(declare-fun m!1186275 () Bool)

(assert (=> b!1293885 m!1186275))

(check-sat (not b_next!28821) b_and!46921 (not b!1293886) (not b!1293887) (not b!1293885) (not b!1293882) (not start!109368) (not b!1293879) (not mapNonEmpty!53252) tp_is_empty!34461)
(check-sat b_and!46921 (not b_next!28821))
