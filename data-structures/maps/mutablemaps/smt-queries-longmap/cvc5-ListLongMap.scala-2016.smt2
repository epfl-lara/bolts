; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35154 () Bool)

(assert start!35154)

(declare-fun b_free!7765 () Bool)

(declare-fun b_next!7765 () Bool)

(assert (=> start!35154 (= b_free!7765 (not b_next!7765))))

(declare-fun tp!26882 () Bool)

(declare-fun b_and!15019 () Bool)

(assert (=> start!35154 (= tp!26882 b_and!15019)))

(declare-fun b!352146 () Bool)

(declare-fun e!215652 () Bool)

(declare-fun tp_is_empty!7717 () Bool)

(assert (=> b!352146 (= e!215652 tp_is_empty!7717)))

(declare-fun b!352147 () Bool)

(declare-datatypes ((Unit!10895 0))(
  ( (Unit!10896) )
))
(declare-fun e!215653 () Unit!10895)

(declare-fun Unit!10897 () Unit!10895)

(assert (=> b!352147 (= e!215653 Unit!10897)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!11267 0))(
  ( (V!11268 (val!3903 Int)) )
))
(declare-fun zeroValue!1467 () V!11267)

(declare-fun lt!165153 () Unit!10895)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3515 0))(
  ( (ValueCellFull!3515 (v!6089 V!11267)) (EmptyCell!3515) )
))
(declare-datatypes ((array!18981 0))(
  ( (array!18982 (arr!8990 (Array (_ BitVec 32) ValueCell!3515)) (size!9342 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18981)

(declare-datatypes ((array!18983 0))(
  ( (array!18984 (arr!8991 (Array (_ BitVec 32) (_ BitVec 64))) (size!9343 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18983)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11267)

(declare-fun lemmaArrayContainsKeyThenInListMap!334 (array!18983 array!18981 (_ BitVec 32) (_ BitVec 32) V!11267 V!11267 (_ BitVec 64) (_ BitVec 32) Int) Unit!10895)

(declare-fun arrayScanForKey!0 (array!18983 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!352147 (= lt!165153 (lemmaArrayContainsKeyThenInListMap!334 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!352147 false))

(declare-fun b!352148 () Bool)

(declare-fun e!215660 () Bool)

(declare-fun e!215658 () Bool)

(assert (=> b!352148 (= e!215660 e!215658)))

(declare-fun res!195346 () Bool)

(assert (=> b!352148 (=> (not res!195346) (not e!215658))))

(declare-fun lt!165152 () Bool)

(assert (=> b!352148 (= res!195346 (not lt!165152))))

(declare-fun lt!165150 () Unit!10895)

(assert (=> b!352148 (= lt!165150 e!215653)))

(declare-fun c!53488 () Bool)

(assert (=> b!352148 (= c!53488 lt!165152)))

(declare-fun arrayContainsKey!0 (array!18983 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!352148 (= lt!165152 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!352149 () Bool)

(declare-fun e!215654 () Bool)

(assert (=> b!352149 (= e!215658 e!215654)))

(declare-fun c!53489 () Bool)

(declare-datatypes ((SeekEntryResult!3457 0))(
  ( (MissingZero!3457 (index!16007 (_ BitVec 32))) (Found!3457 (index!16008 (_ BitVec 32))) (Intermediate!3457 (undefined!4269 Bool) (index!16009 (_ BitVec 32)) (x!35042 (_ BitVec 32))) (Undefined!3457) (MissingVacant!3457 (index!16010 (_ BitVec 32))) )
))
(declare-fun lt!165151 () SeekEntryResult!3457)

(assert (=> b!352149 (= c!53489 (is-MissingVacant!3457 lt!165151))))

(declare-fun b!352150 () Bool)

(declare-fun e!215659 () Bool)

(declare-fun e!215661 () Bool)

(declare-fun mapRes!13056 () Bool)

(assert (=> b!352150 (= e!215659 (and e!215661 mapRes!13056))))

(declare-fun condMapEmpty!13056 () Bool)

(declare-fun mapDefault!13056 () ValueCell!3515)

