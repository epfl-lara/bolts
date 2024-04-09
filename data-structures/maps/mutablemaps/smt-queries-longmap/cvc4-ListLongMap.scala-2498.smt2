; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38818 () Bool)

(assert start!38818)

(declare-fun b!404792 () Bool)

(declare-fun res!233620 () Bool)

(declare-fun e!243462 () Bool)

(assert (=> b!404792 (=> (not res!233620) (not e!243462))))

(declare-datatypes ((array!24321 0))(
  ( (array!24322 (arr!11607 (Array (_ BitVec 32) (_ BitVec 64))) (size!11959 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24321)

(declare-datatypes ((List!6732 0))(
  ( (Nil!6729) (Cons!6728 (h!7584 (_ BitVec 64)) (t!11914 List!6732)) )
))
(declare-fun arrayNoDuplicates!0 (array!24321 (_ BitVec 32) List!6732) Bool)

(assert (=> b!404792 (= res!233620 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6729))))

(declare-fun b!404793 () Bool)

(declare-fun res!233617 () Bool)

(assert (=> b!404793 (=> (not res!233617) (not e!243462))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!404793 (= res!233617 (or (= (select (arr!11607 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11607 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16965 () Bool)

(declare-fun mapRes!16965 () Bool)

(declare-fun tp!33084 () Bool)

(declare-fun e!243459 () Bool)

(assert (=> mapNonEmpty!16965 (= mapRes!16965 (and tp!33084 e!243459))))

(declare-datatypes ((V!14743 0))(
  ( (V!14744 (val!5159 Int)) )
))
(declare-datatypes ((ValueCell!4771 0))(
  ( (ValueCellFull!4771 (v!7402 V!14743)) (EmptyCell!4771) )
))
(declare-fun mapRest!16965 () (Array (_ BitVec 32) ValueCell!4771))

(declare-fun mapKey!16965 () (_ BitVec 32))

(declare-datatypes ((array!24323 0))(
  ( (array!24324 (arr!11608 (Array (_ BitVec 32) ValueCell!4771)) (size!11960 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24323)

(declare-fun mapValue!16965 () ValueCell!4771)

(assert (=> mapNonEmpty!16965 (= (arr!11608 _values!549) (store mapRest!16965 mapKey!16965 mapValue!16965))))

(declare-fun mapIsEmpty!16965 () Bool)

(assert (=> mapIsEmpty!16965 mapRes!16965))

(declare-fun b!404794 () Bool)

(declare-fun e!243461 () Bool)

(declare-fun tp_is_empty!10229 () Bool)

(assert (=> b!404794 (= e!243461 tp_is_empty!10229)))

(declare-fun b!404795 () Bool)

(declare-fun e!243463 () Bool)

(assert (=> b!404795 (= e!243462 e!243463)))

(declare-fun res!233613 () Bool)

(assert (=> b!404795 (=> (not res!233613) (not e!243463))))

(declare-fun lt!188229 () array!24321)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24321 (_ BitVec 32)) Bool)

(assert (=> b!404795 (= res!233613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188229 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!404795 (= lt!188229 (array!24322 (store (arr!11607 _keys!709) i!563 k!794) (size!11959 _keys!709)))))

(declare-fun b!404796 () Bool)

(declare-fun res!233616 () Bool)

(assert (=> b!404796 (=> (not res!233616) (not e!243462))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!404796 (= res!233616 (validKeyInArray!0 k!794))))

(declare-fun b!404797 () Bool)

(assert (=> b!404797 (= e!243463 false)))

(declare-fun lt!188228 () Bool)

(assert (=> b!404797 (= lt!188228 (arrayNoDuplicates!0 lt!188229 #b00000000000000000000000000000000 Nil!6729))))

(declare-fun b!404798 () Bool)

(declare-fun res!233619 () Bool)

(assert (=> b!404798 (=> (not res!233619) (not e!243462))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!404798 (= res!233619 (and (= (size!11960 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11959 _keys!709) (size!11960 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!404799 () Bool)

(assert (=> b!404799 (= e!243459 tp_is_empty!10229)))

(declare-fun b!404801 () Bool)

(declare-fun e!243460 () Bool)

(assert (=> b!404801 (= e!243460 (and e!243461 mapRes!16965))))

(declare-fun condMapEmpty!16965 () Bool)

(declare-fun mapDefault!16965 () ValueCell!4771)

