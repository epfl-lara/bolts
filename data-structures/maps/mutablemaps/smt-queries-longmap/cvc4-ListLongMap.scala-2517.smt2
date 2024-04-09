; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38932 () Bool)

(assert start!38932)

(declare-fun b!407015 () Bool)

(declare-fun res!235331 () Bool)

(declare-fun e!244484 () Bool)

(assert (=> b!407015 (=> (not res!235331) (not e!244484))))

(declare-datatypes ((array!24541 0))(
  ( (array!24542 (arr!11717 (Array (_ BitVec 32) (_ BitVec 64))) (size!12069 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24541)

(declare-datatypes ((List!6778 0))(
  ( (Nil!6775) (Cons!6774 (h!7630 (_ BitVec 64)) (t!11960 List!6778)) )
))
(declare-fun arrayNoDuplicates!0 (array!24541 (_ BitVec 32) List!6778) Bool)

(assert (=> b!407015 (= res!235331 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6775))))

(declare-fun b!407016 () Bool)

(declare-fun res!235326 () Bool)

(assert (=> b!407016 (=> (not res!235326) (not e!244484))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407016 (= res!235326 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12069 _keys!709))))))

(declare-fun b!407017 () Bool)

(declare-fun res!235323 () Bool)

(assert (=> b!407017 (=> (not res!235323) (not e!244484))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!407017 (= res!235323 (validMask!0 mask!1025))))

(declare-fun b!407018 () Bool)

(declare-fun e!244487 () Bool)

(declare-fun e!244488 () Bool)

(declare-fun mapRes!17136 () Bool)

(assert (=> b!407018 (= e!244487 (and e!244488 mapRes!17136))))

(declare-fun condMapEmpty!17136 () Bool)

(declare-datatypes ((V!14895 0))(
  ( (V!14896 (val!5216 Int)) )
))
(declare-datatypes ((ValueCell!4828 0))(
  ( (ValueCellFull!4828 (v!7459 V!14895)) (EmptyCell!4828) )
))
(declare-datatypes ((array!24543 0))(
  ( (array!24544 (arr!11718 (Array (_ BitVec 32) ValueCell!4828)) (size!12070 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24543)

(declare-fun mapDefault!17136 () ValueCell!4828)

