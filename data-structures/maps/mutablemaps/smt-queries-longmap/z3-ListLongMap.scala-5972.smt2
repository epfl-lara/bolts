; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77688 () Bool)

(assert start!77688)

(declare-fun b_free!16245 () Bool)

(declare-fun b_next!16245 () Bool)

(assert (=> start!77688 (= b_free!16245 (not b_next!16245))))

(declare-fun tp!56997 () Bool)

(declare-fun b_and!26661 () Bool)

(assert (=> start!77688 (= tp!56997 b_and!26661)))

(declare-fun res!611074 () Bool)

(declare-fun e!507387 () Bool)

(assert (=> start!77688 (=> (not res!611074) (not e!507387))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77688 (= res!611074 (validMask!0 mask!1756))))

(assert (=> start!77688 e!507387))

(declare-datatypes ((V!29849 0))(
  ( (V!29850 (val!9382 Int)) )
))
(declare-datatypes ((ValueCell!8850 0))(
  ( (ValueCellFull!8850 (v!11887 V!29849)) (EmptyCell!8850) )
))
(declare-datatypes ((array!53356 0))(
  ( (array!53357 (arr!25633 (Array (_ BitVec 32) ValueCell!8850)) (size!26093 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53356)

(declare-fun e!507389 () Bool)

(declare-fun array_inv!20060 (array!53356) Bool)

(assert (=> start!77688 (and (array_inv!20060 _values!1152) e!507389)))

(assert (=> start!77688 tp!56997))

(assert (=> start!77688 true))

(declare-fun tp_is_empty!18663 () Bool)

(assert (=> start!77688 tp_is_empty!18663))

(declare-datatypes ((array!53358 0))(
  ( (array!53359 (arr!25634 (Array (_ BitVec 32) (_ BitVec 64))) (size!26094 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53358)

(declare-fun array_inv!20061 (array!53358) Bool)

(assert (=> start!77688 (array_inv!20061 _keys!1386)))

(declare-fun b!905383 () Bool)

(declare-fun e!507383 () Bool)

(assert (=> b!905383 (= e!507383 tp_is_empty!18663)))

(declare-fun b!905384 () Bool)

(declare-fun e!507385 () Bool)

(declare-fun e!507384 () Bool)

(assert (=> b!905384 (= e!507385 e!507384)))

(declare-fun res!611081 () Bool)

(assert (=> b!905384 (=> res!611081 e!507384)))

(declare-datatypes ((tuple2!12224 0))(
  ( (tuple2!12225 (_1!6122 (_ BitVec 64)) (_2!6122 V!29849)) )
))
(declare-datatypes ((List!18091 0))(
  ( (Nil!18088) (Cons!18087 (h!19233 tuple2!12224) (t!25516 List!18091)) )
))
(declare-datatypes ((ListLongMap!10935 0))(
  ( (ListLongMap!10936 (toList!5483 List!18091)) )
))
(declare-fun lt!408536 () ListLongMap!10935)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun contains!4495 (ListLongMap!10935 (_ BitVec 64)) Bool)

(assert (=> b!905384 (= res!611081 (not (contains!4495 lt!408536 k0!1033)))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29849)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29849)

(declare-fun getCurrentListMap!2719 (array!53358 array!53356 (_ BitVec 32) (_ BitVec 32) V!29849 V!29849 (_ BitVec 32) Int) ListLongMap!10935)

(assert (=> b!905384 (= lt!408536 (getCurrentListMap!2719 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!905385 () Bool)

(declare-fun e!507382 () Bool)

(assert (=> b!905385 (= e!507382 (not e!507385))))

(declare-fun res!611077 () Bool)

(assert (=> b!905385 (=> res!611077 e!507385)))

(assert (=> b!905385 (= res!611077 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26094 _keys!1386))))))

(declare-fun lt!408532 () V!29849)

(declare-fun get!13482 (ValueCell!8850 V!29849) V!29849)

(declare-fun dynLambda!1334 (Int (_ BitVec 64)) V!29849)

(assert (=> b!905385 (= lt!408532 (get!13482 (select (arr!25633 _values!1152) i!717) (dynLambda!1334 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53358 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!905385 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30691 0))(
  ( (Unit!30692) )
))
(declare-fun lt!408533 () Unit!30691)

(declare-fun lemmaKeyInListMapIsInArray!207 (array!53358 array!53356 (_ BitVec 32) (_ BitVec 32) V!29849 V!29849 (_ BitVec 64) Int) Unit!30691)

(assert (=> b!905385 (= lt!408533 (lemmaKeyInListMapIsInArray!207 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!905386 () Bool)

(declare-fun res!611078 () Bool)

(assert (=> b!905386 (=> (not res!611078) (not e!507382))))

(assert (=> b!905386 (= res!611078 (and (= (select (arr!25634 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!905387 () Bool)

(declare-fun res!611073 () Bool)

(assert (=> b!905387 (=> (not res!611073) (not e!507387))))

(declare-datatypes ((List!18092 0))(
  ( (Nil!18089) (Cons!18088 (h!19234 (_ BitVec 64)) (t!25517 List!18092)) )
))
(declare-fun arrayNoDuplicates!0 (array!53358 (_ BitVec 32) List!18092) Bool)

(assert (=> b!905387 (= res!611073 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18089))))

(declare-fun b!905388 () Bool)

(declare-fun res!611082 () Bool)

(assert (=> b!905388 (=> (not res!611082) (not e!507387))))

(assert (=> b!905388 (= res!611082 (and (= (size!26093 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26094 _keys!1386) (size!26093 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!905389 () Bool)

(assert (=> b!905389 (= e!507387 e!507382)))

(declare-fun res!611080 () Bool)

(assert (=> b!905389 (=> (not res!611080) (not e!507382))))

(declare-fun lt!408534 () ListLongMap!10935)

(assert (=> b!905389 (= res!611080 (contains!4495 lt!408534 k0!1033))))

(assert (=> b!905389 (= lt!408534 (getCurrentListMap!2719 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!905390 () Bool)

(declare-fun e!507386 () Bool)

(assert (=> b!905390 (= e!507386 tp_is_empty!18663)))

(declare-fun mapIsEmpty!29707 () Bool)

(declare-fun mapRes!29707 () Bool)

(assert (=> mapIsEmpty!29707 mapRes!29707))

(declare-fun b!905391 () Bool)

(declare-fun res!611079 () Bool)

(assert (=> b!905391 (=> res!611079 e!507384)))

(declare-fun apply!460 (ListLongMap!10935 (_ BitVec 64)) V!29849)

(assert (=> b!905391 (= res!611079 (not (= (apply!460 lt!408536 k0!1033) lt!408532)))))

(declare-fun b!905392 () Bool)

(assert (=> b!905392 (= e!507384 true)))

(assert (=> b!905392 (= (apply!460 lt!408534 k0!1033) lt!408532)))

(declare-fun lt!408535 () Unit!30691)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!12 (array!53358 array!53356 (_ BitVec 32) (_ BitVec 32) V!29849 V!29849 (_ BitVec 64) V!29849 (_ BitVec 32) Int) Unit!30691)

(assert (=> b!905392 (= lt!408535 (lemmaListMapApplyFromThenApplyFromZero!12 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!408532 i!717 defaultEntry!1160))))

(declare-fun b!905393 () Bool)

(declare-fun res!611076 () Bool)

(assert (=> b!905393 (=> (not res!611076) (not e!507382))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!905393 (= res!611076 (inRange!0 i!717 mask!1756))))

(declare-fun b!905394 () Bool)

(assert (=> b!905394 (= e!507389 (and e!507386 mapRes!29707))))

(declare-fun condMapEmpty!29707 () Bool)

(declare-fun mapDefault!29707 () ValueCell!8850)

(assert (=> b!905394 (= condMapEmpty!29707 (= (arr!25633 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8850)) mapDefault!29707)))))

(declare-fun mapNonEmpty!29707 () Bool)

(declare-fun tp!56998 () Bool)

(assert (=> mapNonEmpty!29707 (= mapRes!29707 (and tp!56998 e!507383))))

(declare-fun mapKey!29707 () (_ BitVec 32))

(declare-fun mapValue!29707 () ValueCell!8850)

(declare-fun mapRest!29707 () (Array (_ BitVec 32) ValueCell!8850))

(assert (=> mapNonEmpty!29707 (= (arr!25633 _values!1152) (store mapRest!29707 mapKey!29707 mapValue!29707))))

(declare-fun b!905395 () Bool)

(declare-fun res!611075 () Bool)

(assert (=> b!905395 (=> (not res!611075) (not e!507387))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53358 (_ BitVec 32)) Bool)

(assert (=> b!905395 (= res!611075 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(assert (= (and start!77688 res!611074) b!905388))

(assert (= (and b!905388 res!611082) b!905395))

(assert (= (and b!905395 res!611075) b!905387))

(assert (= (and b!905387 res!611073) b!905389))

(assert (= (and b!905389 res!611080) b!905393))

(assert (= (and b!905393 res!611076) b!905386))

(assert (= (and b!905386 res!611078) b!905385))

(assert (= (and b!905385 (not res!611077)) b!905384))

(assert (= (and b!905384 (not res!611081)) b!905391))

(assert (= (and b!905391 (not res!611079)) b!905392))

(assert (= (and b!905394 condMapEmpty!29707) mapIsEmpty!29707))

(assert (= (and b!905394 (not condMapEmpty!29707)) mapNonEmpty!29707))

(get-info :version)

(assert (= (and mapNonEmpty!29707 ((_ is ValueCellFull!8850) mapValue!29707)) b!905383))

(assert (= (and b!905394 ((_ is ValueCellFull!8850) mapDefault!29707)) b!905390))

(assert (= start!77688 b!905394))

(declare-fun b_lambda!13149 () Bool)

(assert (=> (not b_lambda!13149) (not b!905385)))

(declare-fun t!25515 () Bool)

(declare-fun tb!5275 () Bool)

(assert (=> (and start!77688 (= defaultEntry!1160 defaultEntry!1160) t!25515) tb!5275))

(declare-fun result!10337 () Bool)

(assert (=> tb!5275 (= result!10337 tp_is_empty!18663)))

(assert (=> b!905385 t!25515))

(declare-fun b_and!26663 () Bool)

(assert (= b_and!26661 (and (=> t!25515 result!10337) b_and!26663)))

(declare-fun m!840891 () Bool)

(assert (=> b!905395 m!840891))

(declare-fun m!840893 () Bool)

(assert (=> b!905391 m!840893))

(declare-fun m!840895 () Bool)

(assert (=> b!905392 m!840895))

(declare-fun m!840897 () Bool)

(assert (=> b!905392 m!840897))

(declare-fun m!840899 () Bool)

(assert (=> b!905386 m!840899))

(declare-fun m!840901 () Bool)

(assert (=> b!905384 m!840901))

(declare-fun m!840903 () Bool)

(assert (=> b!905384 m!840903))

(declare-fun m!840905 () Bool)

(assert (=> b!905385 m!840905))

(declare-fun m!840907 () Bool)

(assert (=> b!905385 m!840907))

(declare-fun m!840909 () Bool)

(assert (=> b!905385 m!840909))

(declare-fun m!840911 () Bool)

(assert (=> b!905385 m!840911))

(assert (=> b!905385 m!840905))

(assert (=> b!905385 m!840909))

(declare-fun m!840913 () Bool)

(assert (=> b!905385 m!840913))

(declare-fun m!840915 () Bool)

(assert (=> mapNonEmpty!29707 m!840915))

(declare-fun m!840917 () Bool)

(assert (=> b!905389 m!840917))

(declare-fun m!840919 () Bool)

(assert (=> b!905389 m!840919))

(declare-fun m!840921 () Bool)

(assert (=> start!77688 m!840921))

(declare-fun m!840923 () Bool)

(assert (=> start!77688 m!840923))

(declare-fun m!840925 () Bool)

(assert (=> start!77688 m!840925))

(declare-fun m!840927 () Bool)

(assert (=> b!905393 m!840927))

(declare-fun m!840929 () Bool)

(assert (=> b!905387 m!840929))

(check-sat (not b!905392) (not b!905395) (not b_lambda!13149) (not start!77688) (not b!905393) b_and!26663 (not b!905387) (not b!905384) (not b_next!16245) (not b!905391) (not mapNonEmpty!29707) tp_is_empty!18663 (not b!905389) (not b!905385))
(check-sat b_and!26663 (not b_next!16245))
