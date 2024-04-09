; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38970 () Bool)

(assert start!38970)

(declare-fun mapIsEmpty!17193 () Bool)

(declare-fun mapRes!17193 () Bool)

(assert (=> mapIsEmpty!17193 mapRes!17193))

(declare-fun b!407756 () Bool)

(declare-fun res!235902 () Bool)

(declare-fun e!244831 () Bool)

(assert (=> b!407756 (=> (not res!235902) (not e!244831))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!407756 (= res!235902 (validKeyInArray!0 k!794))))

(declare-fun b!407757 () Bool)

(declare-fun res!235900 () Bool)

(assert (=> b!407757 (=> (not res!235900) (not e!244831))))

(declare-datatypes ((array!24617 0))(
  ( (array!24618 (arr!11755 (Array (_ BitVec 32) (_ BitVec 64))) (size!12107 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24617)

(declare-datatypes ((List!6794 0))(
  ( (Nil!6791) (Cons!6790 (h!7646 (_ BitVec 64)) (t!11976 List!6794)) )
))
(declare-fun arrayNoDuplicates!0 (array!24617 (_ BitVec 32) List!6794) Bool)

(assert (=> b!407757 (= res!235900 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6791))))

(declare-fun b!407758 () Bool)

(declare-fun e!244827 () Bool)

(declare-fun tp_is_empty!10381 () Bool)

(assert (=> b!407758 (= e!244827 tp_is_empty!10381)))

(declare-fun b!407759 () Bool)

(declare-fun res!235897 () Bool)

(assert (=> b!407759 (=> (not res!235897) (not e!244831))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24617 (_ BitVec 32)) Bool)

(assert (=> b!407759 (= res!235897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!407760 () Bool)

(declare-fun e!244826 () Bool)

(assert (=> b!407760 (= e!244826 (and e!244827 mapRes!17193))))

(declare-fun condMapEmpty!17193 () Bool)

(declare-datatypes ((V!14947 0))(
  ( (V!14948 (val!5235 Int)) )
))
(declare-datatypes ((ValueCell!4847 0))(
  ( (ValueCellFull!4847 (v!7478 V!14947)) (EmptyCell!4847) )
))
(declare-datatypes ((array!24619 0))(
  ( (array!24620 (arr!11756 (Array (_ BitVec 32) ValueCell!4847)) (size!12108 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24619)

(declare-fun mapDefault!17193 () ValueCell!4847)

