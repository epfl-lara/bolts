; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38396 () Bool)

(assert start!38396)

(declare-fun b!395786 () Bool)

(declare-fun res!227046 () Bool)

(declare-fun e!239559 () Bool)

(assert (=> b!395786 (=> (not res!227046) (not e!239559))))

(declare-datatypes ((array!23567 0))(
  ( (array!23568 (arr!11232 (Array (_ BitVec 32) (_ BitVec 64))) (size!11584 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23567)

(declare-datatypes ((List!6484 0))(
  ( (Nil!6481) (Cons!6480 (h!7336 (_ BitVec 64)) (t!11666 List!6484)) )
))
(declare-fun arrayNoDuplicates!0 (array!23567 (_ BitVec 32) List!6484) Bool)

(assert (=> b!395786 (= res!227046 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6481))))

(declare-fun b!395787 () Bool)

(declare-fun res!227049 () Bool)

(assert (=> b!395787 (=> (not res!227049) (not e!239559))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!395787 (= res!227049 (or (= (select (arr!11232 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11232 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!395788 () Bool)

(declare-fun e!239558 () Bool)

(declare-fun tp_is_empty!9841 () Bool)

(assert (=> b!395788 (= e!239558 tp_is_empty!9841)))

(declare-fun b!395789 () Bool)

(declare-fun res!227048 () Bool)

(assert (=> b!395789 (=> (not res!227048) (not e!239559))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23567 (_ BitVec 32)) Bool)

(assert (=> b!395789 (= res!227048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!23568 (store (arr!11232 _keys!709) i!563 k!794) (size!11584 _keys!709)) mask!1025))))

(declare-fun b!395791 () Bool)

(declare-fun res!227050 () Bool)

(assert (=> b!395791 (=> (not res!227050) (not e!239559))))

(assert (=> b!395791 (= res!227050 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11584 _keys!709))))))

(declare-fun b!395792 () Bool)

(declare-fun res!227045 () Bool)

(assert (=> b!395792 (=> (not res!227045) (not e!239559))))

(assert (=> b!395792 (= res!227045 (and (bvsle #b00000000000000000000000000000000 (size!11584 _keys!709)) (bvslt (size!11584 _keys!709) #b01111111111111111111111111111111)))))

(declare-fun b!395793 () Bool)

(declare-fun res!227052 () Bool)

(assert (=> b!395793 (=> (not res!227052) (not e!239559))))

(assert (=> b!395793 (= res!227052 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!395794 () Bool)

(declare-fun res!227053 () Bool)

(assert (=> b!395794 (=> (not res!227053) (not e!239559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!395794 (= res!227053 (validMask!0 mask!1025))))

(declare-fun b!395795 () Bool)

(declare-fun e!239561 () Bool)

(declare-fun mapRes!16377 () Bool)

(assert (=> b!395795 (= e!239561 (and e!239558 mapRes!16377))))

(declare-fun condMapEmpty!16377 () Bool)

(declare-datatypes ((V!14227 0))(
  ( (V!14228 (val!4965 Int)) )
))
(declare-datatypes ((ValueCell!4577 0))(
  ( (ValueCellFull!4577 (v!7207 V!14227)) (EmptyCell!4577) )
))
(declare-datatypes ((array!23569 0))(
  ( (array!23570 (arr!11233 (Array (_ BitVec 32) ValueCell!4577)) (size!11585 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23569)

(declare-fun mapDefault!16377 () ValueCell!4577)

