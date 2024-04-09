; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34724 () Bool)

(assert start!34724)

(declare-fun b_free!7523 () Bool)

(declare-fun b_next!7523 () Bool)

(assert (=> start!34724 (= b_free!7523 (not b_next!7523))))

(declare-fun tp!26133 () Bool)

(declare-fun b_and!14761 () Bool)

(assert (=> start!34724 (= tp!26133 b_and!14761)))

(declare-fun res!192003 () Bool)

(declare-fun e!212554 () Bool)

(assert (=> start!34724 (=> (not res!192003) (not e!212554))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34724 (= res!192003 (validMask!0 mask!2385))))

(assert (=> start!34724 e!212554))

(assert (=> start!34724 true))

(declare-fun tp_is_empty!7475 () Bool)

(assert (=> start!34724 tp_is_empty!7475))

(assert (=> start!34724 tp!26133))

(declare-datatypes ((V!10943 0))(
  ( (V!10944 (val!3782 Int)) )
))
(declare-datatypes ((ValueCell!3394 0))(
  ( (ValueCellFull!3394 (v!5960 V!10943)) (EmptyCell!3394) )
))
(declare-datatypes ((array!18507 0))(
  ( (array!18508 (arr!8761 (Array (_ BitVec 32) ValueCell!3394)) (size!9113 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18507)

(declare-fun e!212555 () Bool)

(declare-fun array_inv!6476 (array!18507) Bool)

(assert (=> start!34724 (and (array_inv!6476 _values!1525) e!212555)))

(declare-datatypes ((array!18509 0))(
  ( (array!18510 (arr!8762 (Array (_ BitVec 32) (_ BitVec 64))) (size!9114 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18509)

(declare-fun array_inv!6477 (array!18509) Bool)

(assert (=> start!34724 (array_inv!6477 _keys!1895)))

(declare-fun b!346842 () Bool)

(declare-fun e!212557 () Bool)

(assert (=> b!346842 (= e!212557 (not true))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18509 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!346842 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10764 0))(
  ( (Unit!10765) )
))
(declare-fun lt!163439 () Unit!10764)

(declare-datatypes ((SeekEntryResult!3373 0))(
  ( (MissingZero!3373 (index!15671 (_ BitVec 32))) (Found!3373 (index!15672 (_ BitVec 32))) (Intermediate!3373 (undefined!4185 Bool) (index!15673 (_ BitVec 32)) (x!34550 (_ BitVec 32))) (Undefined!3373) (MissingVacant!3373 (index!15674 (_ BitVec 32))) )
))
(declare-fun lt!163440 () SeekEntryResult!3373)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18509 (_ BitVec 64) (_ BitVec 32)) Unit!10764)

(assert (=> b!346842 (= lt!163439 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!15672 lt!163440)))))

(declare-fun b!346843 () Bool)

(declare-fun res!191999 () Bool)

(assert (=> b!346843 (=> (not res!191999) (not e!212554))))

(declare-fun zeroValue!1467 () V!10943)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10943)

(declare-datatypes ((tuple2!5456 0))(
  ( (tuple2!5457 (_1!2738 (_ BitVec 64)) (_2!2738 V!10943)) )
))
(declare-datatypes ((List!5103 0))(
  ( (Nil!5100) (Cons!5099 (h!5955 tuple2!5456) (t!10239 List!5103)) )
))
(declare-datatypes ((ListLongMap!4383 0))(
  ( (ListLongMap!4384 (toList!2207 List!5103)) )
))
(declare-fun contains!2267 (ListLongMap!4383 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1727 (array!18509 array!18507 (_ BitVec 32) (_ BitVec 32) V!10943 V!10943 (_ BitVec 32) Int) ListLongMap!4383)

(assert (=> b!346843 (= res!191999 (not (contains!2267 (getCurrentListMap!1727 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapIsEmpty!12669 () Bool)

(declare-fun mapRes!12669 () Bool)

(assert (=> mapIsEmpty!12669 mapRes!12669))

(declare-fun b!346844 () Bool)

(declare-fun e!212556 () Bool)

(assert (=> b!346844 (= e!212556 tp_is_empty!7475)))

(declare-fun b!346845 () Bool)

(declare-fun e!212559 () Bool)

(assert (=> b!346845 (= e!212559 tp_is_empty!7475)))

(declare-fun b!346846 () Bool)

(declare-fun res!191998 () Bool)

(assert (=> b!346846 (=> (not res!191998) (not e!212557))))

(assert (=> b!346846 (= res!191998 (arrayContainsKey!0 _keys!1895 k!1348 (index!15672 lt!163440)))))

(declare-fun b!346847 () Bool)

(declare-fun res!192000 () Bool)

(assert (=> b!346847 (=> (not res!192000) (not e!212554))))

(declare-datatypes ((List!5104 0))(
  ( (Nil!5101) (Cons!5100 (h!5956 (_ BitVec 64)) (t!10240 List!5104)) )
))
(declare-fun arrayNoDuplicates!0 (array!18509 (_ BitVec 32) List!5104) Bool)

(assert (=> b!346847 (= res!192000 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5101))))

(declare-fun b!346848 () Bool)

(declare-fun res!192005 () Bool)

(assert (=> b!346848 (=> (not res!192005) (not e!212554))))

(assert (=> b!346848 (= res!192005 (and (= (size!9113 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9114 _keys!1895) (size!9113 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!346849 () Bool)

(assert (=> b!346849 (= e!212555 (and e!212556 mapRes!12669))))

(declare-fun condMapEmpty!12669 () Bool)

(declare-fun mapDefault!12669 () ValueCell!3394)

