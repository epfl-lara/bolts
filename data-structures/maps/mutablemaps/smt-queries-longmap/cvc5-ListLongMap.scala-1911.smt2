; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34038 () Bool)

(assert start!34038)

(declare-fun b_free!7135 () Bool)

(declare-fun b_next!7135 () Bool)

(assert (=> start!34038 (= b_free!7135 (not b_next!7135))))

(declare-fun tp!24926 () Bool)

(declare-fun b_and!14345 () Bool)

(assert (=> start!34038 (= tp!24926 b_and!14345)))

(declare-fun b!338866 () Bool)

(declare-fun res!187249 () Bool)

(declare-fun e!207927 () Bool)

(assert (=> b!338866 (=> (not res!187249) (not e!207927))))

(declare-datatypes ((SeekEntryResult!3248 0))(
  ( (MissingZero!3248 (index!15171 (_ BitVec 32))) (Found!3248 (index!15172 (_ BitVec 32))) (Intermediate!3248 (undefined!4060 Bool) (index!15173 (_ BitVec 32)) (x!33773 (_ BitVec 32))) (Undefined!3248) (MissingVacant!3248 (index!15174 (_ BitVec 32))) )
))
(declare-fun lt!161004 () SeekEntryResult!3248)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!338866 (= res!187249 (inRange!0 (index!15171 lt!161004) mask!2385))))

(declare-fun b!338867 () Bool)

(declare-fun res!187248 () Bool)

(declare-fun e!207925 () Bool)

(assert (=> b!338867 (=> (not res!187248) (not e!207925))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!338867 (= res!187248 (validKeyInArray!0 k!1348))))

(declare-fun b!338868 () Bool)

(declare-fun res!187256 () Bool)

(assert (=> b!338868 (=> (not res!187256) (not e!207925))))

(declare-datatypes ((V!10427 0))(
  ( (V!10428 (val!3588 Int)) )
))
(declare-fun zeroValue!1467 () V!10427)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3200 0))(
  ( (ValueCellFull!3200 (v!5752 V!10427)) (EmptyCell!3200) )
))
(declare-datatypes ((array!17743 0))(
  ( (array!17744 (arr!8393 (Array (_ BitVec 32) ValueCell!3200)) (size!8745 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17743)

(declare-datatypes ((array!17745 0))(
  ( (array!17746 (arr!8394 (Array (_ BitVec 32) (_ BitVec 64))) (size!8746 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17745)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10427)

(declare-datatypes ((tuple2!5200 0))(
  ( (tuple2!5201 (_1!2610 (_ BitVec 64)) (_2!2610 V!10427)) )
))
(declare-datatypes ((List!4842 0))(
  ( (Nil!4839) (Cons!4838 (h!5694 tuple2!5200) (t!9950 List!4842)) )
))
(declare-datatypes ((ListLongMap!4127 0))(
  ( (ListLongMap!4128 (toList!2079 List!4842)) )
))
(declare-fun contains!2125 (ListLongMap!4127 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1599 (array!17745 array!17743 (_ BitVec 32) (_ BitVec 32) V!10427 V!10427 (_ BitVec 32) Int) ListLongMap!4127)

(assert (=> b!338868 (= res!187256 (not (contains!2125 (getCurrentListMap!1599 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!338869 () Bool)

(declare-datatypes ((Unit!10543 0))(
  ( (Unit!10544) )
))
(declare-fun e!207920 () Unit!10543)

(declare-fun Unit!10545 () Unit!10543)

(assert (=> b!338869 (= e!207920 Unit!10545)))

(declare-fun b!338870 () Bool)

(declare-fun e!207923 () Bool)

(declare-fun e!207922 () Bool)

(declare-fun mapRes!12045 () Bool)

(assert (=> b!338870 (= e!207923 (and e!207922 mapRes!12045))))

(declare-fun condMapEmpty!12045 () Bool)

(declare-fun mapDefault!12045 () ValueCell!3200)

