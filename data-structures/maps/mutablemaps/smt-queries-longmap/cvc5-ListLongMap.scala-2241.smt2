; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36916 () Bool)

(assert start!36916)

(declare-fun b_free!8035 () Bool)

(declare-fun b_next!8035 () Bool)

(assert (=> start!36916 (= b_free!8035 (not b_next!8035))))

(declare-fun tp!28820 () Bool)

(declare-fun b_and!15295 () Bool)

(assert (=> start!36916 (= tp!28820 b_and!15295)))

(declare-fun b!369527 () Bool)

(declare-fun e!225819 () Bool)

(declare-fun e!225817 () Bool)

(assert (=> b!369527 (= e!225819 e!225817)))

(declare-fun res!207434 () Bool)

(assert (=> b!369527 (=> (not res!207434) (not e!225817))))

(declare-datatypes ((array!21289 0))(
  ( (array!21290 (arr!10110 (Array (_ BitVec 32) (_ BitVec 64))) (size!10462 (_ BitVec 32))) )
))
(declare-fun lt!169765 () array!21289)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21289 (_ BitVec 32)) Bool)

(assert (=> b!369527 (= res!207434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169765 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!21289)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!369527 (= lt!169765 (array!21290 (store (arr!10110 _keys!658) i!548 k!778) (size!10462 _keys!658)))))

(declare-fun b!369528 () Bool)

(declare-fun res!207427 () Bool)

(assert (=> b!369528 (=> (not res!207427) (not e!225819))))

(declare-fun arrayContainsKey!0 (array!21289 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!369528 (= res!207427 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14589 () Bool)

(declare-fun mapRes!14589 () Bool)

(declare-fun tp!28821 () Bool)

(declare-fun e!225820 () Bool)

(assert (=> mapNonEmpty!14589 (= mapRes!14589 (and tp!28821 e!225820))))

(declare-datatypes ((V!12683 0))(
  ( (V!12684 (val!4386 Int)) )
))
(declare-datatypes ((ValueCell!3998 0))(
  ( (ValueCellFull!3998 (v!6579 V!12683)) (EmptyCell!3998) )
))
(declare-fun mapRest!14589 () (Array (_ BitVec 32) ValueCell!3998))

(declare-fun mapKey!14589 () (_ BitVec 32))

(declare-fun mapValue!14589 () ValueCell!3998)

(declare-datatypes ((array!21291 0))(
  ( (array!21292 (arr!10111 (Array (_ BitVec 32) ValueCell!3998)) (size!10463 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21291)

(assert (=> mapNonEmpty!14589 (= (arr!10111 _values!506) (store mapRest!14589 mapKey!14589 mapValue!14589))))

(declare-fun b!369529 () Bool)

(declare-fun tp_is_empty!8683 () Bool)

(assert (=> b!369529 (= e!225820 tp_is_empty!8683)))

(declare-fun b!369530 () Bool)

(declare-fun res!207425 () Bool)

(assert (=> b!369530 (=> (not res!207425) (not e!225817))))

(declare-datatypes ((List!5673 0))(
  ( (Nil!5670) (Cons!5669 (h!6525 (_ BitVec 64)) (t!10831 List!5673)) )
))
(declare-fun arrayNoDuplicates!0 (array!21289 (_ BitVec 32) List!5673) Bool)

(assert (=> b!369530 (= res!207425 (arrayNoDuplicates!0 lt!169765 #b00000000000000000000000000000000 Nil!5670))))

(declare-fun b!369531 () Bool)

(declare-fun res!207430 () Bool)

(assert (=> b!369531 (=> (not res!207430) (not e!225819))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!369531 (= res!207430 (and (= (size!10463 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10462 _keys!658) (size!10463 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!369532 () Bool)

(declare-fun e!225821 () Bool)

(assert (=> b!369532 (= e!225821 tp_is_empty!8683)))

(declare-fun b!369533 () Bool)

(declare-fun res!207429 () Bool)

(assert (=> b!369533 (=> (not res!207429) (not e!225819))))

(assert (=> b!369533 (= res!207429 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10462 _keys!658))))))

(declare-fun b!369534 () Bool)

(declare-fun res!207428 () Bool)

(assert (=> b!369534 (=> (not res!207428) (not e!225819))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!369534 (= res!207428 (validKeyInArray!0 k!778))))

(declare-fun b!369535 () Bool)

(declare-fun res!207432 () Bool)

(assert (=> b!369535 (=> (not res!207432) (not e!225819))))

(assert (=> b!369535 (= res!207432 (or (= (select (arr!10110 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10110 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!369536 () Bool)

(declare-fun e!225822 () Bool)

(assert (=> b!369536 (= e!225822 (and e!225821 mapRes!14589))))

(declare-fun condMapEmpty!14589 () Bool)

(declare-fun mapDefault!14589 () ValueCell!3998)

