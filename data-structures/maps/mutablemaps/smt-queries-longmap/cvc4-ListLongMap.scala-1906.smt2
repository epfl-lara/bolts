; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33986 () Bool)

(assert start!33986)

(declare-fun b_free!7109 () Bool)

(declare-fun b_next!7109 () Bool)

(assert (=> start!33986 (= b_free!7109 (not b_next!7109))))

(declare-fun tp!24845 () Bool)

(declare-fun b_and!14317 () Bool)

(assert (=> start!33986 (= tp!24845 b_and!14317)))

(declare-fun b!338237 () Bool)

(declare-fun e!207546 () Bool)

(assert (=> b!338237 (= e!207546 false)))

(declare-datatypes ((Unit!10492 0))(
  ( (Unit!10493) )
))
(declare-fun lt!160766 () Unit!10492)

(declare-fun e!207548 () Unit!10492)

(assert (=> b!338237 (= lt!160766 e!207548)))

(declare-fun c!52346 () Bool)

(declare-datatypes ((array!17689 0))(
  ( (array!17690 (arr!8367 (Array (_ BitVec 32) (_ BitVec 64))) (size!8719 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17689)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17689 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!338237 (= c!52346 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!338238 () Bool)

(declare-fun e!207549 () Bool)

(declare-fun tp_is_empty!7061 () Bool)

(assert (=> b!338238 (= e!207549 tp_is_empty!7061)))

(declare-fun b!338239 () Bool)

(declare-fun Unit!10494 () Unit!10492)

(assert (=> b!338239 (= e!207548 Unit!10494)))

(declare-fun b!338240 () Bool)

(declare-fun res!186902 () Bool)

(declare-fun e!207551 () Bool)

(assert (=> b!338240 (=> (not res!186902) (not e!207551))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17689 (_ BitVec 32)) Bool)

(assert (=> b!338240 (= res!186902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun res!186908 () Bool)

(assert (=> start!33986 (=> (not res!186908) (not e!207551))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33986 (= res!186908 (validMask!0 mask!2385))))

(assert (=> start!33986 e!207551))

(assert (=> start!33986 true))

(assert (=> start!33986 tp_is_empty!7061))

(assert (=> start!33986 tp!24845))

(declare-datatypes ((V!10391 0))(
  ( (V!10392 (val!3575 Int)) )
))
(declare-datatypes ((ValueCell!3187 0))(
  ( (ValueCellFull!3187 (v!5738 V!10391)) (EmptyCell!3187) )
))
(declare-datatypes ((array!17691 0))(
  ( (array!17692 (arr!8368 (Array (_ BitVec 32) ValueCell!3187)) (size!8720 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17691)

(declare-fun e!207550 () Bool)

(declare-fun array_inv!6194 (array!17691) Bool)

(assert (=> start!33986 (and (array_inv!6194 _values!1525) e!207550)))

(declare-fun array_inv!6195 (array!17689) Bool)

(assert (=> start!33986 (array_inv!6195 _keys!1895)))

(declare-fun b!338241 () Bool)

(assert (=> b!338241 (= e!207551 e!207546)))

(declare-fun res!186904 () Bool)

(assert (=> b!338241 (=> (not res!186904) (not e!207546))))

(declare-datatypes ((SeekEntryResult!3235 0))(
  ( (MissingZero!3235 (index!15119 (_ BitVec 32))) (Found!3235 (index!15120 (_ BitVec 32))) (Intermediate!3235 (undefined!4047 Bool) (index!15121 (_ BitVec 32)) (x!33710 (_ BitVec 32))) (Undefined!3235) (MissingVacant!3235 (index!15122 (_ BitVec 32))) )
))
(declare-fun lt!160767 () SeekEntryResult!3235)

(assert (=> b!338241 (= res!186904 (and (not (is-Found!3235 lt!160767)) (is-MissingZero!3235 lt!160767)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17689 (_ BitVec 32)) SeekEntryResult!3235)

(assert (=> b!338241 (= lt!160767 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!338242 () Bool)

(declare-fun res!186905 () Bool)

(assert (=> b!338242 (=> (not res!186905) (not e!207551))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!338242 (= res!186905 (validKeyInArray!0 k!1348))))

(declare-fun mapIsEmpty!12003 () Bool)

(declare-fun mapRes!12003 () Bool)

(assert (=> mapIsEmpty!12003 mapRes!12003))

(declare-fun b!338243 () Bool)

(declare-fun Unit!10495 () Unit!10492)

(assert (=> b!338243 (= e!207548 Unit!10495)))

(declare-fun lt!160765 () Unit!10492)

(declare-fun zeroValue!1467 () V!10391)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10391)

(declare-fun lemmaArrayContainsKeyThenInListMap!268 (array!17689 array!17691 (_ BitVec 32) (_ BitVec 32) V!10391 V!10391 (_ BitVec 64) (_ BitVec 32) Int) Unit!10492)

(declare-fun arrayScanForKey!0 (array!17689 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!338243 (= lt!160765 (lemmaArrayContainsKeyThenInListMap!268 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!338243 false))

(declare-fun b!338244 () Bool)

(declare-fun res!186907 () Bool)

(assert (=> b!338244 (=> (not res!186907) (not e!207551))))

(declare-datatypes ((List!4821 0))(
  ( (Nil!4818) (Cons!4817 (h!5673 (_ BitVec 64)) (t!9927 List!4821)) )
))
(declare-fun arrayNoDuplicates!0 (array!17689 (_ BitVec 32) List!4821) Bool)

(assert (=> b!338244 (= res!186907 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4818))))

(declare-fun b!338245 () Bool)

(assert (=> b!338245 (= e!207550 (and e!207549 mapRes!12003))))

(declare-fun condMapEmpty!12003 () Bool)

(declare-fun mapDefault!12003 () ValueCell!3187)

