; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36764 () Bool)

(assert start!36764)

(declare-fun b!366627 () Bool)

(declare-fun res!205214 () Bool)

(declare-fun e!224453 () Bool)

(assert (=> b!366627 (=> (not res!205214) (not e!224453))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12479 0))(
  ( (V!12480 (val!4310 Int)) )
))
(declare-datatypes ((ValueCell!3922 0))(
  ( (ValueCellFull!3922 (v!6503 V!12479)) (EmptyCell!3922) )
))
(declare-datatypes ((array!20989 0))(
  ( (array!20990 (arr!9960 (Array (_ BitVec 32) ValueCell!3922)) (size!10312 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20989)

(declare-datatypes ((array!20991 0))(
  ( (array!20992 (arr!9961 (Array (_ BitVec 32) (_ BitVec 64))) (size!10313 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20991)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!366627 (= res!205214 (and (= (size!10312 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10313 _keys!658) (size!10312 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!366628 () Bool)

(declare-fun e!224451 () Bool)

(assert (=> b!366628 (= e!224453 e!224451)))

(declare-fun res!205216 () Bool)

(assert (=> b!366628 (=> (not res!205216) (not e!224451))))

(declare-fun lt!169243 () array!20991)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20991 (_ BitVec 32)) Bool)

(assert (=> b!366628 (= res!205216 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169243 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!366628 (= lt!169243 (array!20992 (store (arr!9961 _keys!658) i!548 k!778) (size!10313 _keys!658)))))

(declare-fun b!366629 () Bool)

(declare-fun e!224454 () Bool)

(declare-fun tp_is_empty!8531 () Bool)

(assert (=> b!366629 (= e!224454 tp_is_empty!8531)))

(declare-fun b!366630 () Bool)

(assert (=> b!366630 (= e!224451 false)))

(declare-fun lt!169242 () Bool)

(declare-datatypes ((List!5572 0))(
  ( (Nil!5569) (Cons!5568 (h!6424 (_ BitVec 64)) (t!10730 List!5572)) )
))
(declare-fun arrayNoDuplicates!0 (array!20991 (_ BitVec 32) List!5572) Bool)

(assert (=> b!366630 (= lt!169242 (arrayNoDuplicates!0 lt!169243 #b00000000000000000000000000000000 Nil!5569))))

(declare-fun b!366631 () Bool)

(declare-fun res!205210 () Bool)

(assert (=> b!366631 (=> (not res!205210) (not e!224453))))

(assert (=> b!366631 (= res!205210 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10313 _keys!658))))))

(declare-fun b!366632 () Bool)

(declare-fun res!205212 () Bool)

(assert (=> b!366632 (=> (not res!205212) (not e!224453))))

(declare-fun arrayContainsKey!0 (array!20991 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!366632 (= res!205212 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!366634 () Bool)

(declare-fun res!205213 () Bool)

(assert (=> b!366634 (=> (not res!205213) (not e!224453))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!366634 (= res!205213 (validKeyInArray!0 k!778))))

(declare-fun b!366635 () Bool)

(declare-fun e!224452 () Bool)

(assert (=> b!366635 (= e!224452 tp_is_empty!8531)))

(declare-fun b!366636 () Bool)

(declare-fun e!224449 () Bool)

(declare-fun mapRes!14361 () Bool)

(assert (=> b!366636 (= e!224449 (and e!224454 mapRes!14361))))

(declare-fun condMapEmpty!14361 () Bool)

(declare-fun mapDefault!14361 () ValueCell!3922)

