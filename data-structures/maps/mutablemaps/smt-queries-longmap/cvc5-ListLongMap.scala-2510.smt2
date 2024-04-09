; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38886 () Bool)

(assert start!38886)

(declare-fun b!406118 () Bool)

(declare-fun res!234633 () Bool)

(declare-fun e!244073 () Bool)

(assert (=> b!406118 (=> (not res!234633) (not e!244073))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24451 0))(
  ( (array!24452 (arr!11672 (Array (_ BitVec 32) (_ BitVec 64))) (size!12024 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24451)

(assert (=> b!406118 (= res!234633 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12024 _keys!709))))))

(declare-fun b!406119 () Bool)

(declare-fun res!234635 () Bool)

(assert (=> b!406119 (=> (not res!234635) (not e!244073))))

(assert (=> b!406119 (= res!234635 (or (= (select (arr!11672 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11672 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!406120 () Bool)

(declare-fun e!244074 () Bool)

(assert (=> b!406120 (= e!244074 false)))

(declare-fun lt!188433 () Bool)

(declare-fun lt!188432 () array!24451)

(declare-datatypes ((List!6759 0))(
  ( (Nil!6756) (Cons!6755 (h!7611 (_ BitVec 64)) (t!11941 List!6759)) )
))
(declare-fun arrayNoDuplicates!0 (array!24451 (_ BitVec 32) List!6759) Bool)

(assert (=> b!406120 (= lt!188433 (arrayNoDuplicates!0 lt!188432 #b00000000000000000000000000000000 Nil!6756))))

(declare-fun b!406121 () Bool)

(declare-fun res!234641 () Bool)

(assert (=> b!406121 (=> (not res!234641) (not e!244073))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!406121 (= res!234641 (validMask!0 mask!1025))))

(declare-fun b!406122 () Bool)

(declare-fun res!234634 () Bool)

(assert (=> b!406122 (=> (not res!234634) (not e!244073))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14835 0))(
  ( (V!14836 (val!5193 Int)) )
))
(declare-datatypes ((ValueCell!4805 0))(
  ( (ValueCellFull!4805 (v!7436 V!14835)) (EmptyCell!4805) )
))
(declare-datatypes ((array!24453 0))(
  ( (array!24454 (arr!11673 (Array (_ BitVec 32) ValueCell!4805)) (size!12025 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24453)

(assert (=> b!406122 (= res!234634 (and (= (size!12025 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12024 _keys!709) (size!12025 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!406123 () Bool)

(declare-fun res!234642 () Bool)

(assert (=> b!406123 (=> (not res!234642) (not e!244073))))

(assert (=> b!406123 (= res!234642 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6756))))

(declare-fun b!406124 () Bool)

(declare-fun e!244075 () Bool)

(declare-fun tp_is_empty!10297 () Bool)

(assert (=> b!406124 (= e!244075 tp_is_empty!10297)))

(declare-fun mapNonEmpty!17067 () Bool)

(declare-fun mapRes!17067 () Bool)

(declare-fun tp!33186 () Bool)

(declare-fun e!244071 () Bool)

(assert (=> mapNonEmpty!17067 (= mapRes!17067 (and tp!33186 e!244071))))

(declare-fun mapValue!17067 () ValueCell!4805)

(declare-fun mapRest!17067 () (Array (_ BitVec 32) ValueCell!4805))

(declare-fun mapKey!17067 () (_ BitVec 32))

(assert (=> mapNonEmpty!17067 (= (arr!11673 _values!549) (store mapRest!17067 mapKey!17067 mapValue!17067))))

(declare-fun b!406125 () Bool)

(declare-fun res!234639 () Bool)

(assert (=> b!406125 (=> (not res!234639) (not e!244073))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24451 (_ BitVec 32)) Bool)

(assert (=> b!406125 (= res!234639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!406127 () Bool)

(declare-fun e!244072 () Bool)

(assert (=> b!406127 (= e!244072 (and e!244075 mapRes!17067))))

(declare-fun condMapEmpty!17067 () Bool)

(declare-fun mapDefault!17067 () ValueCell!4805)

