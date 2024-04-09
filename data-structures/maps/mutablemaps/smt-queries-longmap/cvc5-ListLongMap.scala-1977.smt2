; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34732 () Bool)

(assert start!34732)

(declare-fun b_free!7531 () Bool)

(declare-fun b_next!7531 () Bool)

(assert (=> start!34732 (= b_free!7531 (not b_next!7531))))

(declare-fun tp!26157 () Bool)

(declare-fun b_and!14769 () Bool)

(assert (=> start!34732 (= tp!26157 b_and!14769)))

(declare-fun b!346974 () Bool)

(declare-fun res!192100 () Bool)

(declare-fun e!212627 () Bool)

(assert (=> b!346974 (=> (not res!192100) (not e!212627))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10955 0))(
  ( (V!10956 (val!3786 Int)) )
))
(declare-datatypes ((ValueCell!3398 0))(
  ( (ValueCellFull!3398 (v!5964 V!10955)) (EmptyCell!3398) )
))
(declare-datatypes ((array!18523 0))(
  ( (array!18524 (arr!8769 (Array (_ BitVec 32) ValueCell!3398)) (size!9121 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18523)

(declare-datatypes ((array!18525 0))(
  ( (array!18526 (arr!8770 (Array (_ BitVec 32) (_ BitVec 64))) (size!9122 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18525)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!346974 (= res!192100 (and (= (size!9121 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9122 _keys!1895) (size!9121 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!346975 () Bool)

(declare-fun res!192094 () Bool)

(assert (=> b!346975 (=> (not res!192094) (not e!212627))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!346975 (= res!192094 (validKeyInArray!0 k!1348))))

(declare-fun b!346976 () Bool)

(declare-fun res!192096 () Bool)

(assert (=> b!346976 (=> (not res!192096) (not e!212627))))

(declare-fun zeroValue!1467 () V!10955)

(declare-fun minValue!1467 () V!10955)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((tuple2!5464 0))(
  ( (tuple2!5465 (_1!2742 (_ BitVec 64)) (_2!2742 V!10955)) )
))
(declare-datatypes ((List!5110 0))(
  ( (Nil!5107) (Cons!5106 (h!5962 tuple2!5464) (t!10246 List!5110)) )
))
(declare-datatypes ((ListLongMap!4391 0))(
  ( (ListLongMap!4392 (toList!2211 List!5110)) )
))
(declare-fun contains!2271 (ListLongMap!4391 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1731 (array!18525 array!18523 (_ BitVec 32) (_ BitVec 32) V!10955 V!10955 (_ BitVec 32) Int) ListLongMap!4391)

(assert (=> b!346976 (= res!192096 (not (contains!2271 (getCurrentListMap!1731 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!346977 () Bool)

(declare-fun e!212629 () Bool)

(assert (=> b!346977 (= e!212629 (not true))))

(declare-fun arrayContainsKey!0 (array!18525 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!346977 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10770 0))(
  ( (Unit!10771) )
))
(declare-fun lt!163463 () Unit!10770)

(declare-datatypes ((SeekEntryResult!3377 0))(
  ( (MissingZero!3377 (index!15687 (_ BitVec 32))) (Found!3377 (index!15688 (_ BitVec 32))) (Intermediate!3377 (undefined!4189 Bool) (index!15689 (_ BitVec 32)) (x!34570 (_ BitVec 32))) (Undefined!3377) (MissingVacant!3377 (index!15690 (_ BitVec 32))) )
))
(declare-fun lt!163464 () SeekEntryResult!3377)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18525 (_ BitVec 64) (_ BitVec 32)) Unit!10770)

(assert (=> b!346977 (= lt!163463 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!15688 lt!163464)))))

(declare-fun b!346978 () Bool)

(declare-fun res!192098 () Bool)

(assert (=> b!346978 (=> (not res!192098) (not e!212629))))

(assert (=> b!346978 (= res!192098 (arrayContainsKey!0 _keys!1895 k!1348 (index!15688 lt!163464)))))

(declare-fun res!192101 () Bool)

(assert (=> start!34732 (=> (not res!192101) (not e!212627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34732 (= res!192101 (validMask!0 mask!2385))))

(assert (=> start!34732 e!212627))

(assert (=> start!34732 true))

(declare-fun tp_is_empty!7483 () Bool)

(assert (=> start!34732 tp_is_empty!7483))

(assert (=> start!34732 tp!26157))

(declare-fun e!212630 () Bool)

(declare-fun array_inv!6480 (array!18523) Bool)

(assert (=> start!34732 (and (array_inv!6480 _values!1525) e!212630)))

(declare-fun array_inv!6481 (array!18525) Bool)

(assert (=> start!34732 (array_inv!6481 _keys!1895)))

(declare-fun b!346979 () Bool)

(assert (=> b!346979 (= e!212627 e!212629)))

(declare-fun res!192097 () Bool)

(assert (=> b!346979 (=> (not res!192097) (not e!212629))))

(assert (=> b!346979 (= res!192097 (and (is-Found!3377 lt!163464) (= (select (arr!8770 _keys!1895) (index!15688 lt!163464)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18525 (_ BitVec 32)) SeekEntryResult!3377)

(assert (=> b!346979 (= lt!163464 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!346980 () Bool)

(declare-fun e!212631 () Bool)

(assert (=> b!346980 (= e!212631 tp_is_empty!7483)))

(declare-fun b!346981 () Bool)

(declare-fun res!192095 () Bool)

(assert (=> b!346981 (=> (not res!192095) (not e!212627))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18525 (_ BitVec 32)) Bool)

(assert (=> b!346981 (= res!192095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!346982 () Bool)

(declare-fun e!212626 () Bool)

(assert (=> b!346982 (= e!212626 tp_is_empty!7483)))

(declare-fun mapIsEmpty!12681 () Bool)

(declare-fun mapRes!12681 () Bool)

(assert (=> mapIsEmpty!12681 mapRes!12681))

(declare-fun b!346983 () Bool)

(assert (=> b!346983 (= e!212630 (and e!212626 mapRes!12681))))

(declare-fun condMapEmpty!12681 () Bool)

(declare-fun mapDefault!12681 () ValueCell!3398)

