; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97176 () Bool)

(assert start!97176)

(declare-fun b!1104956 () Bool)

(declare-fun e!630714 () Bool)

(declare-datatypes ((array!71648 0))(
  ( (array!71649 (arr!34474 (Array (_ BitVec 32) (_ BitVec 64))) (size!35011 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71648)

(assert (=> b!1104956 (= e!630714 (not (bvslt #b00000000000000000000000000000000 (size!35011 _keys!1208))))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71648 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1104956 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36193 0))(
  ( (Unit!36194) )
))
(declare-fun lt!495209 () Unit!36193)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71648 (_ BitVec 64) (_ BitVec 32)) Unit!36193)

(assert (=> b!1104956 (= lt!495209 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1104957 () Bool)

(declare-fun res!737335 () Bool)

(declare-fun e!630710 () Bool)

(assert (=> b!1104957 (=> (not res!737335) (not e!630710))))

(assert (=> b!1104957 (= res!737335 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35011 _keys!1208))))))

(declare-fun b!1104958 () Bool)

(declare-fun res!737334 () Bool)

(assert (=> b!1104958 (=> (not res!737334) (not e!630710))))

(assert (=> b!1104958 (= res!737334 (= (select (arr!34474 _keys!1208) i!673) k0!934))))

(declare-fun b!1104959 () Bool)

(declare-fun res!737336 () Bool)

(assert (=> b!1104959 (=> (not res!737336) (not e!630710))))

(declare-datatypes ((List!24188 0))(
  ( (Nil!24185) (Cons!24184 (h!25393 (_ BitVec 64)) (t!34460 List!24188)) )
))
(declare-fun arrayNoDuplicates!0 (array!71648 (_ BitVec 32) List!24188) Bool)

(assert (=> b!1104959 (= res!737336 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24185))))

(declare-fun b!1104960 () Bool)

(declare-fun e!630713 () Bool)

(declare-fun tp_is_empty!27387 () Bool)

(assert (=> b!1104960 (= e!630713 tp_is_empty!27387)))

(declare-fun b!1104961 () Bool)

(declare-fun res!737337 () Bool)

(assert (=> b!1104961 (=> (not res!737337) (not e!630710))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71648 (_ BitVec 32)) Bool)

(assert (=> b!1104961 (= res!737337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!737340 () Bool)

(assert (=> start!97176 (=> (not res!737340) (not e!630710))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97176 (= res!737340 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35011 _keys!1208))))))

(assert (=> start!97176 e!630710))

(declare-fun array_inv!26400 (array!71648) Bool)

(assert (=> start!97176 (array_inv!26400 _keys!1208)))

(assert (=> start!97176 true))

(declare-datatypes ((V!41643 0))(
  ( (V!41644 (val!13750 Int)) )
))
(declare-datatypes ((ValueCell!12984 0))(
  ( (ValueCellFull!12984 (v!16384 V!41643)) (EmptyCell!12984) )
))
(declare-datatypes ((array!71650 0))(
  ( (array!71651 (arr!34475 (Array (_ BitVec 32) ValueCell!12984)) (size!35012 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71650)

(declare-fun e!630715 () Bool)

(declare-fun array_inv!26401 (array!71650) Bool)

(assert (=> start!97176 (and (array_inv!26401 _values!996) e!630715)))

(declare-fun b!1104962 () Bool)

(declare-fun res!737338 () Bool)

(assert (=> b!1104962 (=> (not res!737338) (not e!630710))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1104962 (= res!737338 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!42895 () Bool)

(declare-fun mapRes!42895 () Bool)

(assert (=> mapIsEmpty!42895 mapRes!42895))

(declare-fun mapNonEmpty!42895 () Bool)

(declare-fun tp!81816 () Bool)

(assert (=> mapNonEmpty!42895 (= mapRes!42895 (and tp!81816 e!630713))))

(declare-fun mapValue!42895 () ValueCell!12984)

(declare-fun mapRest!42895 () (Array (_ BitVec 32) ValueCell!12984))

(declare-fun mapKey!42895 () (_ BitVec 32))

(assert (=> mapNonEmpty!42895 (= (arr!34475 _values!996) (store mapRest!42895 mapKey!42895 mapValue!42895))))

(declare-fun b!1104963 () Bool)

(declare-fun e!630711 () Bool)

(assert (=> b!1104963 (= e!630711 tp_is_empty!27387)))

(declare-fun b!1104964 () Bool)

(declare-fun res!737341 () Bool)

(assert (=> b!1104964 (=> (not res!737341) (not e!630714))))

(declare-fun lt!495210 () array!71648)

(assert (=> b!1104964 (= res!737341 (arrayNoDuplicates!0 lt!495210 #b00000000000000000000000000000000 Nil!24185))))

(declare-fun b!1104965 () Bool)

(declare-fun res!737332 () Bool)

(assert (=> b!1104965 (=> (not res!737332) (not e!630710))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1104965 (= res!737332 (and (= (size!35012 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35011 _keys!1208) (size!35012 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1104966 () Bool)

(declare-fun res!737333 () Bool)

(assert (=> b!1104966 (=> (not res!737333) (not e!630710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1104966 (= res!737333 (validMask!0 mask!1564))))

(declare-fun b!1104967 () Bool)

(assert (=> b!1104967 (= e!630715 (and e!630711 mapRes!42895))))

(declare-fun condMapEmpty!42895 () Bool)

(declare-fun mapDefault!42895 () ValueCell!12984)

(assert (=> b!1104967 (= condMapEmpty!42895 (= (arr!34475 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12984)) mapDefault!42895)))))

(declare-fun b!1104968 () Bool)

(assert (=> b!1104968 (= e!630710 e!630714)))

(declare-fun res!737339 () Bool)

(assert (=> b!1104968 (=> (not res!737339) (not e!630714))))

(assert (=> b!1104968 (= res!737339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495210 mask!1564))))

(assert (=> b!1104968 (= lt!495210 (array!71649 (store (arr!34474 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35011 _keys!1208)))))

(assert (= (and start!97176 res!737340) b!1104966))

(assert (= (and b!1104966 res!737333) b!1104965))

(assert (= (and b!1104965 res!737332) b!1104961))

(assert (= (and b!1104961 res!737337) b!1104959))

(assert (= (and b!1104959 res!737336) b!1104957))

(assert (= (and b!1104957 res!737335) b!1104962))

(assert (= (and b!1104962 res!737338) b!1104958))

(assert (= (and b!1104958 res!737334) b!1104968))

(assert (= (and b!1104968 res!737339) b!1104964))

(assert (= (and b!1104964 res!737341) b!1104956))

(assert (= (and b!1104967 condMapEmpty!42895) mapIsEmpty!42895))

(assert (= (and b!1104967 (not condMapEmpty!42895)) mapNonEmpty!42895))

(get-info :version)

(assert (= (and mapNonEmpty!42895 ((_ is ValueCellFull!12984) mapValue!42895)) b!1104960))

(assert (= (and b!1104967 ((_ is ValueCellFull!12984) mapDefault!42895)) b!1104963))

(assert (= start!97176 b!1104967))

(declare-fun m!1024627 () Bool)

(assert (=> b!1104959 m!1024627))

(declare-fun m!1024629 () Bool)

(assert (=> b!1104958 m!1024629))

(declare-fun m!1024631 () Bool)

(assert (=> start!97176 m!1024631))

(declare-fun m!1024633 () Bool)

(assert (=> start!97176 m!1024633))

(declare-fun m!1024635 () Bool)

(assert (=> b!1104961 m!1024635))

(declare-fun m!1024637 () Bool)

(assert (=> b!1104968 m!1024637))

(declare-fun m!1024639 () Bool)

(assert (=> b!1104968 m!1024639))

(declare-fun m!1024641 () Bool)

(assert (=> b!1104956 m!1024641))

(declare-fun m!1024643 () Bool)

(assert (=> b!1104956 m!1024643))

(declare-fun m!1024645 () Bool)

(assert (=> b!1104962 m!1024645))

(declare-fun m!1024647 () Bool)

(assert (=> b!1104966 m!1024647))

(declare-fun m!1024649 () Bool)

(assert (=> mapNonEmpty!42895 m!1024649))

(declare-fun m!1024651 () Bool)

(assert (=> b!1104964 m!1024651))

(check-sat (not b!1104959) (not b!1104966) (not b!1104956) (not b!1104968) tp_is_empty!27387 (not start!97176) (not mapNonEmpty!42895) (not b!1104964) (not b!1104962) (not b!1104961))
(check-sat)
