; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43376 () Bool)

(assert start!43376)

(declare-fun b_free!12195 () Bool)

(declare-fun b_next!12195 () Bool)

(assert (=> start!43376 (= b_free!12195 (not b_next!12195))))

(declare-fun tp!42861 () Bool)

(declare-fun b_and!20969 () Bool)

(assert (=> start!43376 (= tp!42861 b_and!20969)))

(declare-fun b!480234 () Bool)

(declare-fun e!282584 () Bool)

(declare-fun tp_is_empty!13707 () Bool)

(assert (=> b!480234 (= e!282584 tp_is_empty!13707)))

(declare-fun mapNonEmpty!22264 () Bool)

(declare-fun mapRes!22264 () Bool)

(declare-fun tp!42862 () Bool)

(assert (=> mapNonEmpty!22264 (= mapRes!22264 (and tp!42862 e!282584))))

(declare-fun mapKey!22264 () (_ BitVec 32))

(declare-datatypes ((V!19347 0))(
  ( (V!19348 (val!6901 Int)) )
))
(declare-datatypes ((ValueCell!6492 0))(
  ( (ValueCellFull!6492 (v!9188 V!19347)) (EmptyCell!6492) )
))
(declare-fun mapRest!22264 () (Array (_ BitVec 32) ValueCell!6492))

(declare-fun mapValue!22264 () ValueCell!6492)

