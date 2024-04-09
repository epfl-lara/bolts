; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33732 () Bool)

(assert start!33732)

(declare-fun b_free!6959 () Bool)

(declare-fun b_next!6959 () Bool)

(assert (=> start!33732 (= b_free!6959 (not b_next!6959))))

(declare-fun tp!24380 () Bool)

(declare-fun b_and!14157 () Bool)

(assert (=> start!33732 (= tp!24380 b_and!14157)))

(declare-fun mapIsEmpty!11763 () Bool)

(declare-fun mapRes!11763 () Bool)

(assert (=> mapIsEmpty!11763 mapRes!11763))

(declare-fun mapNonEmpty!11763 () Bool)

(declare-fun tp!24381 () Bool)

(declare-fun e!205725 () Bool)

(assert (=> mapNonEmpty!11763 (= mapRes!11763 (and tp!24381 e!205725))))

(declare-fun mapKey!11763 () (_ BitVec 32))

(declare-datatypes ((V!10191 0))(
  ( (V!10192 (val!3500 Int)) )
))
(declare-datatypes ((ValueCell!3112 0))(
  ( (ValueCellFull!3112 (v!5658 V!10191)) (EmptyCell!3112) )
))
(declare-datatypes ((array!17403 0))(
  ( (array!17404 (arr!8229 (Array (_ BitVec 32) ValueCell!3112)) (size!8581 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17403)

(declare-fun mapRest!11763 () (Array (_ BitVec 32) ValueCell!3112))

(declare-fun mapValue!11763 () ValueCell!3112)

(assert (=> mapNonEmpty!11763 (= (arr!8229 _values!1525) (store mapRest!11763 mapKey!11763 mapValue!11763))))

(declare-fun b!335126 () Bool)

(declare-fun res!184981 () Bool)

(declare-fun e!205724 () Bool)

(assert (=> b!335126 (=> (not res!184981) (not e!205724))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3190 0))(
  ( (MissingZero!3190 (index!14939 (_ BitVec 32))) (Found!3190 (index!14940 (_ BitVec 32))) (Intermediate!3190 (undefined!4002 Bool) (index!14941 (_ BitVec 32)) (x!33415 (_ BitVec 32))) (Undefined!3190) (MissingVacant!3190 (index!14942 (_ BitVec 32))) )
))
(declare-fun lt!159753 () SeekEntryResult!3190)

(declare-datatypes ((array!17405 0))(
  ( (array!17406 (arr!8230 (Array (_ BitVec 32) (_ BitVec 64))) (size!8582 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17405)

(declare-fun arrayContainsKey!0 (array!17405 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!335126 (= res!184981 (arrayContainsKey!0 _keys!1895 k!1348 (index!14940 lt!159753)))))

(declare-fun b!335127 () Bool)

(declare-fun e!205726 () Bool)

(declare-fun tp_is_empty!6911 () Bool)

(assert (=> b!335127 (= e!205726 tp_is_empty!6911)))

(declare-fun b!335128 () Bool)

(declare-fun res!184978 () Bool)

(declare-fun e!205722 () Bool)

(assert (=> b!335128 (=> (not res!184978) (not e!205722))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17405 (_ BitVec 32)) Bool)

(assert (=> b!335128 (= res!184978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!335129 () Bool)

(declare-fun res!184979 () Bool)

(assert (=> b!335129 (=> (not res!184979) (not e!205722))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!335129 (= res!184979 (validKeyInArray!0 k!1348))))

(declare-fun b!335130 () Bool)

(declare-fun res!184982 () Bool)

(assert (=> b!335130 (=> (not res!184982) (not e!205722))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!335130 (= res!184982 (and (= (size!8581 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8582 _keys!1895) (size!8581 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!335131 () Bool)

(declare-fun e!205727 () Bool)

(assert (=> b!335131 (= e!205727 e!205724)))

(declare-fun res!184976 () Bool)

(assert (=> b!335131 (=> (not res!184976) (not e!205724))))

(assert (=> b!335131 (= res!184976 (and (is-Found!3190 lt!159753) (= (select (arr!8230 _keys!1895) (index!14940 lt!159753)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17405 (_ BitVec 32)) SeekEntryResult!3190)

(assert (=> b!335131 (= lt!159753 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!335132 () Bool)

(assert (=> b!335132 (= e!205722 e!205727)))

(declare-fun res!184980 () Bool)

(assert (=> b!335132 (=> (not res!184980) (not e!205727))))

(declare-datatypes ((tuple2!5082 0))(
  ( (tuple2!5083 (_1!2551 (_ BitVec 64)) (_2!2551 V!10191)) )
))
(declare-datatypes ((List!4723 0))(
  ( (Nil!4720) (Cons!4719 (h!5575 tuple2!5082) (t!9819 List!4723)) )
))
(declare-datatypes ((ListLongMap!4009 0))(
  ( (ListLongMap!4010 (toList!2020 List!4723)) )
))
(declare-fun lt!159750 () ListLongMap!4009)

(declare-fun contains!2060 (ListLongMap!4009 (_ BitVec 64)) Bool)

(assert (=> b!335132 (= res!184980 (not (contains!2060 lt!159750 k!1348)))))

(declare-fun zeroValue!1467 () V!10191)

(declare-fun minValue!1467 () V!10191)

(declare-fun defaultEntry!1528 () Int)

(declare-fun getCurrentListMap!1542 (array!17405 array!17403 (_ BitVec 32) (_ BitVec 32) V!10191 V!10191 (_ BitVec 32) Int) ListLongMap!4009)

(assert (=> b!335132 (= lt!159750 (getCurrentListMap!1542 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!335133 () Bool)

(assert (=> b!335133 (= e!205725 tp_is_empty!6911)))

(declare-fun b!335134 () Bool)

(declare-fun res!184975 () Bool)

(assert (=> b!335134 (=> (not res!184975) (not e!205722))))

(declare-datatypes ((List!4724 0))(
  ( (Nil!4721) (Cons!4720 (h!5576 (_ BitVec 64)) (t!9820 List!4724)) )
))
(declare-fun arrayNoDuplicates!0 (array!17405 (_ BitVec 32) List!4724) Bool)

(assert (=> b!335134 (= res!184975 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4721))))

(declare-fun b!335135 () Bool)

(declare-fun e!205723 () Bool)

(assert (=> b!335135 (= e!205723 (and e!205726 mapRes!11763))))

(declare-fun condMapEmpty!11763 () Bool)

(declare-fun mapDefault!11763 () ValueCell!3112)

