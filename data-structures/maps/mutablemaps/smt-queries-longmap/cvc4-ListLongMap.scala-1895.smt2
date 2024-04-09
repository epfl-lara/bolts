; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33872 () Bool)

(assert start!33872)

(declare-fun b_free!7043 () Bool)

(declare-fun b_next!7043 () Bool)

(assert (=> start!33872 (= b_free!7043 (not b_next!7043))))

(declare-fun tp!24642 () Bool)

(declare-fun b_and!14247 () Bool)

(assert (=> start!33872 (= tp!24642 b_and!14247)))

(declare-fun b!336826 () Bool)

(declare-fun e!206729 () Bool)

(assert (=> b!336826 (= e!206729 false)))

(declare-fun lt!160320 () (_ BitVec 32))

(declare-datatypes ((array!17567 0))(
  ( (array!17568 (arr!8308 (Array (_ BitVec 32) (_ BitVec 64))) (size!8660 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17567)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!17567 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!336826 (= lt!160320 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!336828 () Bool)

(declare-fun res!186054 () Bool)

(declare-fun e!206730 () Bool)

(assert (=> b!336828 (=> (not res!186054) (not e!206730))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10303 0))(
  ( (V!10304 (val!3542 Int)) )
))
(declare-fun zeroValue!1467 () V!10303)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3154 0))(
  ( (ValueCellFull!3154 (v!5703 V!10303)) (EmptyCell!3154) )
))
(declare-datatypes ((array!17569 0))(
  ( (array!17570 (arr!8309 (Array (_ BitVec 32) ValueCell!3154)) (size!8661 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17569)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10303)

(declare-datatypes ((tuple2!5150 0))(
  ( (tuple2!5151 (_1!2585 (_ BitVec 64)) (_2!2585 V!10303)) )
))
(declare-datatypes ((List!4788 0))(
  ( (Nil!4785) (Cons!4784 (h!5640 tuple2!5150) (t!9890 List!4788)) )
))
(declare-datatypes ((ListLongMap!4077 0))(
  ( (ListLongMap!4078 (toList!2054 List!4788)) )
))
(declare-fun contains!2097 (ListLongMap!4077 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1574 (array!17567 array!17569 (_ BitVec 32) (_ BitVec 32) V!10303 V!10303 (_ BitVec 32) Int) ListLongMap!4077)

(assert (=> b!336828 (= res!186054 (not (contains!2097 (getCurrentListMap!1574 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!336829 () Bool)

(declare-fun res!186052 () Bool)

(assert (=> b!336829 (=> (not res!186052) (not e!206729))))

(declare-fun arrayContainsKey!0 (array!17567 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!336829 (= res!186052 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!11898 () Bool)

(declare-fun mapRes!11898 () Bool)

(assert (=> mapIsEmpty!11898 mapRes!11898))

(declare-fun b!336830 () Bool)

(declare-fun res!186059 () Bool)

(assert (=> b!336830 (=> (not res!186059) (not e!206730))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17567 (_ BitVec 32)) Bool)

(assert (=> b!336830 (= res!186059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!336831 () Bool)

(declare-fun e!206731 () Bool)

(declare-fun tp_is_empty!6995 () Bool)

(assert (=> b!336831 (= e!206731 tp_is_empty!6995)))

(declare-fun mapNonEmpty!11898 () Bool)

(declare-fun tp!24641 () Bool)

(assert (=> mapNonEmpty!11898 (= mapRes!11898 (and tp!24641 e!206731))))

(declare-fun mapValue!11898 () ValueCell!3154)

(declare-fun mapKey!11898 () (_ BitVec 32))

(declare-fun mapRest!11898 () (Array (_ BitVec 32) ValueCell!3154))

(assert (=> mapNonEmpty!11898 (= (arr!8309 _values!1525) (store mapRest!11898 mapKey!11898 mapValue!11898))))

(declare-fun b!336832 () Bool)

(declare-fun res!186053 () Bool)

(assert (=> b!336832 (=> (not res!186053) (not e!206730))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!336832 (= res!186053 (validKeyInArray!0 k!1348))))

(declare-fun b!336827 () Bool)

(declare-fun res!186056 () Bool)

(assert (=> b!336827 (=> (not res!186056) (not e!206730))))

(declare-datatypes ((List!4789 0))(
  ( (Nil!4786) (Cons!4785 (h!5641 (_ BitVec 64)) (t!9891 List!4789)) )
))
(declare-fun arrayNoDuplicates!0 (array!17567 (_ BitVec 32) List!4789) Bool)

(assert (=> b!336827 (= res!186056 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4786))))

(declare-fun res!186055 () Bool)

(assert (=> start!33872 (=> (not res!186055) (not e!206730))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33872 (= res!186055 (validMask!0 mask!2385))))

(assert (=> start!33872 e!206730))

(assert (=> start!33872 true))

(assert (=> start!33872 tp_is_empty!6995))

(assert (=> start!33872 tp!24642))

(declare-fun e!206733 () Bool)

(declare-fun array_inv!6160 (array!17569) Bool)

(assert (=> start!33872 (and (array_inv!6160 _values!1525) e!206733)))

(declare-fun array_inv!6161 (array!17567) Bool)

(assert (=> start!33872 (array_inv!6161 _keys!1895)))

(declare-fun b!336833 () Bool)

(declare-fun e!206728 () Bool)

(assert (=> b!336833 (= e!206728 tp_is_empty!6995)))

(declare-fun b!336834 () Bool)

(assert (=> b!336834 (= e!206733 (and e!206728 mapRes!11898))))

(declare-fun condMapEmpty!11898 () Bool)

(declare-fun mapDefault!11898 () ValueCell!3154)

