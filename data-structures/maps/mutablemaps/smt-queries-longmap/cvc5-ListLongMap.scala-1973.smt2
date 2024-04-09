; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34708 () Bool)

(assert start!34708)

(declare-fun b_free!7507 () Bool)

(declare-fun b_next!7507 () Bool)

(assert (=> start!34708 (= b_free!7507 (not b_next!7507))))

(declare-fun tp!26085 () Bool)

(declare-fun b_and!14745 () Bool)

(assert (=> start!34708 (= tp!26085 b_and!14745)))

(declare-fun b!346578 () Bool)

(declare-fun res!191807 () Bool)

(declare-fun e!212414 () Bool)

(assert (=> b!346578 (=> (not res!191807) (not e!212414))))

(declare-datatypes ((array!18475 0))(
  ( (array!18476 (arr!8745 (Array (_ BitVec 32) (_ BitVec 64))) (size!9097 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18475)

(declare-datatypes ((List!5090 0))(
  ( (Nil!5087) (Cons!5086 (h!5942 (_ BitVec 64)) (t!10226 List!5090)) )
))
(declare-fun arrayNoDuplicates!0 (array!18475 (_ BitVec 32) List!5090) Bool)

(assert (=> b!346578 (= res!191807 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5087))))

(declare-fun b!346579 () Bool)

(declare-fun e!212412 () Bool)

(assert (=> b!346579 (= e!212412 (not true))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18475 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!346579 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!3366 0))(
  ( (MissingZero!3366 (index!15643 (_ BitVec 32))) (Found!3366 (index!15644 (_ BitVec 32))) (Intermediate!3366 (undefined!4178 Bool) (index!15645 (_ BitVec 32)) (x!34527 (_ BitVec 32))) (Undefined!3366) (MissingVacant!3366 (index!15646 (_ BitVec 32))) )
))
(declare-fun lt!163392 () SeekEntryResult!3366)

(declare-datatypes ((Unit!10752 0))(
  ( (Unit!10753) )
))
(declare-fun lt!163391 () Unit!10752)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18475 (_ BitVec 64) (_ BitVec 32)) Unit!10752)

(assert (=> b!346579 (= lt!163391 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!15644 lt!163392)))))

(declare-fun b!346580 () Bool)

(declare-fun res!191806 () Bool)

(assert (=> b!346580 (=> (not res!191806) (not e!212412))))

(assert (=> b!346580 (= res!191806 (arrayContainsKey!0 _keys!1895 k!1348 (index!15644 lt!163392)))))

(declare-fun b!346581 () Bool)

(assert (=> b!346581 (= e!212414 e!212412)))

(declare-fun res!191813 () Bool)

(assert (=> b!346581 (=> (not res!191813) (not e!212412))))

(assert (=> b!346581 (= res!191813 (and (is-Found!3366 lt!163392) (= (select (arr!8745 _keys!1895) (index!15644 lt!163392)) k!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18475 (_ BitVec 32)) SeekEntryResult!3366)

(assert (=> b!346581 (= lt!163392 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!346582 () Bool)

(declare-fun e!212411 () Bool)

(declare-fun tp_is_empty!7459 () Bool)

(assert (=> b!346582 (= e!212411 tp_is_empty!7459)))

(declare-fun b!346583 () Bool)

(declare-fun res!191810 () Bool)

(assert (=> b!346583 (=> (not res!191810) (not e!212414))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!346583 (= res!191810 (validKeyInArray!0 k!1348))))

(declare-fun b!346584 () Bool)

(declare-fun res!191811 () Bool)

(assert (=> b!346584 (=> (not res!191811) (not e!212414))))

(declare-datatypes ((V!10923 0))(
  ( (V!10924 (val!3774 Int)) )
))
(declare-fun zeroValue!1467 () V!10923)

(declare-datatypes ((ValueCell!3386 0))(
  ( (ValueCellFull!3386 (v!5952 V!10923)) (EmptyCell!3386) )
))
(declare-datatypes ((array!18477 0))(
  ( (array!18478 (arr!8746 (Array (_ BitVec 32) ValueCell!3386)) (size!9098 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18477)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10923)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((tuple2!5442 0))(
  ( (tuple2!5443 (_1!2731 (_ BitVec 64)) (_2!2731 V!10923)) )
))
(declare-datatypes ((List!5091 0))(
  ( (Nil!5088) (Cons!5087 (h!5943 tuple2!5442) (t!10227 List!5091)) )
))
(declare-datatypes ((ListLongMap!4369 0))(
  ( (ListLongMap!4370 (toList!2200 List!5091)) )
))
(declare-fun contains!2260 (ListLongMap!4369 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1720 (array!18475 array!18477 (_ BitVec 32) (_ BitVec 32) V!10923 V!10923 (_ BitVec 32) Int) ListLongMap!4369)

(assert (=> b!346584 (= res!191811 (not (contains!2260 (getCurrentListMap!1720 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapIsEmpty!12645 () Bool)

(declare-fun mapRes!12645 () Bool)

(assert (=> mapIsEmpty!12645 mapRes!12645))

(declare-fun mapNonEmpty!12645 () Bool)

(declare-fun tp!26084 () Bool)

(declare-fun e!212413 () Bool)

(assert (=> mapNonEmpty!12645 (= mapRes!12645 (and tp!26084 e!212413))))

(declare-fun mapValue!12645 () ValueCell!3386)

(declare-fun mapKey!12645 () (_ BitVec 32))

(declare-fun mapRest!12645 () (Array (_ BitVec 32) ValueCell!3386))

(assert (=> mapNonEmpty!12645 (= (arr!8746 _values!1525) (store mapRest!12645 mapKey!12645 mapValue!12645))))

(declare-fun b!346585 () Bool)

(declare-fun e!212410 () Bool)

(assert (=> b!346585 (= e!212410 (and e!212411 mapRes!12645))))

(declare-fun condMapEmpty!12645 () Bool)

(declare-fun mapDefault!12645 () ValueCell!3386)

