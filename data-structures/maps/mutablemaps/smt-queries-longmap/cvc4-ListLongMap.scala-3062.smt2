; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43226 () Bool)

(assert start!43226)

(declare-fun b!478753 () Bool)

(declare-fun res!285678 () Bool)

(declare-fun e!281596 () Bool)

(assert (=> b!478753 (=> (not res!285678) (not e!281596))))

(declare-datatypes ((array!30855 0))(
  ( (array!30856 (arr!14832 (Array (_ BitVec 32) (_ BitVec 64))) (size!15190 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30855)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30855 (_ BitVec 32)) Bool)

(assert (=> b!478753 (= res!285678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478754 () Bool)

(declare-fun e!281595 () Bool)

(declare-fun tp_is_empty!13607 () Bool)

(assert (=> b!478754 (= e!281595 tp_is_empty!13607)))

(declare-fun res!285677 () Bool)

(assert (=> start!43226 (=> (not res!285677) (not e!281596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43226 (= res!285677 (validMask!0 mask!2352))))

(assert (=> start!43226 e!281596))

(assert (=> start!43226 true))

(declare-datatypes ((V!19213 0))(
  ( (V!19214 (val!6851 Int)) )
))
(declare-datatypes ((ValueCell!6442 0))(
  ( (ValueCellFull!6442 (v!9136 V!19213)) (EmptyCell!6442) )
))
(declare-datatypes ((array!30857 0))(
  ( (array!30858 (arr!14833 (Array (_ BitVec 32) ValueCell!6442)) (size!15191 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30857)

(declare-fun e!281594 () Bool)

(declare-fun array_inv!10690 (array!30857) Bool)

(assert (=> start!43226 (and (array_inv!10690 _values!1516) e!281594)))

(declare-fun array_inv!10691 (array!30855) Bool)

(assert (=> start!43226 (array_inv!10691 _keys!1874)))

(declare-fun b!478755 () Bool)

(declare-fun e!281592 () Bool)

(assert (=> b!478755 (= e!281592 tp_is_empty!13607)))

(declare-fun b!478756 () Bool)

(declare-fun mapRes!22105 () Bool)

(assert (=> b!478756 (= e!281594 (and e!281592 mapRes!22105))))

(declare-fun condMapEmpty!22105 () Bool)

(declare-fun mapDefault!22105 () ValueCell!6442)

