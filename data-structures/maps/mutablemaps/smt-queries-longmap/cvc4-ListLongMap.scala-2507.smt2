; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38872 () Bool)

(assert start!38872)

(declare-fun b!405845 () Bool)

(declare-fun res!234428 () Bool)

(declare-fun e!243945 () Bool)

(assert (=> b!405845 (=> (not res!234428) (not e!243945))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!405845 (= res!234428 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!17046 () Bool)

(declare-fun mapRes!17046 () Bool)

(assert (=> mapIsEmpty!17046 mapRes!17046))

(declare-fun b!405846 () Bool)

(declare-fun res!234430 () Bool)

(assert (=> b!405846 (=> (not res!234430) (not e!243945))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24423 0))(
  ( (array!24424 (arr!11658 (Array (_ BitVec 32) (_ BitVec 64))) (size!12010 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24423)

(assert (=> b!405846 (= res!234430 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12010 _keys!709))))))

(declare-fun b!405847 () Bool)

(declare-fun res!234424 () Bool)

(assert (=> b!405847 (=> (not res!234424) (not e!243945))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14815 0))(
  ( (V!14816 (val!5186 Int)) )
))
(declare-datatypes ((ValueCell!4798 0))(
  ( (ValueCellFull!4798 (v!7429 V!14815)) (EmptyCell!4798) )
))
(declare-datatypes ((array!24425 0))(
  ( (array!24426 (arr!11659 (Array (_ BitVec 32) ValueCell!4798)) (size!12011 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24425)

(assert (=> b!405847 (= res!234424 (and (= (size!12011 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12010 _keys!709) (size!12011 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!17046 () Bool)

(declare-fun tp!33165 () Bool)

(declare-fun e!243944 () Bool)

(assert (=> mapNonEmpty!17046 (= mapRes!17046 (and tp!33165 e!243944))))

(declare-fun mapKey!17046 () (_ BitVec 32))

(declare-fun mapValue!17046 () ValueCell!4798)

(declare-fun mapRest!17046 () (Array (_ BitVec 32) ValueCell!4798))

(assert (=> mapNonEmpty!17046 (= (arr!11659 _values!549) (store mapRest!17046 mapKey!17046 mapValue!17046))))

(declare-fun b!405848 () Bool)

(declare-fun res!234427 () Bool)

(assert (=> b!405848 (=> (not res!234427) (not e!243945))))

(assert (=> b!405848 (= res!234427 (or (= (select (arr!11658 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11658 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!234426 () Bool)

(assert (=> start!38872 (=> (not res!234426) (not e!243945))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38872 (= res!234426 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12010 _keys!709))))))

(assert (=> start!38872 e!243945))

(assert (=> start!38872 true))

(declare-fun e!243948 () Bool)

(declare-fun array_inv!8520 (array!24425) Bool)

(assert (=> start!38872 (and (array_inv!8520 _values!549) e!243948)))

(declare-fun array_inv!8521 (array!24423) Bool)

(assert (=> start!38872 (array_inv!8521 _keys!709)))

(declare-fun b!405849 () Bool)

(declare-fun tp_is_empty!10283 () Bool)

(assert (=> b!405849 (= e!243944 tp_is_empty!10283)))

(declare-fun b!405850 () Bool)

(declare-fun e!243947 () Bool)

(assert (=> b!405850 (= e!243945 e!243947)))

(declare-fun res!234423 () Bool)

(assert (=> b!405850 (=> (not res!234423) (not e!243947))))

(declare-fun lt!188391 () array!24423)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24423 (_ BitVec 32)) Bool)

(assert (=> b!405850 (= res!234423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188391 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!405850 (= lt!188391 (array!24424 (store (arr!11658 _keys!709) i!563 k!794) (size!12010 _keys!709)))))

(declare-fun b!405851 () Bool)

(declare-fun res!234425 () Bool)

(assert (=> b!405851 (=> (not res!234425) (not e!243945))))

(assert (=> b!405851 (= res!234425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!405852 () Bool)

(assert (=> b!405852 (= e!243947 false)))

(declare-fun lt!188390 () Bool)

(declare-datatypes ((List!6753 0))(
  ( (Nil!6750) (Cons!6749 (h!7605 (_ BitVec 64)) (t!11935 List!6753)) )
))
(declare-fun arrayNoDuplicates!0 (array!24423 (_ BitVec 32) List!6753) Bool)

(assert (=> b!405852 (= lt!188390 (arrayNoDuplicates!0 lt!188391 #b00000000000000000000000000000000 Nil!6750))))

(declare-fun b!405853 () Bool)

(declare-fun res!234432 () Bool)

(assert (=> b!405853 (=> (not res!234432) (not e!243945))))

(declare-fun arrayContainsKey!0 (array!24423 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!405853 (= res!234432 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!405854 () Bool)

(declare-fun e!243949 () Bool)

(assert (=> b!405854 (= e!243948 (and e!243949 mapRes!17046))))

(declare-fun condMapEmpty!17046 () Bool)

(declare-fun mapDefault!17046 () ValueCell!4798)

