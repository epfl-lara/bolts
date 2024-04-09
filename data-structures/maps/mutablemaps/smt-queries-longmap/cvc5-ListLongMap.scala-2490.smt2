; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38766 () Bool)

(assert start!38766)

(declare-fun b!403778 () Bool)

(declare-fun res!232838 () Bool)

(declare-fun e!242990 () Bool)

(assert (=> b!403778 (=> (not res!232838) (not e!242990))))

(declare-datatypes ((array!24223 0))(
  ( (array!24224 (arr!11558 (Array (_ BitVec 32) (_ BitVec 64))) (size!11910 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24223)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24223 (_ BitVec 32)) Bool)

(assert (=> b!403778 (= res!232838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!403779 () Bool)

(declare-fun res!232839 () Bool)

(assert (=> b!403779 (=> (not res!232839) (not e!242990))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!403779 (= res!232839 (or (= (select (arr!11558 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11558 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!232840 () Bool)

(assert (=> start!38766 (=> (not res!232840) (not e!242990))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38766 (= res!232840 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11910 _keys!709))))))

(assert (=> start!38766 e!242990))

(assert (=> start!38766 true))

(declare-datatypes ((V!14675 0))(
  ( (V!14676 (val!5133 Int)) )
))
(declare-datatypes ((ValueCell!4745 0))(
  ( (ValueCellFull!4745 (v!7376 V!14675)) (EmptyCell!4745) )
))
(declare-datatypes ((array!24225 0))(
  ( (array!24226 (arr!11559 (Array (_ BitVec 32) ValueCell!4745)) (size!11911 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24225)

(declare-fun e!242992 () Bool)

(declare-fun array_inv!8444 (array!24225) Bool)

(assert (=> start!38766 (and (array_inv!8444 _values!549) e!242992)))

(declare-fun array_inv!8445 (array!24223) Bool)

(assert (=> start!38766 (array_inv!8445 _keys!709)))

(declare-fun b!403780 () Bool)

(declare-fun res!232842 () Bool)

(assert (=> b!403780 (=> (not res!232842) (not e!242990))))

(declare-datatypes ((List!6711 0))(
  ( (Nil!6708) (Cons!6707 (h!7563 (_ BitVec 64)) (t!11893 List!6711)) )
))
(declare-fun arrayNoDuplicates!0 (array!24223 (_ BitVec 32) List!6711) Bool)

(assert (=> b!403780 (= res!232842 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6708))))

(declare-fun b!403781 () Bool)

(declare-fun e!242994 () Bool)

(assert (=> b!403781 (= e!242990 e!242994)))

(declare-fun res!232837 () Bool)

(assert (=> b!403781 (=> (not res!232837) (not e!242994))))

(declare-fun lt!188073 () array!24223)

(assert (=> b!403781 (= res!232837 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188073 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!403781 (= lt!188073 (array!24224 (store (arr!11558 _keys!709) i!563 k!794) (size!11910 _keys!709)))))

(declare-fun b!403782 () Bool)

(declare-fun res!232835 () Bool)

(assert (=> b!403782 (=> (not res!232835) (not e!242990))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!403782 (= res!232835 (validKeyInArray!0 k!794))))

(declare-fun b!403783 () Bool)

(assert (=> b!403783 (= e!242994 false)))

(declare-fun lt!188072 () Bool)

(assert (=> b!403783 (= lt!188072 (arrayNoDuplicates!0 lt!188073 #b00000000000000000000000000000000 Nil!6708))))

(declare-fun b!403784 () Bool)

(declare-fun res!232833 () Bool)

(assert (=> b!403784 (=> (not res!232833) (not e!242990))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!403784 (= res!232833 (validMask!0 mask!1025))))

(declare-fun b!403785 () Bool)

(declare-fun res!232841 () Bool)

(assert (=> b!403785 (=> (not res!232841) (not e!242990))))

(declare-fun arrayContainsKey!0 (array!24223 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!403785 (= res!232841 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!403786 () Bool)

(declare-fun res!232836 () Bool)

(assert (=> b!403786 (=> (not res!232836) (not e!242990))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!403786 (= res!232836 (and (= (size!11911 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11910 _keys!709) (size!11911 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!403787 () Bool)

(declare-fun e!242991 () Bool)

(declare-fun mapRes!16887 () Bool)

(assert (=> b!403787 (= e!242992 (and e!242991 mapRes!16887))))

(declare-fun condMapEmpty!16887 () Bool)

(declare-fun mapDefault!16887 () ValueCell!4745)

