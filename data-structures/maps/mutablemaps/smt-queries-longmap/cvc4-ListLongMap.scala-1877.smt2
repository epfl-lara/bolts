; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33708 () Bool)

(assert start!33708)

(declare-fun b_free!6935 () Bool)

(declare-fun b_next!6935 () Bool)

(assert (=> start!33708 (= b_free!6935 (not b_next!6935))))

(declare-fun tp!24309 () Bool)

(declare-fun b_and!14133 () Bool)

(assert (=> start!33708 (= tp!24309 b_and!14133)))

(declare-fun b!334729 () Bool)

(declare-fun e!205472 () Bool)

(declare-fun tp_is_empty!6887 () Bool)

(assert (=> b!334729 (= e!205472 tp_is_empty!6887)))

(declare-fun b!334730 () Bool)

(declare-fun res!184693 () Bool)

(declare-fun e!205473 () Bool)

(assert (=> b!334730 (=> (not res!184693) (not e!205473))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!334730 (= res!184693 (validKeyInArray!0 k!1348))))

(declare-fun mapNonEmpty!11727 () Bool)

(declare-fun mapRes!11727 () Bool)

(declare-fun tp!24308 () Bool)

(assert (=> mapNonEmpty!11727 (= mapRes!11727 (and tp!24308 e!205472))))

(declare-datatypes ((V!10159 0))(
  ( (V!10160 (val!3488 Int)) )
))
(declare-datatypes ((ValueCell!3100 0))(
  ( (ValueCellFull!3100 (v!5646 V!10159)) (EmptyCell!3100) )
))
(declare-fun mapRest!11727 () (Array (_ BitVec 32) ValueCell!3100))

(declare-datatypes ((array!17359 0))(
  ( (array!17360 (arr!8207 (Array (_ BitVec 32) ValueCell!3100)) (size!8559 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17359)

(declare-fun mapValue!11727 () ValueCell!3100)

(declare-fun mapKey!11727 () (_ BitVec 32))

(assert (=> mapNonEmpty!11727 (= (arr!8207 _values!1525) (store mapRest!11727 mapKey!11727 mapValue!11727))))

(declare-fun b!334731 () Bool)

(declare-fun res!184688 () Bool)

(assert (=> b!334731 (=> (not res!184688) (not e!205473))))

(declare-datatypes ((array!17361 0))(
  ( (array!17362 (arr!8208 (Array (_ BitVec 32) (_ BitVec 64))) (size!8560 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17361)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17361 (_ BitVec 32)) Bool)

(assert (=> b!334731 (= res!184688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!334732 () Bool)

(declare-fun e!205476 () Bool)

(assert (=> b!334732 (= e!205476 tp_is_empty!6887)))

(declare-fun b!334733 () Bool)

(declare-fun e!205475 () Bool)

(assert (=> b!334733 (= e!205473 e!205475)))

(declare-fun res!184694 () Bool)

(assert (=> b!334733 (=> (not res!184694) (not e!205475))))

(declare-datatypes ((tuple2!5068 0))(
  ( (tuple2!5069 (_1!2544 (_ BitVec 64)) (_2!2544 V!10159)) )
))
(declare-datatypes ((List!4709 0))(
  ( (Nil!4706) (Cons!4705 (h!5561 tuple2!5068) (t!9805 List!4709)) )
))
(declare-datatypes ((ListLongMap!3995 0))(
  ( (ListLongMap!3996 (toList!2013 List!4709)) )
))
(declare-fun lt!159609 () ListLongMap!3995)

(declare-fun contains!2053 (ListLongMap!3995 (_ BitVec 64)) Bool)

(assert (=> b!334733 (= res!184694 (not (contains!2053 lt!159609 k!1348)))))

(declare-fun zeroValue!1467 () V!10159)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10159)

(declare-fun getCurrentListMap!1536 (array!17361 array!17359 (_ BitVec 32) (_ BitVec 32) V!10159 V!10159 (_ BitVec 32) Int) ListLongMap!3995)

(assert (=> b!334733 (= lt!159609 (getCurrentListMap!1536 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!334734 () Bool)

(declare-fun res!184692 () Bool)

(assert (=> b!334734 (=> (not res!184692) (not e!205473))))

(assert (=> b!334734 (= res!184692 (and (= (size!8559 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8560 _keys!1895) (size!8559 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!334735 () Bool)

(declare-fun res!184690 () Bool)

(assert (=> b!334735 (=> (not res!184690) (not e!205473))))

(declare-datatypes ((List!4710 0))(
  ( (Nil!4707) (Cons!4706 (h!5562 (_ BitVec 64)) (t!9806 List!4710)) )
))
(declare-fun arrayNoDuplicates!0 (array!17361 (_ BitVec 32) List!4710) Bool)

(assert (=> b!334735 (= res!184690 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4707))))

(declare-fun b!334736 () Bool)

(declare-fun e!205471 () Bool)

(assert (=> b!334736 (= e!205475 e!205471)))

(declare-fun res!184687 () Bool)

(assert (=> b!334736 (=> (not res!184687) (not e!205471))))

(declare-datatypes ((SeekEntryResult!3182 0))(
  ( (MissingZero!3182 (index!14907 (_ BitVec 32))) (Found!3182 (index!14908 (_ BitVec 32))) (Intermediate!3182 (undefined!3994 Bool) (index!14909 (_ BitVec 32)) (x!33375 (_ BitVec 32))) (Undefined!3182) (MissingVacant!3182 (index!14910 (_ BitVec 32))) )
))
(declare-fun lt!159606 () SeekEntryResult!3182)

(assert (=> b!334736 (= res!184687 (and (is-Found!3182 lt!159606) (= (select (arr!8208 _keys!1895) (index!14908 lt!159606)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17361 (_ BitVec 32)) SeekEntryResult!3182)

(assert (=> b!334736 (= lt!159606 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!334737 () Bool)

(assert (=> b!334737 (= e!205471 (not true))))

(assert (=> b!334737 (contains!2053 lt!159609 (select (arr!8208 _keys!1895) (index!14908 lt!159606)))))

(declare-datatypes ((Unit!10412 0))(
  ( (Unit!10413) )
))
(declare-fun lt!159607 () Unit!10412)

(declare-fun lemmaValidKeyInArrayIsInListMap!152 (array!17361 array!17359 (_ BitVec 32) (_ BitVec 32) V!10159 V!10159 (_ BitVec 32) Int) Unit!10412)

(assert (=> b!334737 (= lt!159607 (lemmaValidKeyInArrayIsInListMap!152 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!14908 lt!159606) defaultEntry!1528))))

(declare-fun arrayContainsKey!0 (array!17361 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!334737 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-fun lt!159608 () Unit!10412)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17361 (_ BitVec 64) (_ BitVec 32)) Unit!10412)

(assert (=> b!334737 (= lt!159608 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!14908 lt!159606)))))

(declare-fun b!334738 () Bool)

(declare-fun res!184689 () Bool)

(assert (=> b!334738 (=> (not res!184689) (not e!205471))))

(assert (=> b!334738 (= res!184689 (arrayContainsKey!0 _keys!1895 k!1348 (index!14908 lt!159606)))))

(declare-fun b!334739 () Bool)

(declare-fun e!205474 () Bool)

(assert (=> b!334739 (= e!205474 (and e!205476 mapRes!11727))))

(declare-fun condMapEmpty!11727 () Bool)

(declare-fun mapDefault!11727 () ValueCell!3100)

