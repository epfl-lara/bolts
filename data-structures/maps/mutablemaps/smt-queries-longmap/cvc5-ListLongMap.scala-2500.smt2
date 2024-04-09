; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38826 () Bool)

(assert start!38826)

(declare-fun b!404948 () Bool)

(declare-fun res!233733 () Bool)

(declare-fun e!243531 () Bool)

(assert (=> b!404948 (=> (not res!233733) (not e!243531))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!404948 (= res!233733 (validKeyInArray!0 k!794))))

(declare-fun b!404949 () Bool)

(declare-fun e!243535 () Bool)

(declare-fun tp_is_empty!10237 () Bool)

(assert (=> b!404949 (= e!243535 tp_is_empty!10237)))

(declare-fun b!404950 () Bool)

(declare-fun res!233735 () Bool)

(assert (=> b!404950 (=> (not res!233735) (not e!243531))))

(declare-datatypes ((array!24335 0))(
  ( (array!24336 (arr!11614 (Array (_ BitVec 32) (_ BitVec 64))) (size!11966 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24335)

(declare-fun arrayContainsKey!0 (array!24335 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!404950 (= res!233735 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!404951 () Bool)

(declare-fun e!243532 () Bool)

(assert (=> b!404951 (= e!243532 false)))

(declare-fun lt!188253 () Bool)

(declare-fun lt!188252 () array!24335)

(declare-datatypes ((List!6734 0))(
  ( (Nil!6731) (Cons!6730 (h!7586 (_ BitVec 64)) (t!11916 List!6734)) )
))
(declare-fun arrayNoDuplicates!0 (array!24335 (_ BitVec 32) List!6734) Bool)

(assert (=> b!404951 (= lt!188253 (arrayNoDuplicates!0 lt!188252 #b00000000000000000000000000000000 Nil!6731))))

(declare-fun b!404952 () Bool)

(declare-fun res!233739 () Bool)

(assert (=> b!404952 (=> (not res!233739) (not e!243531))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14755 0))(
  ( (V!14756 (val!5163 Int)) )
))
(declare-datatypes ((ValueCell!4775 0))(
  ( (ValueCellFull!4775 (v!7406 V!14755)) (EmptyCell!4775) )
))
(declare-datatypes ((array!24337 0))(
  ( (array!24338 (arr!11615 (Array (_ BitVec 32) ValueCell!4775)) (size!11967 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24337)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!404952 (= res!233739 (and (= (size!11967 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11966 _keys!709) (size!11967 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!404953 () Bool)

(declare-fun res!233742 () Bool)

(assert (=> b!404953 (=> (not res!233742) (not e!243531))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!404953 (= res!233742 (validMask!0 mask!1025))))

(declare-fun b!404954 () Bool)

(declare-fun e!243533 () Bool)

(assert (=> b!404954 (= e!243533 tp_is_empty!10237)))

(declare-fun b!404955 () Bool)

(declare-fun res!233737 () Bool)

(assert (=> b!404955 (=> (not res!233737) (not e!243531))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24335 (_ BitVec 32)) Bool)

(assert (=> b!404955 (= res!233737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!16977 () Bool)

(declare-fun mapRes!16977 () Bool)

(assert (=> mapIsEmpty!16977 mapRes!16977))

(declare-fun b!404956 () Bool)

(declare-fun e!243534 () Bool)

(assert (=> b!404956 (= e!243534 (and e!243533 mapRes!16977))))

(declare-fun condMapEmpty!16977 () Bool)

(declare-fun mapDefault!16977 () ValueCell!4775)

