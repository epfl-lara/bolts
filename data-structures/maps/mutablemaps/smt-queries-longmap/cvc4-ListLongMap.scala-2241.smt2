; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36920 () Bool)

(assert start!36920)

(declare-fun b_free!8039 () Bool)

(declare-fun b_next!8039 () Bool)

(assert (=> start!36920 (= b_free!8039 (not b_next!8039))))

(declare-fun tp!28833 () Bool)

(declare-fun b_and!15299 () Bool)

(assert (=> start!36920 (= tp!28833 b_and!15299)))

(declare-fun b!369605 () Bool)

(declare-fun e!225856 () Bool)

(declare-fun tp_is_empty!8687 () Bool)

(assert (=> b!369605 (= e!225856 tp_is_empty!8687)))

(declare-fun res!207493 () Bool)

(declare-fun e!225854 () Bool)

(assert (=> start!36920 (=> (not res!207493) (not e!225854))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36920 (= res!207493 (validMask!0 mask!970))))

(assert (=> start!36920 e!225854))

(declare-datatypes ((V!12687 0))(
  ( (V!12688 (val!4388 Int)) )
))
(declare-datatypes ((ValueCell!4000 0))(
  ( (ValueCellFull!4000 (v!6581 V!12687)) (EmptyCell!4000) )
))
(declare-datatypes ((array!21297 0))(
  ( (array!21298 (arr!10114 (Array (_ BitVec 32) ValueCell!4000)) (size!10466 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21297)

(declare-fun e!225853 () Bool)

(declare-fun array_inv!7474 (array!21297) Bool)

(assert (=> start!36920 (and (array_inv!7474 _values!506) e!225853)))

(assert (=> start!36920 tp!28833))

(assert (=> start!36920 true))

(assert (=> start!36920 tp_is_empty!8687))

(declare-datatypes ((array!21299 0))(
  ( (array!21300 (arr!10115 (Array (_ BitVec 32) (_ BitVec 64))) (size!10467 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21299)

(declare-fun array_inv!7475 (array!21299) Bool)

(assert (=> start!36920 (array_inv!7475 _keys!658)))

(declare-fun b!369606 () Bool)

(declare-fun res!207491 () Bool)

(assert (=> b!369606 (=> (not res!207491) (not e!225854))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!369606 (= res!207491 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10467 _keys!658))))))

(declare-fun b!369607 () Bool)

(declare-fun e!225855 () Bool)

(assert (=> b!369607 (= e!225855 tp_is_empty!8687)))

(declare-fun b!369608 () Bool)

(declare-fun res!207488 () Bool)

(assert (=> b!369608 (=> (not res!207488) (not e!225854))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21299 (_ BitVec 32)) Bool)

(assert (=> b!369608 (= res!207488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!369609 () Bool)

(declare-fun res!207489 () Bool)

(declare-fun e!225857 () Bool)

(assert (=> b!369609 (=> (not res!207489) (not e!225857))))

(declare-fun lt!169781 () array!21299)

(declare-datatypes ((List!5676 0))(
  ( (Nil!5673) (Cons!5672 (h!6528 (_ BitVec 64)) (t!10834 List!5676)) )
))
(declare-fun arrayNoDuplicates!0 (array!21299 (_ BitVec 32) List!5676) Bool)

(assert (=> b!369609 (= res!207489 (arrayNoDuplicates!0 lt!169781 #b00000000000000000000000000000000 Nil!5673))))

(declare-fun b!369610 () Bool)

(declare-fun mapRes!14595 () Bool)

(assert (=> b!369610 (= e!225853 (and e!225855 mapRes!14595))))

(declare-fun condMapEmpty!14595 () Bool)

(declare-fun mapDefault!14595 () ValueCell!4000)

