; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38922 () Bool)

(assert start!38922)

(declare-fun b!406820 () Bool)

(declare-fun res!235174 () Bool)

(declare-fun e!244398 () Bool)

(assert (=> b!406820 (=> (not res!235174) (not e!244398))))

(declare-datatypes ((array!24521 0))(
  ( (array!24522 (arr!11707 (Array (_ BitVec 32) (_ BitVec 64))) (size!12059 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24521)

(declare-datatypes ((List!6773 0))(
  ( (Nil!6770) (Cons!6769 (h!7625 (_ BitVec 64)) (t!11955 List!6773)) )
))
(declare-fun arrayNoDuplicates!0 (array!24521 (_ BitVec 32) List!6773) Bool)

(assert (=> b!406820 (= res!235174 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6770))))

(declare-fun b!406821 () Bool)

(declare-fun res!235178 () Bool)

(assert (=> b!406821 (=> (not res!235178) (not e!244398))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!406821 (= res!235178 (validMask!0 mask!1025))))

(declare-fun b!406822 () Bool)

(declare-fun e!244395 () Bool)

(assert (=> b!406822 (= e!244395 false)))

(declare-fun lt!188541 () Bool)

(declare-fun lt!188540 () array!24521)

(assert (=> b!406822 (= lt!188541 (arrayNoDuplicates!0 lt!188540 #b00000000000000000000000000000000 Nil!6770))))

(declare-fun b!406823 () Bool)

(declare-fun e!244396 () Bool)

(declare-fun e!244397 () Bool)

(declare-fun mapRes!17121 () Bool)

(assert (=> b!406823 (= e!244396 (and e!244397 mapRes!17121))))

(declare-fun condMapEmpty!17121 () Bool)

(declare-datatypes ((V!14883 0))(
  ( (V!14884 (val!5211 Int)) )
))
(declare-datatypes ((ValueCell!4823 0))(
  ( (ValueCellFull!4823 (v!7454 V!14883)) (EmptyCell!4823) )
))
(declare-datatypes ((array!24523 0))(
  ( (array!24524 (arr!11708 (Array (_ BitVec 32) ValueCell!4823)) (size!12060 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24523)

(declare-fun mapDefault!17121 () ValueCell!4823)

