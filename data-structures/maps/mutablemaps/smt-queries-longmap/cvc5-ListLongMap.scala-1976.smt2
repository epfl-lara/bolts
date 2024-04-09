; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34726 () Bool)

(assert start!34726)

(declare-fun b_free!7525 () Bool)

(declare-fun b_next!7525 () Bool)

(assert (=> start!34726 (= b_free!7525 (not b_next!7525))))

(declare-fun tp!26138 () Bool)

(declare-fun b_and!14763 () Bool)

(assert (=> start!34726 (= tp!26138 b_and!14763)))

(declare-fun b!346875 () Bool)

(declare-fun res!192026 () Bool)

(declare-fun e!212576 () Bool)

(assert (=> b!346875 (=> (not res!192026) (not e!212576))))

(declare-datatypes ((array!18511 0))(
  ( (array!18512 (arr!8763 (Array (_ BitVec 32) (_ BitVec 64))) (size!9115 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18511)

(declare-datatypes ((List!5105 0))(
  ( (Nil!5102) (Cons!5101 (h!5957 (_ BitVec 64)) (t!10241 List!5105)) )
))
(declare-fun arrayNoDuplicates!0 (array!18511 (_ BitVec 32) List!5105) Bool)

(assert (=> b!346875 (= res!192026 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5102))))

(declare-fun b!346876 () Bool)

(declare-fun res!192025 () Bool)

(declare-fun e!212575 () Bool)

(assert (=> b!346876 (=> (not res!192025) (not e!212575))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3374 0))(
  ( (MissingZero!3374 (index!15675 (_ BitVec 32))) (Found!3374 (index!15676 (_ BitVec 32))) (Intermediate!3374 (undefined!4186 Bool) (index!15677 (_ BitVec 32)) (x!34559 (_ BitVec 32))) (Undefined!3374) (MissingVacant!3374 (index!15678 (_ BitVec 32))) )
))
(declare-fun lt!163446 () SeekEntryResult!3374)

(declare-fun arrayContainsKey!0 (array!18511 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!346876 (= res!192025 (arrayContainsKey!0 _keys!1895 k!1348 (index!15676 lt!163446)))))

(declare-fun b!346877 () Bool)

(declare-fun e!212577 () Bool)

(declare-fun tp_is_empty!7477 () Bool)

(assert (=> b!346877 (= e!212577 tp_is_empty!7477)))

(declare-fun b!346878 () Bool)

(declare-fun res!192023 () Bool)

(assert (=> b!346878 (=> (not res!192023) (not e!212576))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10947 0))(
  ( (V!10948 (val!3783 Int)) )
))
(declare-datatypes ((ValueCell!3395 0))(
  ( (ValueCellFull!3395 (v!5961 V!10947)) (EmptyCell!3395) )
))
(declare-datatypes ((array!18513 0))(
  ( (array!18514 (arr!8764 (Array (_ BitVec 32) ValueCell!3395)) (size!9116 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18513)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!346878 (= res!192023 (and (= (size!9116 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9115 _keys!1895) (size!9116 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!346879 () Bool)

(assert (=> b!346879 (= e!212576 e!212575)))

(declare-fun res!192029 () Bool)

(assert (=> b!346879 (=> (not res!192029) (not e!212575))))

(assert (=> b!346879 (= res!192029 (and (is-Found!3374 lt!163446) (= (select (arr!8763 _keys!1895) (index!15676 lt!163446)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18511 (_ BitVec 32)) SeekEntryResult!3374)

(assert (=> b!346879 (= lt!163446 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!346880 () Bool)

(assert (=> b!346880 (= e!212575 (not true))))

(assert (=> b!346880 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10766 0))(
  ( (Unit!10767) )
))
(declare-fun lt!163445 () Unit!10766)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18511 (_ BitVec 64) (_ BitVec 32)) Unit!10766)

(assert (=> b!346880 (= lt!163445 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!15676 lt!163446)))))

(declare-fun b!346881 () Bool)

(declare-fun res!192022 () Bool)

(assert (=> b!346881 (=> (not res!192022) (not e!212576))))

(declare-fun zeroValue!1467 () V!10947)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10947)

(declare-datatypes ((tuple2!5458 0))(
  ( (tuple2!5459 (_1!2739 (_ BitVec 64)) (_2!2739 V!10947)) )
))
(declare-datatypes ((List!5106 0))(
  ( (Nil!5103) (Cons!5102 (h!5958 tuple2!5458) (t!10242 List!5106)) )
))
(declare-datatypes ((ListLongMap!4385 0))(
  ( (ListLongMap!4386 (toList!2208 List!5106)) )
))
(declare-fun contains!2268 (ListLongMap!4385 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1728 (array!18511 array!18513 (_ BitVec 32) (_ BitVec 32) V!10947 V!10947 (_ BitVec 32) Int) ListLongMap!4385)

(assert (=> b!346881 (= res!192022 (not (contains!2268 (getCurrentListMap!1728 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!346882 () Bool)

(declare-fun res!192024 () Bool)

(assert (=> b!346882 (=> (not res!192024) (not e!212576))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!346882 (= res!192024 (validKeyInArray!0 k!1348))))

(declare-fun b!346883 () Bool)

(declare-fun e!212572 () Bool)

(assert (=> b!346883 (= e!212572 tp_is_empty!7477)))

(declare-fun mapIsEmpty!12672 () Bool)

(declare-fun mapRes!12672 () Bool)

(assert (=> mapIsEmpty!12672 mapRes!12672))

(declare-fun b!346884 () Bool)

(declare-fun e!212574 () Bool)

(assert (=> b!346884 (= e!212574 (and e!212577 mapRes!12672))))

(declare-fun condMapEmpty!12672 () Bool)

(declare-fun mapDefault!12672 () ValueCell!3395)

