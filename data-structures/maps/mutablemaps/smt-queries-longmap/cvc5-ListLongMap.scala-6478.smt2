; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82736 () Bool)

(assert start!82736)

(declare-fun b_free!18841 () Bool)

(declare-fun b_next!18841 () Bool)

(assert (=> start!82736 (= b_free!18841 (not b_next!18841))))

(declare-fun tp!65643 () Bool)

(declare-fun b_and!30347 () Bool)

(assert (=> start!82736 (= tp!65643 b_and!30347)))

(declare-fun b!964346 () Bool)

(declare-fun e!543688 () Bool)

(declare-fun tp_is_empty!21643 () Bool)

(assert (=> b!964346 (= e!543688 tp_is_empty!21643)))

(declare-fun b!964347 () Bool)

(declare-fun res!645595 () Bool)

(declare-fun e!543691 () Bool)

(assert (=> b!964347 (=> (not res!645595) (not e!543691))))

(declare-datatypes ((array!59359 0))(
  ( (array!59360 (arr!28544 (Array (_ BitVec 32) (_ BitVec 64))) (size!29024 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59359)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!964347 (= res!645595 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29024 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29024 _keys!1686))))))

(declare-fun res!645593 () Bool)

(assert (=> start!82736 (=> (not res!645593) (not e!543691))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82736 (= res!645593 (validMask!0 mask!2110))))

(assert (=> start!82736 e!543691))

(assert (=> start!82736 true))

