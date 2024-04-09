; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77748 () Bool)

(assert start!77748)

(declare-fun b_free!16305 () Bool)

(declare-fun b_next!16305 () Bool)

(assert (=> start!77748 (= b_free!16305 (not b_next!16305))))

(declare-fun tp!57178 () Bool)

(declare-fun b_and!26781 () Bool)

(assert (=> start!77748 (= tp!57178 b_and!26781)))

(declare-fun b!906613 () Bool)

(declare-fun res!611979 () Bool)

(declare-fun e!508108 () Bool)

(assert (=> b!906613 (=> res!611979 e!508108)))

(declare-datatypes ((V!29929 0))(
  ( (V!29930 (val!9412 Int)) )
))
(declare-fun lt!408982 () V!29929)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-datatypes ((tuple2!12274 0))(
  ( (tuple2!12275 (_1!6147 (_ BitVec 64)) (_2!6147 V!29929)) )
))
(declare-datatypes ((List!18135 0))(
  ( (Nil!18132) (Cons!18131 (h!19277 tuple2!12274) (t!25620 List!18135)) )
))
(declare-datatypes ((ListLongMap!10985 0))(
  ( (ListLongMap!10986 (toList!5508 List!18135)) )
))
(declare-fun lt!408984 () ListLongMap!10985)

(declare-fun apply!484 (ListLongMap!10985 (_ BitVec 64)) V!29929)

(assert (=> b!906613 (= res!611979 (not (= (apply!484 lt!408984 k0!1033) lt!408982)))))

(declare-fun mapNonEmpty!29797 () Bool)

(declare-fun mapRes!29797 () Bool)

(declare-fun tp!57177 () Bool)

(declare-fun e!508105 () Bool)

(assert (=> mapNonEmpty!29797 (= mapRes!29797 (and tp!57177 e!508105))))

