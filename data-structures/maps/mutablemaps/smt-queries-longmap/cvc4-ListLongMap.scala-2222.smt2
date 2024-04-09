; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36806 () Bool)

(assert start!36806)

(declare-fun b!367383 () Bool)

(declare-fun res!205776 () Bool)

(declare-fun e!224830 () Bool)

(assert (=> b!367383 (=> (not res!205776) (not e!224830))))

(declare-datatypes ((array!21071 0))(
  ( (array!21072 (arr!10001 (Array (_ BitVec 32) (_ BitVec 64))) (size!10353 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21071)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21071 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!367383 (= res!205776 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!367384 () Bool)

(declare-fun res!205782 () Bool)

(assert (=> b!367384 (=> (not res!205782) (not e!224830))))

(declare-datatypes ((List!5592 0))(
  ( (Nil!5589) (Cons!5588 (h!6444 (_ BitVec 64)) (t!10750 List!5592)) )
))
(declare-fun arrayNoDuplicates!0 (array!21071 (_ BitVec 32) List!5592) Bool)

(assert (=> b!367384 (= res!205782 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5589))))

(declare-fun mapNonEmpty!14424 () Bool)

(declare-fun mapRes!14424 () Bool)

(declare-fun tp!28500 () Bool)

(declare-fun e!224829 () Bool)

(assert (=> mapNonEmpty!14424 (= mapRes!14424 (and tp!28500 e!224829))))

(declare-datatypes ((V!12535 0))(
  ( (V!12536 (val!4331 Int)) )
))
(declare-datatypes ((ValueCell!3943 0))(
  ( (ValueCellFull!3943 (v!6524 V!12535)) (EmptyCell!3943) )
))
(declare-fun mapRest!14424 () (Array (_ BitVec 32) ValueCell!3943))

(declare-datatypes ((array!21073 0))(
  ( (array!21074 (arr!10002 (Array (_ BitVec 32) ValueCell!3943)) (size!10354 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21073)

(declare-fun mapValue!14424 () ValueCell!3943)

(declare-fun mapKey!14424 () (_ BitVec 32))

(assert (=> mapNonEmpty!14424 (= (arr!10002 _values!506) (store mapRest!14424 mapKey!14424 mapValue!14424))))

(declare-fun res!205780 () Bool)

(assert (=> start!36806 (=> (not res!205780) (not e!224830))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36806 (= res!205780 (validMask!0 mask!970))))

(assert (=> start!36806 e!224830))

(assert (=> start!36806 true))

(declare-fun e!224827 () Bool)

(declare-fun array_inv!7392 (array!21073) Bool)

(assert (=> start!36806 (and (array_inv!7392 _values!506) e!224827)))

(declare-fun array_inv!7393 (array!21071) Bool)

(assert (=> start!36806 (array_inv!7393 _keys!658)))

(declare-fun b!367385 () Bool)

(declare-fun e!224832 () Bool)

(assert (=> b!367385 (= e!224827 (and e!224832 mapRes!14424))))

(declare-fun condMapEmpty!14424 () Bool)

(declare-fun mapDefault!14424 () ValueCell!3943)