(declare-datatypes ((V!33841 0))(
  ( (V!33842 (val!10872 Int)) )
))
(declare-datatypes ((ValueCell!10340 0))(
  ( (ValueCellFull!10340 (v!13430 V!33841)) (EmptyCell!10340) )
))
(declare-datatypes ((array!59361 0))(
  ( (array!59362 (arr!28545 (Array (_ BitVec 32) ValueCell!10340)) (size!29025 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59361)

(declare-fun e!543689 () Bool)

(declare-fun array_inv!22017 (array!59361) Bool)

(assert (=> start!82736 (and (array_inv!22017 _values!1400) e!543689)))

(declare-fun array_inv!22018 (array!59359) Bool)

(assert (=> start!82736 (array_inv!22018 _keys!1686)))

(assert (=> start!82736 tp!65643))

(assert (=> start!82736 tp_is_empty!21643))

(declare-fun b!964348 () Bool)

(declare-fun res!645590 () Bool)

(assert (=> b!964348 (=> (not res!645590) (not e!543691))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!964348 (= res!645590 (and (= (size!29025 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29024 _keys!1686) (size!29025 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!964349 () Bool)

(declare-fun e!543687 () Bool)

(assert (=> b!964349 (= e!543687 true)))

(declare-fun zeroValue!1342 () V!33841)

(declare-fun defaultEntry!1403 () Int)

(declare-fun minValue!1342 () V!33841)

(declare-datatypes ((tuple2!14056 0))(
  ( (tuple2!14057 (_1!7038 (_ BitVec 64)) (_2!7038 V!33841)) )
))
(declare-datatypes ((List!19933 0))(
  ( (Nil!19930) (Cons!19929 (h!21091 tuple2!14056) (t!28304 List!19933)) )
))
(declare-datatypes ((ListLongMap!12767 0))(
  ( (ListLongMap!12768 (toList!6399 List!19933)) )
))
(declare-fun contains!5453 (ListLongMap!12767 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3584 (array!59359 array!59361 (_ BitVec 32) (_ BitVec 32) V!33841 V!33841 (_ BitVec 32) Int) ListLongMap!12767)

(assert (=> b!964349 (contains!5453 (getCurrentListMap!3584 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28544 _keys!1686) i!803))))

(declare-datatypes ((Unit!32253 0))(
  ( (Unit!32254) )
))
(declare-fun lt!431058 () Unit!32253)

(declare-fun lemmaInListMapFromThenInFromSmaller!26 (array!59359 array!59361 (_ BitVec 32) (_ BitVec 32) V!33841 V!33841 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32253)

(assert (=> b!964349 (= lt!431058 (lemmaInListMapFromThenInFromSmaller!26 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159 i!803 defaultEntry!1403))))

(declare-fun b!964350 () Bool)

(declare-fun res!645596 () Bool)

(assert (=> b!964350 (=> (not res!645596) (not e!543691))))

(declare-datatypes ((List!19934 0))(
  ( (Nil!19931) (Cons!19930 (h!21092 (_ BitVec 64)) (t!28305 List!19934)) )
))
(declare-fun arrayNoDuplicates!0 (array!59359 (_ BitVec 32) List!19934) Bool)

(assert (=> b!964350 (= res!645596 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19931))))

(declare-fun b!964351 () Bool)

(declare-fun e!543686 () Bool)

(assert (=> b!964351 (= e!543686 tp_is_empty!21643)))

(declare-fun mapIsEmpty!34459 () Bool)

(declare-fun mapRes!34459 () Bool)

(assert (=> mapIsEmpty!34459 mapRes!34459))

(declare-fun b!964352 () Bool)

(declare-fun res!645594 () Bool)

(assert (=> b!964352 (=> (not res!645594) (not e!543691))))

(assert (=> b!964352 (= res!645594 (bvsgt from!2084 newFrom!159))))

(declare-fun b!964353 () Bool)

(assert (=> b!964353 (= e!543691 (not e!543687))))

(declare-fun res!645591 () Bool)

(assert (=> b!964353 (=> res!645591 e!543687)))

(assert (=> b!964353 (= res!645591 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29024 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(assert (=> b!964353 (contains!5453 (getCurrentListMap!3584 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28544 _keys!1686) i!803))))

(declare-fun lt!431057 () Unit!32253)

(declare-fun lemmaInListMapFromThenInFromMinusOne!34 (array!59359 array!59361 (_ BitVec 32) (_ BitVec 32) V!33841 V!33841 (_ BitVec 32) (_ BitVec 32) Int) Unit!32253)

(assert (=> b!964353 (= lt!431057 (lemmaInListMapFromThenInFromMinusOne!34 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!964354 () Bool)

(declare-fun res!645592 () Bool)

(assert (=> b!964354 (=> (not res!645592) (not e!543691))))

(assert (=> b!964354 (= res!645592 (contains!5453 (getCurrentListMap!3584 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28544 _keys!1686) i!803)))))

(declare-fun b!964355 () Bool)

(declare-fun res!645588 () Bool)

(assert (=> b!964355 (=> (not res!645588) (not e!543691))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!964355 (= res!645588 (validKeyInArray!0 (select (arr!28544 _keys!1686) i!803)))))

(declare-fun b!964356 () Bool)

(declare-fun res!645589 () Bool)

(assert (=> b!964356 (=> (not res!645589) (not e!543691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59359 (_ BitVec 32)) Bool)

(assert (=> b!964356 (= res!645589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapNonEmpty!34459 () Bool)

(declare-fun tp!65644 () Bool)

(assert (=> mapNonEmpty!34459 (= mapRes!34459 (and tp!65644 e!543688))))

(declare-fun mapRest!34459 () (Array (_ BitVec 32) ValueCell!10340))

(declare-fun mapValue!34459 () ValueCell!10340)

(declare-fun mapKey!34459 () (_ BitVec 32))

(assert (=> mapNonEmpty!34459 (= (arr!28545 _values!1400) (store mapRest!34459 mapKey!34459 mapValue!34459))))

(declare-fun b!964357 () Bool)

(assert (=> b!964357 (= e!543689 (and e!543686 mapRes!34459))))

(declare-fun condMapEmpty!34459 () Bool)

(declare-fun mapDefault!34459 () ValueCell!10340)

