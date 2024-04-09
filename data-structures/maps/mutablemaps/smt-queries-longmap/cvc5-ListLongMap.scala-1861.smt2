; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33590 () Bool)

(assert start!33590)

(declare-fun b_free!6835 () Bool)

(declare-fun b_next!6835 () Bool)

(assert (=> start!33590 (= b_free!6835 (not b_next!6835))))

(declare-fun tp!24006 () Bool)

(declare-fun b_and!14031 () Bool)

(assert (=> start!33590 (= tp!24006 b_and!14031)))

(declare-fun b!333038 () Bool)

(declare-fun e!204519 () Bool)

(declare-fun tp_is_empty!6787 () Bool)

(assert (=> b!333038 (= e!204519 tp_is_empty!6787)))

(declare-fun b!333039 () Bool)

(declare-fun res!183529 () Bool)

(declare-fun e!204518 () Bool)

(assert (=> b!333039 (=> (not res!183529) (not e!204518))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10027 0))(
  ( (V!10028 (val!3438 Int)) )
))
(declare-fun zeroValue!1467 () V!10027)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3050 0))(
  ( (ValueCellFull!3050 (v!5595 V!10027)) (EmptyCell!3050) )
))
(declare-datatypes ((array!17169 0))(
  ( (array!17170 (arr!8113 (Array (_ BitVec 32) ValueCell!3050)) (size!8465 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17169)

(declare-datatypes ((array!17171 0))(
  ( (array!17172 (arr!8114 (Array (_ BitVec 32) (_ BitVec 64))) (size!8466 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17171)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10027)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((tuple2!5004 0))(
  ( (tuple2!5005 (_1!2512 (_ BitVec 64)) (_2!2512 V!10027)) )
))
(declare-datatypes ((List!4643 0))(
  ( (Nil!4640) (Cons!4639 (h!5495 tuple2!5004) (t!9737 List!4643)) )
))
(declare-datatypes ((ListLongMap!3931 0))(
  ( (ListLongMap!3932 (toList!1981 List!4643)) )
))
(declare-fun contains!2020 (ListLongMap!3931 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1504 (array!17171 array!17169 (_ BitVec 32) (_ BitVec 32) V!10027 V!10027 (_ BitVec 32) Int) ListLongMap!3931)

(assert (=> b!333039 (= res!183529 (not (contains!2020 (getCurrentListMap!1504 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!333040 () Bool)

(declare-fun res!183530 () Bool)

(assert (=> b!333040 (=> (not res!183530) (not e!204518))))

(assert (=> b!333040 (= res!183530 (and (= (size!8465 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8466 _keys!1895) (size!8465 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!11574 () Bool)

(declare-fun mapRes!11574 () Bool)

(declare-fun tp!24005 () Bool)

(declare-fun e!204515 () Bool)

(assert (=> mapNonEmpty!11574 (= mapRes!11574 (and tp!24005 e!204515))))

(declare-fun mapValue!11574 () ValueCell!3050)

(declare-fun mapKey!11574 () (_ BitVec 32))

(declare-fun mapRest!11574 () (Array (_ BitVec 32) ValueCell!3050))

(assert (=> mapNonEmpty!11574 (= (arr!8113 _values!1525) (store mapRest!11574 mapKey!11574 mapValue!11574))))

(declare-fun mapIsEmpty!11574 () Bool)

(assert (=> mapIsEmpty!11574 mapRes!11574))

(declare-datatypes ((SeekEntryResult!3148 0))(
  ( (MissingZero!3148 (index!14771 (_ BitVec 32))) (Found!3148 (index!14772 (_ BitVec 32))) (Intermediate!3148 (undefined!3960 Bool) (index!14773 (_ BitVec 32)) (x!33203 (_ BitVec 32))) (Undefined!3148) (MissingVacant!3148 (index!14774 (_ BitVec 32))) )
))
(declare-fun lt!159219 () SeekEntryResult!3148)

(declare-fun b!333041 () Bool)

(assert (=> b!333041 (= e!204518 (and (is-Found!3148 lt!159219) (= (select (arr!8114 _keys!1895) (index!14772 lt!159219)) k!1348) (bvsge (index!14772 lt!159219) #b00000000000000000000000000000000) (bvslt (index!14772 lt!159219) (size!8466 _keys!1895)) (bvsge (size!8466 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17171 (_ BitVec 32)) SeekEntryResult!3148)

(assert (=> b!333041 (= lt!159219 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!333042 () Bool)

(declare-fun res!183532 () Bool)

(assert (=> b!333042 (=> (not res!183532) (not e!204518))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!333042 (= res!183532 (validKeyInArray!0 k!1348))))

(declare-fun b!333043 () Bool)

(assert (=> b!333043 (= e!204515 tp_is_empty!6787)))

(declare-fun res!183533 () Bool)

(assert (=> start!33590 (=> (not res!183533) (not e!204518))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33590 (= res!183533 (validMask!0 mask!2385))))

(assert (=> start!33590 e!204518))

(assert (=> start!33590 true))

(assert (=> start!33590 tp_is_empty!6787))

(assert (=> start!33590 tp!24006))

(declare-fun e!204517 () Bool)

(declare-fun array_inv!6032 (array!17169) Bool)

(assert (=> start!33590 (and (array_inv!6032 _values!1525) e!204517)))

(declare-fun array_inv!6033 (array!17171) Bool)

(assert (=> start!33590 (array_inv!6033 _keys!1895)))

(declare-fun b!333044 () Bool)

(declare-fun res!183528 () Bool)

(assert (=> b!333044 (=> (not res!183528) (not e!204518))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17171 (_ BitVec 32)) Bool)

(assert (=> b!333044 (= res!183528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!333045 () Bool)

(declare-fun res!183531 () Bool)

(assert (=> b!333045 (=> (not res!183531) (not e!204518))))

(declare-datatypes ((List!4644 0))(
  ( (Nil!4641) (Cons!4640 (h!5496 (_ BitVec 64)) (t!9738 List!4644)) )
))
(declare-fun arrayNoDuplicates!0 (array!17171 (_ BitVec 32) List!4644) Bool)

(assert (=> b!333045 (= res!183531 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4641))))

(declare-fun b!333046 () Bool)

(assert (=> b!333046 (= e!204517 (and e!204519 mapRes!11574))))

(declare-fun condMapEmpty!11574 () Bool)

(declare-fun mapDefault!11574 () ValueCell!3050)

