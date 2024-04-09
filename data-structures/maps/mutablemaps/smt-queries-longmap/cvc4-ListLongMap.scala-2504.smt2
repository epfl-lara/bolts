; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38854 () Bool)

(assert start!38854)

(declare-fun b!405494 () Bool)

(declare-fun e!243782 () Bool)

(declare-fun tp_is_empty!10265 () Bool)

(assert (=> b!405494 (= e!243782 tp_is_empty!10265)))

(declare-fun b!405495 () Bool)

(declare-fun res!234156 () Bool)

(declare-fun e!243786 () Bool)

(assert (=> b!405495 (=> (not res!234156) (not e!243786))))

(declare-datatypes ((array!24389 0))(
  ( (array!24390 (arr!11641 (Array (_ BitVec 32) (_ BitVec 64))) (size!11993 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24389)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!405495 (= res!234156 (or (= (select (arr!11641 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11641 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!405496 () Bool)

(declare-fun res!234160 () Bool)

(assert (=> b!405496 (=> (not res!234160) (not e!243786))))

(declare-datatypes ((List!6746 0))(
  ( (Nil!6743) (Cons!6742 (h!7598 (_ BitVec 64)) (t!11928 List!6746)) )
))
(declare-fun arrayNoDuplicates!0 (array!24389 (_ BitVec 32) List!6746) Bool)

(assert (=> b!405496 (= res!234160 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6743))))

(declare-fun res!234159 () Bool)

(assert (=> start!38854 (=> (not res!234159) (not e!243786))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38854 (= res!234159 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11993 _keys!709))))))

(assert (=> start!38854 e!243786))

(assert (=> start!38854 true))

(declare-datatypes ((V!14791 0))(
  ( (V!14792 (val!5177 Int)) )
))
(declare-datatypes ((ValueCell!4789 0))(
  ( (ValueCellFull!4789 (v!7420 V!14791)) (EmptyCell!4789) )
))
(declare-datatypes ((array!24391 0))(
  ( (array!24392 (arr!11642 (Array (_ BitVec 32) ValueCell!4789)) (size!11994 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24391)

(declare-fun e!243787 () Bool)

(declare-fun array_inv!8506 (array!24391) Bool)

(assert (=> start!38854 (and (array_inv!8506 _values!549) e!243787)))

(declare-fun array_inv!8507 (array!24389) Bool)

(assert (=> start!38854 (array_inv!8507 _keys!709)))

(declare-fun mapNonEmpty!17019 () Bool)

(declare-fun mapRes!17019 () Bool)

(declare-fun tp!33138 () Bool)

(declare-fun e!243783 () Bool)

(assert (=> mapNonEmpty!17019 (= mapRes!17019 (and tp!33138 e!243783))))

(declare-fun mapRest!17019 () (Array (_ BitVec 32) ValueCell!4789))

(declare-fun mapKey!17019 () (_ BitVec 32))

(declare-fun mapValue!17019 () ValueCell!4789)

(assert (=> mapNonEmpty!17019 (= (arr!11642 _values!549) (store mapRest!17019 mapKey!17019 mapValue!17019))))

(declare-fun b!405497 () Bool)

(assert (=> b!405497 (= e!243787 (and e!243782 mapRes!17019))))

(declare-fun condMapEmpty!17019 () Bool)

(declare-fun mapDefault!17019 () ValueCell!4789)

