; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33654 () Bool)

(assert start!33654)

(declare-fun b_free!6881 () Bool)

(declare-fun b_next!6881 () Bool)

(assert (=> start!33654 (= b_free!6881 (not b_next!6881))))

(declare-fun tp!24146 () Bool)

(declare-fun b_and!14079 () Bool)

(assert (=> start!33654 (= tp!24146 b_and!14079)))

(declare-fun b!333838 () Bool)

(declare-fun e!204972 () Bool)

(assert (=> b!333838 (= e!204972 (not true))))

(declare-datatypes ((array!17257 0))(
  ( (array!17258 (arr!8156 (Array (_ BitVec 32) (_ BitVec 64))) (size!8508 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17257)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17257 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!333838 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!3164 0))(
  ( (MissingZero!3164 (index!14835 (_ BitVec 32))) (Found!3164 (index!14836 (_ BitVec 32))) (Intermediate!3164 (undefined!3976 Bool) (index!14837 (_ BitVec 32)) (x!33285 (_ BitVec 32))) (Undefined!3164) (MissingVacant!3164 (index!14838 (_ BitVec 32))) )
))
(declare-fun lt!159411 () SeekEntryResult!3164)

(declare-datatypes ((Unit!10384 0))(
  ( (Unit!10385) )
))
(declare-fun lt!159410 () Unit!10384)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17257 (_ BitVec 64) (_ BitVec 32)) Unit!10384)

(assert (=> b!333838 (= lt!159410 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!14836 lt!159411)))))

(declare-fun b!333839 () Bool)

(declare-fun e!204969 () Bool)

(declare-fun tp_is_empty!6833 () Bool)

(assert (=> b!333839 (= e!204969 tp_is_empty!6833)))

(declare-fun b!333840 () Bool)

(declare-fun e!204970 () Bool)

(assert (=> b!333840 (= e!204970 e!204972)))

(declare-fun res!184041 () Bool)

(assert (=> b!333840 (=> (not res!184041) (not e!204972))))

(assert (=> b!333840 (= res!184041 (and (is-Found!3164 lt!159411) (= (select (arr!8156 _keys!1895) (index!14836 lt!159411)) k!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17257 (_ BitVec 32)) SeekEntryResult!3164)

(assert (=> b!333840 (= lt!159411 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!333841 () Bool)

(declare-fun res!184045 () Bool)

(assert (=> b!333841 (=> (not res!184045) (not e!204970))))

(declare-datatypes ((V!10087 0))(
  ( (V!10088 (val!3461 Int)) )
))
(declare-fun zeroValue!1467 () V!10087)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3073 0))(
  ( (ValueCellFull!3073 (v!5619 V!10087)) (EmptyCell!3073) )
))
(declare-datatypes ((array!17259 0))(
  ( (array!17260 (arr!8157 (Array (_ BitVec 32) ValueCell!3073)) (size!8509 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17259)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10087)

(declare-datatypes ((tuple2!5030 0))(
  ( (tuple2!5031 (_1!2525 (_ BitVec 64)) (_2!2525 V!10087)) )
))
(declare-datatypes ((List!4672 0))(
  ( (Nil!4669) (Cons!4668 (h!5524 tuple2!5030) (t!9768 List!4672)) )
))
(declare-datatypes ((ListLongMap!3957 0))(
  ( (ListLongMap!3958 (toList!1994 List!4672)) )
))
(declare-fun contains!2034 (ListLongMap!3957 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1517 (array!17257 array!17259 (_ BitVec 32) (_ BitVec 32) V!10087 V!10087 (_ BitVec 32) Int) ListLongMap!3957)

(assert (=> b!333841 (= res!184045 (not (contains!2034 (getCurrentListMap!1517 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!333842 () Bool)

(declare-fun e!204968 () Bool)

(declare-fun mapRes!11646 () Bool)

(assert (=> b!333842 (= e!204968 (and e!204969 mapRes!11646))))

(declare-fun condMapEmpty!11646 () Bool)

(declare-fun mapDefault!11646 () ValueCell!3073)

