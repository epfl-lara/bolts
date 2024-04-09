; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33674 () Bool)

(assert start!33674)

(declare-fun b_free!6901 () Bool)

(declare-fun b_next!6901 () Bool)

(assert (=> start!33674 (= b_free!6901 (not b_next!6901))))

(declare-fun tp!24206 () Bool)

(declare-fun b_and!14099 () Bool)

(assert (=> start!33674 (= tp!24206 b_and!14099)))

(declare-fun mapNonEmpty!11676 () Bool)

(declare-fun mapRes!11676 () Bool)

(declare-fun tp!24207 () Bool)

(declare-fun e!205151 () Bool)

(assert (=> mapNonEmpty!11676 (= mapRes!11676 (and tp!24207 e!205151))))

(declare-datatypes ((V!10115 0))(
  ( (V!10116 (val!3471 Int)) )
))
(declare-datatypes ((ValueCell!3083 0))(
  ( (ValueCellFull!3083 (v!5629 V!10115)) (EmptyCell!3083) )
))
(declare-fun mapRest!11676 () (Array (_ BitVec 32) ValueCell!3083))

(declare-datatypes ((array!17295 0))(
  ( (array!17296 (arr!8175 (Array (_ BitVec 32) ValueCell!3083)) (size!8527 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17295)

(declare-fun mapValue!11676 () ValueCell!3083)

(declare-fun mapKey!11676 () (_ BitVec 32))

(assert (=> mapNonEmpty!11676 (= (arr!8175 _values!1525) (store mapRest!11676 mapKey!11676 mapValue!11676))))

(declare-fun b!334168 () Bool)

(declare-fun e!205148 () Bool)

(declare-fun tp_is_empty!6853 () Bool)

(assert (=> b!334168 (= e!205148 tp_is_empty!6853)))

(declare-fun b!334169 () Bool)

(declare-fun res!184282 () Bool)

(declare-fun e!205147 () Bool)

(assert (=> b!334169 (=> (not res!184282) (not e!205147))))

(declare-datatypes ((array!17297 0))(
  ( (array!17298 (arr!8176 (Array (_ BitVec 32) (_ BitVec 64))) (size!8528 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17297)

(declare-datatypes ((List!4685 0))(
  ( (Nil!4682) (Cons!4681 (h!5537 (_ BitVec 64)) (t!9781 List!4685)) )
))
(declare-fun arrayNoDuplicates!0 (array!17297 (_ BitVec 32) List!4685) Bool)

(assert (=> b!334169 (= res!184282 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4682))))

(declare-fun b!334170 () Bool)

(declare-fun e!205149 () Bool)

(assert (=> b!334170 (= e!205147 e!205149)))

(declare-fun res!184283 () Bool)

(assert (=> b!334170 (=> (not res!184283) (not e!205149))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3170 0))(
  ( (MissingZero!3170 (index!14859 (_ BitVec 32))) (Found!3170 (index!14860 (_ BitVec 32))) (Intermediate!3170 (undefined!3982 Bool) (index!14861 (_ BitVec 32)) (x!33323 (_ BitVec 32))) (Undefined!3170) (MissingVacant!3170 (index!14862 (_ BitVec 32))) )
))
(declare-fun lt!159470 () SeekEntryResult!3170)

(assert (=> b!334170 (= res!184283 (and (is-Found!3170 lt!159470) (= (select (arr!8176 _keys!1895) (index!14860 lt!159470)) k!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17297 (_ BitVec 32)) SeekEntryResult!3170)

(assert (=> b!334170 (= lt!159470 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!334171 () Bool)

(assert (=> b!334171 (= e!205149 (not true))))

(declare-fun arrayContainsKey!0 (array!17297 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!334171 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10394 0))(
  ( (Unit!10395) )
))
(declare-fun lt!159471 () Unit!10394)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17297 (_ BitVec 64) (_ BitVec 32)) Unit!10394)

(assert (=> b!334171 (= lt!159471 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!14860 lt!159470)))))

(declare-fun mapIsEmpty!11676 () Bool)

(assert (=> mapIsEmpty!11676 mapRes!11676))

(declare-fun b!334172 () Bool)

(declare-fun res!184281 () Bool)

(assert (=> b!334172 (=> (not res!184281) (not e!205147))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!334172 (= res!184281 (and (= (size!8527 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8528 _keys!1895) (size!8527 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!334173 () Bool)

(declare-fun res!184286 () Bool)

(assert (=> b!334173 (=> (not res!184286) (not e!205147))))

(declare-fun zeroValue!1467 () V!10115)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10115)

(declare-datatypes ((tuple2!5044 0))(
  ( (tuple2!5045 (_1!2532 (_ BitVec 64)) (_2!2532 V!10115)) )
))
(declare-datatypes ((List!4686 0))(
  ( (Nil!4683) (Cons!4682 (h!5538 tuple2!5044) (t!9782 List!4686)) )
))
(declare-datatypes ((ListLongMap!3971 0))(
  ( (ListLongMap!3972 (toList!2001 List!4686)) )
))
(declare-fun contains!2041 (ListLongMap!3971 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1524 (array!17297 array!17295 (_ BitVec 32) (_ BitVec 32) V!10115 V!10115 (_ BitVec 32) Int) ListLongMap!3971)

(assert (=> b!334173 (= res!184286 (not (contains!2041 (getCurrentListMap!1524 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!334174 () Bool)

(declare-fun res!184284 () Bool)

(assert (=> b!334174 (=> (not res!184284) (not e!205147))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!334174 (= res!184284 (validKeyInArray!0 k!1348))))

(declare-fun b!334175 () Bool)

(assert (=> b!334175 (= e!205151 tp_is_empty!6853)))

(declare-fun b!334176 () Bool)

(declare-fun res!184285 () Bool)

(assert (=> b!334176 (=> (not res!184285) (not e!205147))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17297 (_ BitVec 32)) Bool)

(assert (=> b!334176 (= res!184285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!334177 () Bool)

(declare-fun res!184279 () Bool)

(assert (=> b!334177 (=> (not res!184279) (not e!205149))))

(assert (=> b!334177 (= res!184279 (arrayContainsKey!0 _keys!1895 k!1348 (index!14860 lt!159470)))))

(declare-fun b!334178 () Bool)

(declare-fun e!205150 () Bool)

(assert (=> b!334178 (= e!205150 (and e!205148 mapRes!11676))))

(declare-fun condMapEmpty!11676 () Bool)

(declare-fun mapDefault!11676 () ValueCell!3083)

