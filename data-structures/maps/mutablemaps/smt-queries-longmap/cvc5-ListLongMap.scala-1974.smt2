; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34714 () Bool)

(assert start!34714)

(declare-fun b_free!7513 () Bool)

(declare-fun b_next!7513 () Bool)

(assert (=> start!34714 (= b_free!7513 (not b_next!7513))))

(declare-fun tp!26102 () Bool)

(declare-fun b_and!14751 () Bool)

(assert (=> start!34714 (= tp!26102 b_and!14751)))

(declare-fun b!346677 () Bool)

(declare-fun e!212467 () Bool)

(declare-fun tp_is_empty!7465 () Bool)

(assert (=> b!346677 (= e!212467 tp_is_empty!7465)))

(declare-fun b!346678 () Bool)

(declare-fun res!191878 () Bool)

(declare-fun e!212464 () Bool)

(assert (=> b!346678 (=> (not res!191878) (not e!212464))))

(declare-datatypes ((array!18487 0))(
  ( (array!18488 (arr!8751 (Array (_ BitVec 32) (_ BitVec 64))) (size!9103 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18487)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18487 (_ BitVec 32)) Bool)

(assert (=> b!346678 (= res!191878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!346679 () Bool)

(declare-fun res!191882 () Bool)

(assert (=> b!346679 (=> (not res!191882) (not e!212464))))

(declare-datatypes ((V!10931 0))(
  ( (V!10932 (val!3777 Int)) )
))
(declare-datatypes ((ValueCell!3389 0))(
  ( (ValueCellFull!3389 (v!5955 V!10931)) (EmptyCell!3389) )
))
(declare-datatypes ((array!18489 0))(
  ( (array!18490 (arr!8752 (Array (_ BitVec 32) ValueCell!3389)) (size!9104 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18489)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!346679 (= res!191882 (and (= (size!9104 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9103 _keys!1895) (size!9104 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!346681 () Bool)

(declare-fun e!212466 () Bool)

(assert (=> b!346681 (= e!212464 e!212466)))

(declare-fun res!191880 () Bool)

(assert (=> b!346681 (=> (not res!191880) (not e!212466))))

(declare-datatypes ((SeekEntryResult!3368 0))(
  ( (MissingZero!3368 (index!15651 (_ BitVec 32))) (Found!3368 (index!15652 (_ BitVec 32))) (Intermediate!3368 (undefined!4180 Bool) (index!15653 (_ BitVec 32)) (x!34537 (_ BitVec 32))) (Undefined!3368) (MissingVacant!3368 (index!15654 (_ BitVec 32))) )
))
(declare-fun lt!163410 () SeekEntryResult!3368)

(declare-fun k!1348 () (_ BitVec 64))

(assert (=> b!346681 (= res!191880 (and (is-Found!3368 lt!163410) (= (select (arr!8751 _keys!1895) (index!15652 lt!163410)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18487 (_ BitVec 32)) SeekEntryResult!3368)

(assert (=> b!346681 (= lt!163410 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!346682 () Bool)

(declare-fun res!191885 () Bool)

(assert (=> b!346682 (=> (not res!191885) (not e!212464))))

(declare-fun zeroValue!1467 () V!10931)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10931)

(declare-datatypes ((tuple2!5446 0))(
  ( (tuple2!5447 (_1!2733 (_ BitVec 64)) (_2!2733 V!10931)) )
))
(declare-datatypes ((List!5094 0))(
  ( (Nil!5091) (Cons!5090 (h!5946 tuple2!5446) (t!10230 List!5094)) )
))
(declare-datatypes ((ListLongMap!4373 0))(
  ( (ListLongMap!4374 (toList!2202 List!5094)) )
))
(declare-fun contains!2262 (ListLongMap!4373 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1722 (array!18487 array!18489 (_ BitVec 32) (_ BitVec 32) V!10931 V!10931 (_ BitVec 32) Int) ListLongMap!4373)

(assert (=> b!346682 (= res!191885 (not (contains!2262 (getCurrentListMap!1722 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!346683 () Bool)

(declare-fun res!191879 () Bool)

(assert (=> b!346683 (=> (not res!191879) (not e!212466))))

(declare-fun arrayContainsKey!0 (array!18487 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!346683 (= res!191879 (arrayContainsKey!0 _keys!1895 k!1348 (index!15652 lt!163410)))))

(declare-fun b!346684 () Bool)

(declare-fun e!212465 () Bool)

(assert (=> b!346684 (= e!212465 tp_is_empty!7465)))

(declare-fun mapNonEmpty!12654 () Bool)

(declare-fun mapRes!12654 () Bool)

(declare-fun tp!26103 () Bool)

(assert (=> mapNonEmpty!12654 (= mapRes!12654 (and tp!26103 e!212465))))

(declare-fun mapKey!12654 () (_ BitVec 32))

(declare-fun mapRest!12654 () (Array (_ BitVec 32) ValueCell!3389))

(declare-fun mapValue!12654 () ValueCell!3389)

(assert (=> mapNonEmpty!12654 (= (arr!8752 _values!1525) (store mapRest!12654 mapKey!12654 mapValue!12654))))

(declare-fun b!346685 () Bool)

(assert (=> b!346685 (= e!212466 (not true))))

(assert (=> b!346685 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10756 0))(
  ( (Unit!10757) )
))
(declare-fun lt!163409 () Unit!10756)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18487 (_ BitVec 64) (_ BitVec 32)) Unit!10756)

(assert (=> b!346685 (= lt!163409 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!15652 lt!163410)))))

(declare-fun b!346686 () Bool)

(declare-fun res!191884 () Bool)

(assert (=> b!346686 (=> (not res!191884) (not e!212464))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!346686 (= res!191884 (validKeyInArray!0 k!1348))))

(declare-fun b!346687 () Bool)

(declare-fun e!212469 () Bool)

(assert (=> b!346687 (= e!212469 (and e!212467 mapRes!12654))))

(declare-fun condMapEmpty!12654 () Bool)

(declare-fun mapDefault!12654 () ValueCell!3389)

