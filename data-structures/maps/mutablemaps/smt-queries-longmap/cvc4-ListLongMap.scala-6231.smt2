; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79690 () Bool)

(assert start!79690)

(declare-fun b_free!17711 () Bool)

(declare-fun b_next!17711 () Bool)

(assert (=> start!79690 (= b_free!17711 (not b_next!17711))))

(declare-fun tp!61590 () Bool)

(declare-fun b_and!29031 () Bool)

(assert (=> start!79690 (= tp!61590 b_and!29031)))

(declare-fun b!936588 () Bool)

(declare-fun res!630674 () Bool)

(declare-fun e!525944 () Bool)

(assert (=> b!936588 (=> (not res!630674) (not e!525944))))

(declare-datatypes ((array!56402 0))(
  ( (array!56403 (arr!27137 (Array (_ BitVec 32) (_ BitVec 64))) (size!27597 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56402)

(declare-datatypes ((List!19253 0))(
  ( (Nil!19250) (Cons!19249 (h!20395 (_ BitVec 64)) (t!27516 List!19253)) )
))
(declare-fun arrayNoDuplicates!0 (array!56402 (_ BitVec 32) List!19253) Bool)

(assert (=> b!936588 (= res!630674 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19250))))

(declare-fun b!936589 () Bool)

(declare-fun e!525942 () Bool)

(assert (=> b!936589 (= e!525944 e!525942)))

(declare-fun res!630677 () Bool)

(assert (=> b!936589 (=> (not res!630677) (not e!525942))))

(declare-datatypes ((V!31923 0))(
  ( (V!31924 (val!10160 Int)) )
))
(declare-datatypes ((tuple2!13446 0))(
  ( (tuple2!13447 (_1!6733 (_ BitVec 64)) (_2!6733 V!31923)) )
))
(declare-datatypes ((List!19254 0))(
  ( (Nil!19251) (Cons!19250 (h!20396 tuple2!13446) (t!27517 List!19254)) )
))
(declare-datatypes ((ListLongMap!12157 0))(
  ( (ListLongMap!12158 (toList!6094 List!19254)) )
))
(declare-fun lt!422412 () ListLongMap!12157)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5104 (ListLongMap!12157 (_ BitVec 64)) Bool)

(assert (=> b!936589 (= res!630677 (contains!5104 lt!422412 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9628 0))(
  ( (ValueCellFull!9628 (v!12685 V!31923)) (EmptyCell!9628) )
))
(declare-datatypes ((array!56404 0))(
  ( (array!56405 (arr!27138 (Array (_ BitVec 32) ValueCell!9628)) (size!27598 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56404)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31923)

(declare-fun minValue!1173 () V!31923)

(declare-fun getCurrentListMap!3283 (array!56402 array!56404 (_ BitVec 32) (_ BitVec 32) V!31923 V!31923 (_ BitVec 32) Int) ListLongMap!12157)

(assert (=> b!936589 (= lt!422412 (getCurrentListMap!3283 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!936590 () Bool)

(declare-fun res!630672 () Bool)

(assert (=> b!936590 (=> (not res!630672) (not e!525944))))

(assert (=> b!936590 (= res!630672 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27597 _keys!1487))))))

(declare-fun mapIsEmpty!32100 () Bool)

(declare-fun mapRes!32100 () Bool)

(assert (=> mapIsEmpty!32100 mapRes!32100))

(declare-fun b!936592 () Bool)

(declare-fun e!525941 () Bool)

(declare-fun tp_is_empty!20219 () Bool)

(assert (=> b!936592 (= e!525941 tp_is_empty!20219)))

(declare-fun b!936593 () Bool)

(declare-datatypes ((Unit!31606 0))(
  ( (Unit!31607) )
))
(declare-fun e!525935 () Unit!31606)

(declare-fun Unit!31608 () Unit!31606)

(assert (=> b!936593 (= e!525935 Unit!31608)))

(declare-fun b!936594 () Bool)

(declare-fun res!630671 () Bool)

(assert (=> b!936594 (=> (not res!630671) (not e!525944))))

(assert (=> b!936594 (= res!630671 (and (= (size!27598 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27597 _keys!1487) (size!27598 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!936595 () Bool)

(declare-fun lt!422407 () ListLongMap!12157)

(declare-fun lt!422403 () V!31923)

(declare-fun apply!872 (ListLongMap!12157 (_ BitVec 64)) V!31923)

(assert (=> b!936595 (= (apply!872 lt!422407 k!1099) lt!422403)))

(declare-fun lt!422405 () (_ BitVec 64))

(declare-fun lt!422410 () V!31923)

(declare-fun lt!422409 () Unit!31606)

(declare-fun addApplyDifferent!420 (ListLongMap!12157 (_ BitVec 64) V!31923 (_ BitVec 64)) Unit!31606)

(assert (=> b!936595 (= lt!422409 (addApplyDifferent!420 lt!422412 lt!422405 lt!422410 k!1099))))

(assert (=> b!936595 (not (= lt!422405 k!1099))))

(declare-fun lt!422404 () Unit!31606)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56402 (_ BitVec 64) (_ BitVec 32) List!19253) Unit!31606)

(assert (=> b!936595 (= lt!422404 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19250))))

(declare-fun e!525938 () Bool)

(assert (=> b!936595 e!525938))

(declare-fun c!97369 () Bool)

(assert (=> b!936595 (= c!97369 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!422411 () Unit!31606)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!303 (array!56402 array!56404 (_ BitVec 32) (_ BitVec 32) V!31923 V!31923 (_ BitVec 64) (_ BitVec 32) Int) Unit!31606)

(assert (=> b!936595 (= lt!422411 (lemmaListMapContainsThenArrayContainsFrom!303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!936595 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19250)))

(declare-fun lt!422406 () Unit!31606)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56402 (_ BitVec 32) (_ BitVec 32)) Unit!31606)

(assert (=> b!936595 (= lt!422406 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!936595 (contains!5104 lt!422407 k!1099)))

(declare-fun lt!422402 () tuple2!13446)

(declare-fun +!2790 (ListLongMap!12157 tuple2!13446) ListLongMap!12157)

(assert (=> b!936595 (= lt!422407 (+!2790 lt!422412 lt!422402))))

(declare-fun lt!422413 () Unit!31606)

(declare-fun addStillContains!546 (ListLongMap!12157 (_ BitVec 64) V!31923 (_ BitVec 64)) Unit!31606)

(assert (=> b!936595 (= lt!422413 (addStillContains!546 lt!422412 lt!422405 lt!422410 k!1099))))

(assert (=> b!936595 (= (getCurrentListMap!3283 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2790 (getCurrentListMap!3283 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422402))))

(assert (=> b!936595 (= lt!422402 (tuple2!13447 lt!422405 lt!422410))))

(declare-fun get!14320 (ValueCell!9628 V!31923) V!31923)

(declare-fun dynLambda!1629 (Int (_ BitVec 64)) V!31923)

(assert (=> b!936595 (= lt!422410 (get!14320 (select (arr!27138 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1629 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422408 () Unit!31606)

(declare-fun lemmaListMapRecursiveValidKeyArray!225 (array!56402 array!56404 (_ BitVec 32) (_ BitVec 32) V!31923 V!31923 (_ BitVec 32) Int) Unit!31606)

(assert (=> b!936595 (= lt!422408 (lemmaListMapRecursiveValidKeyArray!225 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!936595 (= e!525935 lt!422409)))

(declare-fun b!936596 () Bool)

(declare-fun e!525940 () Bool)

(assert (=> b!936596 (= e!525940 false)))

(declare-fun lt!422401 () Unit!31606)

(declare-fun e!525943 () Unit!31606)

(assert (=> b!936596 (= lt!422401 e!525943)))

(declare-fun c!97370 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!936596 (= c!97370 (validKeyInArray!0 k!1099))))

(declare-fun b!936597 () Bool)

(assert (=> b!936597 (= e!525938 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!936598 () Bool)

(declare-fun e!525936 () Bool)

(assert (=> b!936598 (= e!525936 tp_is_empty!20219)))

(declare-fun b!936591 () Bool)

(declare-fun res!630676 () Bool)

(assert (=> b!936591 (=> (not res!630676) (not e!525944))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56402 (_ BitVec 32)) Bool)

(assert (=> b!936591 (= res!630676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!630673 () Bool)

(assert (=> start!79690 (=> (not res!630673) (not e!525944))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79690 (= res!630673 (validMask!0 mask!1881))))

(assert (=> start!79690 e!525944))

(assert (=> start!79690 true))

(assert (=> start!79690 tp_is_empty!20219))

(declare-fun e!525937 () Bool)

(declare-fun array_inv!21074 (array!56404) Bool)

(assert (=> start!79690 (and (array_inv!21074 _values!1231) e!525937)))

(assert (=> start!79690 tp!61590))

(declare-fun array_inv!21075 (array!56402) Bool)

(assert (=> start!79690 (array_inv!21075 _keys!1487)))

(declare-fun mapNonEmpty!32100 () Bool)

(declare-fun tp!61589 () Bool)

(assert (=> mapNonEmpty!32100 (= mapRes!32100 (and tp!61589 e!525941))))

(declare-fun mapValue!32100 () ValueCell!9628)

(declare-fun mapRest!32100 () (Array (_ BitVec 32) ValueCell!9628))

(declare-fun mapKey!32100 () (_ BitVec 32))

(assert (=> mapNonEmpty!32100 (= (arr!27138 _values!1231) (store mapRest!32100 mapKey!32100 mapValue!32100))))

(declare-fun b!936599 () Bool)

(assert (=> b!936599 (= e!525943 e!525935)))

(assert (=> b!936599 (= lt!422405 (select (arr!27137 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97368 () Bool)

(assert (=> b!936599 (= c!97368 (validKeyInArray!0 lt!422405))))

(declare-fun b!936600 () Bool)

(assert (=> b!936600 (= e!525942 e!525940)))

(declare-fun res!630675 () Bool)

(assert (=> b!936600 (=> (not res!630675) (not e!525940))))

(declare-fun v!791 () V!31923)

(assert (=> b!936600 (= res!630675 (and (= lt!422403 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!936600 (= lt!422403 (apply!872 lt!422412 k!1099))))

(declare-fun b!936601 () Bool)

(declare-fun arrayContainsKey!0 (array!56402 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!936601 (= e!525938 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!936602 () Bool)

(declare-fun Unit!31609 () Unit!31606)

(assert (=> b!936602 (= e!525943 Unit!31609)))

(declare-fun b!936603 () Bool)

(assert (=> b!936603 (= e!525937 (and e!525936 mapRes!32100))))

(declare-fun condMapEmpty!32100 () Bool)

(declare-fun mapDefault!32100 () ValueCell!9628)

