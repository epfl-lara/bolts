; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36766 () Bool)

(assert start!36766)

(declare-fun b!366663 () Bool)

(declare-fun res!205243 () Bool)

(declare-fun e!224472 () Bool)

(assert (=> b!366663 (=> (not res!205243) (not e!224472))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!366663 (= res!205243 (validKeyInArray!0 k!778))))

(declare-fun b!366664 () Bool)

(declare-fun e!224469 () Bool)

(declare-fun tp_is_empty!8533 () Bool)

(assert (=> b!366664 (= e!224469 tp_is_empty!8533)))

(declare-fun b!366665 () Bool)

(declare-fun e!224470 () Bool)

(assert (=> b!366665 (= e!224470 false)))

(declare-fun lt!169248 () Bool)

(declare-datatypes ((array!20993 0))(
  ( (array!20994 (arr!9962 (Array (_ BitVec 32) (_ BitVec 64))) (size!10314 (_ BitVec 32))) )
))
(declare-fun lt!169249 () array!20993)

(declare-datatypes ((List!5573 0))(
  ( (Nil!5570) (Cons!5569 (h!6425 (_ BitVec 64)) (t!10731 List!5573)) )
))
(declare-fun arrayNoDuplicates!0 (array!20993 (_ BitVec 32) List!5573) Bool)

(assert (=> b!366665 (= lt!169248 (arrayNoDuplicates!0 lt!169249 #b00000000000000000000000000000000 Nil!5570))))

(declare-fun b!366666 () Bool)

(assert (=> b!366666 (= e!224472 e!224470)))

(declare-fun res!205240 () Bool)

(assert (=> b!366666 (=> (not res!205240) (not e!224470))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20993 (_ BitVec 32)) Bool)

(assert (=> b!366666 (= res!205240 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169249 mask!970))))

(declare-fun _keys!658 () array!20993)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!366666 (= lt!169249 (array!20994 (store (arr!9962 _keys!658) i!548 k!778) (size!10314 _keys!658)))))

(declare-fun res!205242 () Bool)

(assert (=> start!36766 (=> (not res!205242) (not e!224472))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36766 (= res!205242 (validMask!0 mask!970))))

(assert (=> start!36766 e!224472))

(assert (=> start!36766 true))

(declare-datatypes ((V!12483 0))(
  ( (V!12484 (val!4311 Int)) )
))
(declare-datatypes ((ValueCell!3923 0))(
  ( (ValueCellFull!3923 (v!6504 V!12483)) (EmptyCell!3923) )
))
(declare-datatypes ((array!20995 0))(
  ( (array!20996 (arr!9963 (Array (_ BitVec 32) ValueCell!3923)) (size!10315 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20995)

(declare-fun e!224467 () Bool)

(declare-fun array_inv!7368 (array!20995) Bool)

(assert (=> start!36766 (and (array_inv!7368 _values!506) e!224467)))

(declare-fun array_inv!7369 (array!20993) Bool)

(assert (=> start!36766 (array_inv!7369 _keys!658)))

(declare-fun b!366667 () Bool)

(declare-fun res!205244 () Bool)

(assert (=> b!366667 (=> (not res!205244) (not e!224472))))

(assert (=> b!366667 (= res!205244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!366668 () Bool)

(declare-fun res!205239 () Bool)

(assert (=> b!366668 (=> (not res!205239) (not e!224472))))

(assert (=> b!366668 (= res!205239 (or (= (select (arr!9962 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9962 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!366669 () Bool)

(declare-fun e!224471 () Bool)

(assert (=> b!366669 (= e!224471 tp_is_empty!8533)))

(declare-fun mapNonEmpty!14364 () Bool)

(declare-fun mapRes!14364 () Bool)

(declare-fun tp!28440 () Bool)

(assert (=> mapNonEmpty!14364 (= mapRes!14364 (and tp!28440 e!224469))))

(declare-fun mapRest!14364 () (Array (_ BitVec 32) ValueCell!3923))

(declare-fun mapKey!14364 () (_ BitVec 32))

(declare-fun mapValue!14364 () ValueCell!3923)

(assert (=> mapNonEmpty!14364 (= (arr!9963 _values!506) (store mapRest!14364 mapKey!14364 mapValue!14364))))

(declare-fun b!366670 () Bool)

(declare-fun res!205236 () Bool)

(assert (=> b!366670 (=> (not res!205236) (not e!224472))))

(assert (=> b!366670 (= res!205236 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5570))))

(declare-fun b!366671 () Bool)

(declare-fun res!205241 () Bool)

(assert (=> b!366671 (=> (not res!205241) (not e!224472))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!366671 (= res!205241 (and (= (size!10315 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10314 _keys!658) (size!10315 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!366672 () Bool)

(declare-fun res!205238 () Bool)

(assert (=> b!366672 (=> (not res!205238) (not e!224472))))

(assert (=> b!366672 (= res!205238 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10314 _keys!658))))))

(declare-fun mapIsEmpty!14364 () Bool)

(assert (=> mapIsEmpty!14364 mapRes!14364))

(declare-fun b!366673 () Bool)

(assert (=> b!366673 (= e!224467 (and e!224471 mapRes!14364))))

(declare-fun condMapEmpty!14364 () Bool)

(declare-fun mapDefault!14364 () ValueCell!3923)