(declare-datatypes ((ValueCell!8880 0))(
  ( (ValueCellFull!8880 (v!11917 V!29929)) (EmptyCell!8880) )
))
(declare-datatypes ((array!53472 0))(
  ( (array!53473 (arr!25691 (Array (_ BitVec 32) ValueCell!8880)) (size!26151 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53472)

(declare-fun mapValue!29797 () ValueCell!8880)

(declare-fun mapRest!29797 () (Array (_ BitVec 32) ValueCell!8880))

(declare-fun mapKey!29797 () (_ BitVec 32))

(assert (=> mapNonEmpty!29797 (= (arr!25691 _values!1152) (store mapRest!29797 mapKey!29797 mapValue!29797))))

(declare-fun mapIsEmpty!29797 () Bool)

(assert (=> mapIsEmpty!29797 mapRes!29797))

(declare-fun b!906614 () Bool)

(declare-fun res!611973 () Bool)

(declare-fun e!508107 () Bool)

(assert (=> b!906614 (=> (not res!611973) (not e!508107))))

(declare-datatypes ((array!53474 0))(
  ( (array!53475 (arr!25692 (Array (_ BitVec 32) (_ BitVec 64))) (size!26152 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53474)

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!906614 (= res!611973 (and (= (select (arr!25692 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!906615 () Bool)

(declare-fun res!611982 () Bool)

(declare-fun e!508109 () Bool)

(assert (=> b!906615 (=> (not res!611982) (not e!508109))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53474 (_ BitVec 32)) Bool)

(assert (=> b!906615 (= res!611982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!906616 () Bool)

(declare-fun e!508102 () Bool)

(declare-fun tp_is_empty!18723 () Bool)

(assert (=> b!906616 (= e!508102 tp_is_empty!18723)))

(declare-fun b!906617 () Bool)

(declare-fun res!611981 () Bool)

(assert (=> b!906617 (=> (not res!611981) (not e!508109))))

(declare-datatypes ((List!18136 0))(
  ( (Nil!18133) (Cons!18132 (h!19278 (_ BitVec 64)) (t!25621 List!18136)) )
))
(declare-fun arrayNoDuplicates!0 (array!53474 (_ BitVec 32) List!18136) Bool)

(assert (=> b!906617 (= res!611981 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18133))))

(declare-fun b!906618 () Bool)

(declare-fun res!611975 () Bool)

(assert (=> b!906618 (=> (not res!611975) (not e!508107))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!906618 (= res!611975 (inRange!0 i!717 mask!1756))))

(declare-fun b!906619 () Bool)

(declare-fun res!611980 () Bool)

(assert (=> b!906619 (=> (not res!611980) (not e!508109))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!906619 (= res!611980 (and (= (size!26151 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26152 _keys!1386) (size!26151 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!906620 () Bool)

(assert (=> b!906620 (= e!508109 e!508107)))

(declare-fun res!611974 () Bool)

(assert (=> b!906620 (=> (not res!611974) (not e!508107))))

(declare-fun lt!408986 () ListLongMap!10985)

(declare-fun contains!4518 (ListLongMap!10985 (_ BitVec 64)) Bool)

(assert (=> b!906620 (= res!611974 (contains!4518 lt!408986 k0!1033))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29929)

(declare-fun minValue!1094 () V!29929)

(declare-fun getCurrentListMap!2742 (array!53474 array!53472 (_ BitVec 32) (_ BitVec 32) V!29929 V!29929 (_ BitVec 32) Int) ListLongMap!10985)

(assert (=> b!906620 (= lt!408986 (getCurrentListMap!2742 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun res!611978 () Bool)

(assert (=> start!77748 (=> (not res!611978) (not e!508109))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77748 (= res!611978 (validMask!0 mask!1756))))

(assert (=> start!77748 e!508109))

(declare-fun e!508106 () Bool)

(declare-fun array_inv!20094 (array!53472) Bool)

(assert (=> start!77748 (and (array_inv!20094 _values!1152) e!508106)))

(assert (=> start!77748 tp!57178))

(assert (=> start!77748 true))

(assert (=> start!77748 tp_is_empty!18723))

(declare-fun array_inv!20095 (array!53474) Bool)

(assert (=> start!77748 (array_inv!20095 _keys!1386)))

(declare-fun b!906621 () Bool)

(declare-fun e!508103 () Bool)

(assert (=> b!906621 (= e!508103 e!508108)))

(declare-fun res!611976 () Bool)

(assert (=> b!906621 (=> res!611976 e!508108)))

(assert (=> b!906621 (= res!611976 (not (contains!4518 lt!408984 k0!1033)))))

(assert (=> b!906621 (= lt!408984 (getCurrentListMap!2742 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!906622 () Bool)

(assert (=> b!906622 (= e!508108 true)))

(assert (=> b!906622 (= (apply!484 lt!408986 k0!1033) lt!408982)))

(declare-datatypes ((Unit!30743 0))(
  ( (Unit!30744) )
))
(declare-fun lt!408983 () Unit!30743)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!32 (array!53474 array!53472 (_ BitVec 32) (_ BitVec 32) V!29929 V!29929 (_ BitVec 64) V!29929 (_ BitVec 32) Int) Unit!30743)

(assert (=> b!906622 (= lt!408983 (lemmaListMapApplyFromThenApplyFromZero!32 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!408982 i!717 defaultEntry!1160))))

(declare-fun b!906623 () Bool)

(assert (=> b!906623 (= e!508106 (and e!508102 mapRes!29797))))

(declare-fun condMapEmpty!29797 () Bool)

(declare-fun mapDefault!29797 () ValueCell!8880)

(assert (=> b!906623 (= condMapEmpty!29797 (= (arr!25691 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8880)) mapDefault!29797)))))

(declare-fun b!906624 () Bool)

(assert (=> b!906624 (= e!508107 (not e!508103))))

(declare-fun res!611977 () Bool)

(assert (=> b!906624 (=> res!611977 e!508103)))

(assert (=> b!906624 (= res!611977 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26152 _keys!1386))))))

(declare-fun get!13525 (ValueCell!8880 V!29929) V!29929)

(declare-fun dynLambda!1357 (Int (_ BitVec 64)) V!29929)

(assert (=> b!906624 (= lt!408982 (get!13525 (select (arr!25691 _values!1152) i!717) (dynLambda!1357 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53474 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!906624 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun lt!408985 () Unit!30743)

(declare-fun lemmaKeyInListMapIsInArray!230 (array!53474 array!53472 (_ BitVec 32) (_ BitVec 32) V!29929 V!29929 (_ BitVec 64) Int) Unit!30743)

(assert (=> b!906624 (= lt!408985 (lemmaKeyInListMapIsInArray!230 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!906625 () Bool)

(assert (=> b!906625 (= e!508105 tp_is_empty!18723)))

(assert (= (and start!77748 res!611978) b!906619))

(assert (= (and b!906619 res!611980) b!906615))

(assert (= (and b!906615 res!611982) b!906617))

(assert (= (and b!906617 res!611981) b!906620))

(assert (= (and b!906620 res!611974) b!906618))

(assert (= (and b!906618 res!611975) b!906614))

(assert (= (and b!906614 res!611973) b!906624))

(assert (= (and b!906624 (not res!611977)) b!906621))

(assert (= (and b!906621 (not res!611976)) b!906613))

(assert (= (and b!906613 (not res!611979)) b!906622))

(assert (= (and b!906623 condMapEmpty!29797) mapIsEmpty!29797))

(assert (= (and b!906623 (not condMapEmpty!29797)) mapNonEmpty!29797))

(get-info :version)

(assert (= (and mapNonEmpty!29797 ((_ is ValueCellFull!8880) mapValue!29797)) b!906625))

(assert (= (and b!906623 ((_ is ValueCellFull!8880) mapDefault!29797)) b!906616))

(assert (= start!77748 b!906623))

(declare-fun b_lambda!13209 () Bool)

(assert (=> (not b_lambda!13209) (not b!906624)))

(declare-fun t!25619 () Bool)

(declare-fun tb!5335 () Bool)

(assert (=> (and start!77748 (= defaultEntry!1160 defaultEntry!1160) t!25619) tb!5335))

(declare-fun result!10457 () Bool)

(assert (=> tb!5335 (= result!10457 tp_is_empty!18723)))

(assert (=> b!906624 t!25619))

(declare-fun b_and!26783 () Bool)

(assert (= b_and!26781 (and (=> t!25619 result!10457) b_and!26783)))

(declare-fun m!842091 () Bool)

(assert (=> b!906615 m!842091))

(declare-fun m!842093 () Bool)

(assert (=> b!906614 m!842093))

(declare-fun m!842095 () Bool)

(assert (=> b!906621 m!842095))

(declare-fun m!842097 () Bool)

(assert (=> b!906621 m!842097))

(declare-fun m!842099 () Bool)

(assert (=> mapNonEmpty!29797 m!842099))

(declare-fun m!842101 () Bool)

(assert (=> b!906624 m!842101))

(declare-fun m!842103 () Bool)

(assert (=> b!906624 m!842103))

(declare-fun m!842105 () Bool)

(assert (=> b!906624 m!842105))

(declare-fun m!842107 () Bool)

(assert (=> b!906624 m!842107))

(assert (=> b!906624 m!842101))

(assert (=> b!906624 m!842105))

(declare-fun m!842109 () Bool)

(assert (=> b!906624 m!842109))

(declare-fun m!842111 () Bool)

(assert (=> start!77748 m!842111))

(declare-fun m!842113 () Bool)

(assert (=> start!77748 m!842113))

(declare-fun m!842115 () Bool)

(assert (=> start!77748 m!842115))

(declare-fun m!842117 () Bool)

(assert (=> b!906620 m!842117))

(declare-fun m!842119 () Bool)

(assert (=> b!906620 m!842119))

(declare-fun m!842121 () Bool)

(assert (=> b!906613 m!842121))

(declare-fun m!842123 () Bool)

(assert (=> b!906618 m!842123))

(declare-fun m!842125 () Bool)

(assert (=> b!906622 m!842125))

(declare-fun m!842127 () Bool)

(assert (=> b!906622 m!842127))

(declare-fun m!842129 () Bool)

(assert (=> b!906617 m!842129))

(check-sat (not b!906617) (not b!906620) (not b!906624) (not start!77748) (not b!906622) (not b_lambda!13209) tp_is_empty!18723 (not b!906613) (not b!906618) (not mapNonEmpty!29797) (not b!906615) (not b!906621) b_and!26783 (not b_next!16305))
(check-sat b_and!26783 (not b_next!16305))
