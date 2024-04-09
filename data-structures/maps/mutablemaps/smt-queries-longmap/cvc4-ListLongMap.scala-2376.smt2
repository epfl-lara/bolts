; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37730 () Bool)

(assert start!37730)

(declare-fun b_free!8825 () Bool)

(declare-fun b_next!8825 () Bool)

(assert (=> start!37730 (= b_free!8825 (not b_next!8825))))

(declare-fun tp!31227 () Bool)

(declare-fun b_and!16085 () Bool)

(assert (=> start!37730 (= tp!31227 b_and!16085)))

(declare-fun b!386598 () Bool)

(declare-fun res!220834 () Bool)

(declare-fun e!234484 () Bool)

(assert (=> b!386598 (=> (not res!220834) (not e!234484))))

(declare-datatypes ((array!22865 0))(
  ( (array!22866 (arr!10898 (Array (_ BitVec 32) (_ BitVec 64))) (size!11250 (_ BitVec 32))) )
))
(declare-fun lt!181850 () array!22865)

(declare-datatypes ((List!6268 0))(
  ( (Nil!6265) (Cons!6264 (h!7120 (_ BitVec 64)) (t!11426 List!6268)) )
))
(declare-fun arrayNoDuplicates!0 (array!22865 (_ BitVec 32) List!6268) Bool)

(assert (=> b!386598 (= res!220834 (arrayNoDuplicates!0 lt!181850 #b00000000000000000000000000000000 Nil!6265))))

(declare-fun b!386599 () Bool)

(declare-fun e!234485 () Bool)

(declare-fun e!234488 () Bool)

(declare-fun mapRes!15810 () Bool)

(assert (=> b!386599 (= e!234485 (and e!234488 mapRes!15810))))

(declare-fun condMapEmpty!15810 () Bool)

(declare-datatypes ((V!13767 0))(
  ( (V!13768 (val!4793 Int)) )
))
(declare-datatypes ((ValueCell!4405 0))(
  ( (ValueCellFull!4405 (v!6986 V!13767)) (EmptyCell!4405) )
))
(declare-datatypes ((array!22867 0))(
  ( (array!22868 (arr!10899 (Array (_ BitVec 32) ValueCell!4405)) (size!11251 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22867)

(declare-fun mapDefault!15810 () ValueCell!4405)