(declare-datatypes ((array!31051 0))(
  ( (array!31052 (arr!14927 (Array (_ BitVec 32) ValueCell!6492)) (size!15285 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31051)

(assert (=> mapNonEmpty!22264 (= (arr!14927 _values!1516) (store mapRest!22264 mapKey!22264 mapValue!22264))))

(declare-fun b!480235 () Bool)

(declare-fun res!286469 () Bool)

(declare-fun e!282585 () Bool)

(assert (=> b!480235 (=> (not res!286469) (not e!282585))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!31053 0))(
  ( (array!31054 (arr!14928 (Array (_ BitVec 32) (_ BitVec 64))) (size!15286 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31053)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!480235 (= res!286469 (and (= (size!15285 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15286 _keys!1874) (size!15285 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!480236 () Bool)

(declare-fun res!286467 () Bool)

(assert (=> b!480236 (=> (not res!286467) (not e!282585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31053 (_ BitVec 32)) Bool)

(assert (=> b!480236 (= res!286467 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!480237 () Bool)

(declare-fun e!282583 () Bool)

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31053 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!480237 (= e!282583 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!480238 () Bool)

(assert (=> b!480238 (= e!282583 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!480239 () Bool)

(declare-fun e!282582 () Bool)

(declare-fun e!282581 () Bool)

(assert (=> b!480239 (= e!282582 (and e!282581 mapRes!22264))))

(declare-fun condMapEmpty!22264 () Bool)

(declare-fun mapDefault!22264 () ValueCell!6492)

(assert (=> b!480239 (= condMapEmpty!22264 (= (arr!14927 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6492)) mapDefault!22264)))))

(declare-fun b!480240 () Bool)

(declare-fun res!286465 () Bool)

(assert (=> b!480240 (=> (not res!286465) (not e!282585))))

(declare-fun minValue!1458 () V!19347)

(declare-fun zeroValue!1458 () V!19347)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9050 0))(
  ( (tuple2!9051 (_1!4535 (_ BitVec 64)) (_2!4535 V!19347)) )
))
(declare-datatypes ((List!9166 0))(
  ( (Nil!9163) (Cons!9162 (h!10018 tuple2!9050) (t!15384 List!9166)) )
))
(declare-datatypes ((ListLongMap!7977 0))(
  ( (ListLongMap!7978 (toList!4004 List!9166)) )
))
(declare-fun contains!2613 (ListLongMap!7977 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2296 (array!31053 array!31051 (_ BitVec 32) (_ BitVec 32) V!19347 V!19347 (_ BitVec 32) Int) ListLongMap!7977)

(assert (=> b!480240 (= res!286465 (contains!2613 (getCurrentListMap!2296 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!480241 () Bool)

(declare-fun res!286466 () Bool)

(assert (=> b!480241 (=> (not res!286466) (not e!282585))))

(declare-datatypes ((List!9167 0))(
  ( (Nil!9164) (Cons!9163 (h!10019 (_ BitVec 64)) (t!15385 List!9167)) )
))
(declare-fun arrayNoDuplicates!0 (array!31053 (_ BitVec 32) List!9167) Bool)

(assert (=> b!480241 (= res!286466 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9164))))

(declare-fun mapIsEmpty!22264 () Bool)

(assert (=> mapIsEmpty!22264 mapRes!22264))

(declare-fun b!480242 () Bool)

(assert (=> b!480242 (= e!282585 (not true))))

(declare-fun lt!218110 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!31053 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!480242 (= lt!218110 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(assert (=> b!480242 e!282583))

(declare-fun c!57703 () Bool)

(assert (=> b!480242 (= c!57703 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!14060 0))(
  ( (Unit!14061) )
))
(declare-fun lt!218111 () Unit!14060)

(declare-fun lemmaKeyInListMapIsInArray!121 (array!31053 array!31051 (_ BitVec 32) (_ BitVec 32) V!19347 V!19347 (_ BitVec 64) Int) Unit!14060)

(assert (=> b!480242 (= lt!218111 (lemmaKeyInListMapIsInArray!121 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(declare-fun b!480243 () Bool)

(assert (=> b!480243 (= e!282581 tp_is_empty!13707)))

(declare-fun res!286470 () Bool)

(assert (=> start!43376 (=> (not res!286470) (not e!282585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43376 (= res!286470 (validMask!0 mask!2352))))

(assert (=> start!43376 e!282585))

(assert (=> start!43376 true))

(assert (=> start!43376 tp_is_empty!13707))

(declare-fun array_inv!10756 (array!31051) Bool)

(assert (=> start!43376 (and (array_inv!10756 _values!1516) e!282582)))

(assert (=> start!43376 tp!42861))

(declare-fun array_inv!10757 (array!31053) Bool)

(assert (=> start!43376 (array_inv!10757 _keys!1874)))

(declare-fun b!480244 () Bool)

(declare-fun res!286468 () Bool)

(assert (=> b!480244 (=> (not res!286468) (not e!282585))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!480244 (= res!286468 (validKeyInArray!0 k0!1332))))

(assert (= (and start!43376 res!286470) b!480235))

(assert (= (and b!480235 res!286469) b!480236))

(assert (= (and b!480236 res!286467) b!480241))

(assert (= (and b!480241 res!286466) b!480240))

(assert (= (and b!480240 res!286465) b!480244))

(assert (= (and b!480244 res!286468) b!480242))

(assert (= (and b!480242 c!57703) b!480237))

(assert (= (and b!480242 (not c!57703)) b!480238))

(assert (= (and b!480239 condMapEmpty!22264) mapIsEmpty!22264))

(assert (= (and b!480239 (not condMapEmpty!22264)) mapNonEmpty!22264))

(get-info :version)

(assert (= (and mapNonEmpty!22264 ((_ is ValueCellFull!6492) mapValue!22264)) b!480234))

(assert (= (and b!480239 ((_ is ValueCellFull!6492) mapDefault!22264)) b!480243))

(assert (= start!43376 b!480239))

(declare-fun m!461923 () Bool)

(assert (=> b!480242 m!461923))

(declare-fun m!461925 () Bool)

(assert (=> b!480242 m!461925))

(declare-fun m!461927 () Bool)

(assert (=> mapNonEmpty!22264 m!461927))

(declare-fun m!461929 () Bool)

(assert (=> b!480244 m!461929))

(declare-fun m!461931 () Bool)

(assert (=> b!480236 m!461931))

(declare-fun m!461933 () Bool)

(assert (=> start!43376 m!461933))

(declare-fun m!461935 () Bool)

(assert (=> start!43376 m!461935))

(declare-fun m!461937 () Bool)

(assert (=> start!43376 m!461937))

(declare-fun m!461939 () Bool)

(assert (=> b!480237 m!461939))

(declare-fun m!461941 () Bool)

(assert (=> b!480241 m!461941))

(declare-fun m!461943 () Bool)

(assert (=> b!480240 m!461943))

(assert (=> b!480240 m!461943))

(declare-fun m!461945 () Bool)

(assert (=> b!480240 m!461945))

(check-sat (not b!480244) b_and!20969 (not b!480242) (not b!480236) (not b!480240) (not mapNonEmpty!22264) (not start!43376) (not b_next!12195) (not b!480237) tp_is_empty!13707 (not b!480241))
(check-sat b_and!20969 (not b_next!12195))
