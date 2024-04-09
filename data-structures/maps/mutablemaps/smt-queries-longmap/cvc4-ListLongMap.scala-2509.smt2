; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38884 () Bool)

(assert start!38884)

(declare-fun b!406079 () Bool)

(declare-fun res!234603 () Bool)

(declare-fun e!244052 () Bool)

(assert (=> b!406079 (=> (not res!234603) (not e!244052))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!406079 (= res!234603 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!17064 () Bool)

(declare-fun mapRes!17064 () Bool)

(assert (=> mapIsEmpty!17064 mapRes!17064))

(declare-fun mapNonEmpty!17064 () Bool)

(declare-fun tp!33183 () Bool)

(declare-fun e!244056 () Bool)

(assert (=> mapNonEmpty!17064 (= mapRes!17064 (and tp!33183 e!244056))))

(declare-fun mapKey!17064 () (_ BitVec 32))

(declare-datatypes ((V!14831 0))(
  ( (V!14832 (val!5192 Int)) )
))
(declare-datatypes ((ValueCell!4804 0))(
  ( (ValueCellFull!4804 (v!7435 V!14831)) (EmptyCell!4804) )
))
(declare-datatypes ((array!24447 0))(
  ( (array!24448 (arr!11670 (Array (_ BitVec 32) ValueCell!4804)) (size!12022 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24447)

(declare-fun mapValue!17064 () ValueCell!4804)

(declare-fun mapRest!17064 () (Array (_ BitVec 32) ValueCell!4804))

(assert (=> mapNonEmpty!17064 (= (arr!11670 _values!549) (store mapRest!17064 mapKey!17064 mapValue!17064))))

(declare-fun b!406080 () Bool)

(declare-fun e!244055 () Bool)

(assert (=> b!406080 (= e!244055 false)))

(declare-fun lt!188427 () Bool)

(declare-datatypes ((array!24449 0))(
  ( (array!24450 (arr!11671 (Array (_ BitVec 32) (_ BitVec 64))) (size!12023 (_ BitVec 32))) )
))
(declare-fun lt!188426 () array!24449)

(declare-datatypes ((List!6758 0))(
  ( (Nil!6755) (Cons!6754 (h!7610 (_ BitVec 64)) (t!11940 List!6758)) )
))
(declare-fun arrayNoDuplicates!0 (array!24449 (_ BitVec 32) List!6758) Bool)

(assert (=> b!406080 (= lt!188427 (arrayNoDuplicates!0 lt!188426 #b00000000000000000000000000000000 Nil!6755))))

(declare-fun b!406081 () Bool)

(declare-fun res!234612 () Bool)

(assert (=> b!406081 (=> (not res!234612) (not e!244052))))

(declare-fun _keys!709 () array!24449)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24449 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!406081 (= res!234612 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!406082 () Bool)

(declare-fun res!234610 () Bool)

(assert (=> b!406082 (=> (not res!234610) (not e!244052))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406082 (= res!234610 (or (= (select (arr!11671 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11671 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!406083 () Bool)

(declare-fun tp_is_empty!10295 () Bool)

(assert (=> b!406083 (= e!244056 tp_is_empty!10295)))

(declare-fun b!406084 () Bool)

(declare-fun res!234607 () Bool)

(assert (=> b!406084 (=> (not res!234607) (not e!244052))))

(assert (=> b!406084 (= res!234607 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12023 _keys!709))))))

(declare-fun b!406085 () Bool)

(declare-fun res!234611 () Bool)

(assert (=> b!406085 (=> (not res!234611) (not e!244052))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!406085 (= res!234611 (and (= (size!12022 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12023 _keys!709) (size!12022 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!406086 () Bool)

(declare-fun res!234609 () Bool)

(assert (=> b!406086 (=> (not res!234609) (not e!244052))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24449 (_ BitVec 32)) Bool)

(assert (=> b!406086 (= res!234609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!406087 () Bool)

(declare-fun e!244053 () Bool)

(declare-fun e!244054 () Bool)

(assert (=> b!406087 (= e!244053 (and e!244054 mapRes!17064))))

(declare-fun condMapEmpty!17064 () Bool)

(declare-fun mapDefault!17064 () ValueCell!4804)

