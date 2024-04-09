; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35116 () Bool)

(assert start!35116)

(declare-fun b_free!7753 () Bool)

(declare-fun b_next!7753 () Bool)

(assert (=> start!35116 (= b_free!7753 (not b_next!7753))))

(declare-fun tp!26843 () Bool)

(declare-fun b_and!15005 () Bool)

(assert (=> start!35116 (= tp!26843 b_and!15005)))

(declare-fun b!351765 () Bool)

(declare-fun e!215424 () Bool)

(declare-fun tp_is_empty!7705 () Bool)

(assert (=> b!351765 (= e!215424 tp_is_empty!7705)))

(declare-fun b!351767 () Bool)

(declare-datatypes ((Unit!10870 0))(
  ( (Unit!10871) )
))
(declare-fun e!215422 () Unit!10870)

(declare-fun Unit!10872 () Unit!10870)

(assert (=> b!351767 (= e!215422 Unit!10872)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11251 0))(
  ( (V!11252 (val!3897 Int)) )
))
(declare-fun zeroValue!1467 () V!11251)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3509 0))(
  ( (ValueCellFull!3509 (v!6082 V!11251)) (EmptyCell!3509) )
))
(declare-datatypes ((array!18955 0))(
  ( (array!18956 (arr!8978 (Array (_ BitVec 32) ValueCell!3509)) (size!9330 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18955)

(declare-datatypes ((array!18957 0))(
  ( (array!18958 (arr!8979 (Array (_ BitVec 32) (_ BitVec 64))) (size!9331 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18957)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11251)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun lt!164985 () Unit!10870)

(declare-fun lemmaArrayContainsKeyThenInListMap!328 (array!18957 array!18955 (_ BitVec 32) (_ BitVec 32) V!11251 V!11251 (_ BitVec 64) (_ BitVec 32) Int) Unit!10870)

(declare-fun arrayScanForKey!0 (array!18957 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!351767 (= lt!164985 (lemmaArrayContainsKeyThenInListMap!328 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!351767 false))

(declare-fun b!351768 () Bool)

(declare-fun res!195152 () Bool)

(declare-fun e!215423 () Bool)

(assert (=> b!351768 (=> (not res!195152) (not e!215423))))

(assert (=> b!351768 (= res!195152 (and (= (size!9330 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9331 _keys!1895) (size!9330 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!351769 () Bool)

(declare-fun res!195149 () Bool)

(assert (=> b!351769 (=> (not res!195149) (not e!215423))))

(declare-datatypes ((tuple2!5616 0))(
  ( (tuple2!5617 (_1!2818 (_ BitVec 64)) (_2!2818 V!11251)) )
))
(declare-datatypes ((List!5253 0))(
  ( (Nil!5250) (Cons!5249 (h!6105 tuple2!5616) (t!10403 List!5253)) )
))
(declare-datatypes ((ListLongMap!4543 0))(
  ( (ListLongMap!4544 (toList!2287 List!5253)) )
))
(declare-fun contains!2354 (ListLongMap!4543 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1804 (array!18957 array!18955 (_ BitVec 32) (_ BitVec 32) V!11251 V!11251 (_ BitVec 32) Int) ListLongMap!4543)

(assert (=> b!351769 (= res!195149 (not (contains!2354 (getCurrentListMap!1804 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!351770 () Bool)

(declare-fun e!215426 () Bool)

(assert (=> b!351770 (= e!215426 false)))

(declare-fun lt!164983 () Unit!10870)

(assert (=> b!351770 (= lt!164983 e!215422)))

(declare-fun c!53429 () Bool)

(declare-fun arrayContainsKey!0 (array!18957 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!351770 (= c!53429 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!351771 () Bool)

(declare-fun res!195151 () Bool)

(assert (=> b!351771 (=> (not res!195151) (not e!215423))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!351771 (= res!195151 (validKeyInArray!0 k!1348))))

(declare-fun b!351772 () Bool)

(declare-fun res!195150 () Bool)

(assert (=> b!351772 (=> (not res!195150) (not e!215423))))

(declare-datatypes ((List!5254 0))(
  ( (Nil!5251) (Cons!5250 (h!6106 (_ BitVec 64)) (t!10404 List!5254)) )
))
(declare-fun arrayNoDuplicates!0 (array!18957 (_ BitVec 32) List!5254) Bool)

(assert (=> b!351772 (= res!195150 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5251))))

(declare-fun mapNonEmpty!13035 () Bool)

(declare-fun mapRes!13035 () Bool)

(declare-fun tp!26844 () Bool)

(assert (=> mapNonEmpty!13035 (= mapRes!13035 (and tp!26844 e!215424))))

(declare-fun mapValue!13035 () ValueCell!3509)

(declare-fun mapKey!13035 () (_ BitVec 32))

(declare-fun mapRest!13035 () (Array (_ BitVec 32) ValueCell!3509))

(assert (=> mapNonEmpty!13035 (= (arr!8978 _values!1525) (store mapRest!13035 mapKey!13035 mapValue!13035))))

(declare-fun mapIsEmpty!13035 () Bool)

(assert (=> mapIsEmpty!13035 mapRes!13035))

(declare-fun b!351773 () Bool)

(assert (=> b!351773 (= e!215423 e!215426)))

(declare-fun res!195146 () Bool)

(assert (=> b!351773 (=> (not res!195146) (not e!215426))))

(declare-datatypes ((SeekEntryResult!3451 0))(
  ( (MissingZero!3451 (index!15983 (_ BitVec 32))) (Found!3451 (index!15984 (_ BitVec 32))) (Intermediate!3451 (undefined!4263 Bool) (index!15985 (_ BitVec 32)) (x!35010 (_ BitVec 32))) (Undefined!3451) (MissingVacant!3451 (index!15986 (_ BitVec 32))) )
))
(declare-fun lt!164984 () SeekEntryResult!3451)

(assert (=> b!351773 (= res!195146 (and (not (is-Found!3451 lt!164984)) (not (is-MissingZero!3451 lt!164984)) (is-MissingVacant!3451 lt!164984)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18957 (_ BitVec 32)) SeekEntryResult!3451)

(assert (=> b!351773 (= lt!164984 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!351774 () Bool)

(declare-fun e!215427 () Bool)

(assert (=> b!351774 (= e!215427 tp_is_empty!7705)))

(declare-fun b!351766 () Bool)

(declare-fun Unit!10873 () Unit!10870)

(assert (=> b!351766 (= e!215422 Unit!10873)))

(declare-fun res!195147 () Bool)

(assert (=> start!35116 (=> (not res!195147) (not e!215423))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35116 (= res!195147 (validMask!0 mask!2385))))

(assert (=> start!35116 e!215423))

(assert (=> start!35116 true))

(assert (=> start!35116 tp_is_empty!7705))

(assert (=> start!35116 tp!26843))

(declare-fun e!215425 () Bool)

(declare-fun array_inv!6616 (array!18955) Bool)

(assert (=> start!35116 (and (array_inv!6616 _values!1525) e!215425)))

(declare-fun array_inv!6617 (array!18957) Bool)

(assert (=> start!35116 (array_inv!6617 _keys!1895)))

(declare-fun b!351775 () Bool)

(assert (=> b!351775 (= e!215425 (and e!215427 mapRes!13035))))

(declare-fun condMapEmpty!13035 () Bool)

(declare-fun mapDefault!13035 () ValueCell!3509)

