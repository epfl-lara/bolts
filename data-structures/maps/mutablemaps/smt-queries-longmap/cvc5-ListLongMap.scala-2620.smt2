; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39546 () Bool)

(assert start!39546)

(declare-fun b_free!9805 () Bool)

(declare-fun b_next!9805 () Bool)

(assert (=> start!39546 (= b_free!9805 (not b_next!9805))))

(declare-fun tp!34943 () Bool)

(declare-fun b_and!17479 () Bool)

(assert (=> start!39546 (= tp!34943 b_and!17479)))

(declare-fun b!422664 () Bool)

(declare-fun res!246967 () Bool)

(declare-fun e!251397 () Bool)

(assert (=> b!422664 (=> (not res!246967) (not e!251397))))

(declare-datatypes ((array!25741 0))(
  ( (array!25742 (arr!12317 (Array (_ BitVec 32) (_ BitVec 64))) (size!12669 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25741)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25741 (_ BitVec 32)) Bool)

(assert (=> b!422664 (= res!246967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!422665 () Bool)

(declare-fun e!251399 () Bool)

(declare-fun tp_is_empty!10957 () Bool)

(assert (=> b!422665 (= e!251399 tp_is_empty!10957)))

(declare-fun b!422666 () Bool)

(declare-fun res!246974 () Bool)

(declare-fun e!251398 () Bool)

(assert (=> b!422666 (=> (not res!246974) (not e!251398))))

(declare-fun lt!194016 () array!25741)

(declare-datatypes ((List!7224 0))(
  ( (Nil!7221) (Cons!7220 (h!8076 (_ BitVec 64)) (t!12676 List!7224)) )
))
(declare-fun arrayNoDuplicates!0 (array!25741 (_ BitVec 32) List!7224) Bool)

(assert (=> b!422666 (= res!246974 (arrayNoDuplicates!0 lt!194016 #b00000000000000000000000000000000 Nil!7221))))

(declare-fun b!422667 () Bool)

(declare-fun res!246971 () Bool)

(assert (=> b!422667 (=> (not res!246971) (not e!251397))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15715 0))(
  ( (V!15716 (val!5523 Int)) )
))
(declare-datatypes ((ValueCell!5135 0))(
  ( (ValueCellFull!5135 (v!7766 V!15715)) (EmptyCell!5135) )
))
(declare-datatypes ((array!25743 0))(
  ( (array!25744 (arr!12318 (Array (_ BitVec 32) ValueCell!5135)) (size!12670 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25743)

(assert (=> b!422667 (= res!246971 (and (= (size!12670 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12669 _keys!709) (size!12670 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!422668 () Bool)

(declare-fun res!246976 () Bool)

(assert (=> b!422668 (=> (not res!246976) (not e!251397))))

(assert (=> b!422668 (= res!246976 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7221))))

(declare-fun b!422669 () Bool)

(declare-fun res!246975 () Bool)

(assert (=> b!422669 (=> (not res!246975) (not e!251397))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!422669 (= res!246975 (or (= (select (arr!12317 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12317 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!246968 () Bool)

(assert (=> start!39546 (=> (not res!246968) (not e!251397))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39546 (= res!246968 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12669 _keys!709))))))

(assert (=> start!39546 e!251397))

(assert (=> start!39546 tp_is_empty!10957))

(assert (=> start!39546 tp!34943))

(assert (=> start!39546 true))

(declare-fun e!251400 () Bool)

(declare-fun array_inv!8974 (array!25743) Bool)

(assert (=> start!39546 (and (array_inv!8974 _values!549) e!251400)))

(declare-fun array_inv!8975 (array!25741) Bool)

(assert (=> start!39546 (array_inv!8975 _keys!709)))

(declare-fun b!422670 () Bool)

(declare-fun e!251401 () Bool)

(assert (=> b!422670 (= e!251401 tp_is_empty!10957)))

(declare-fun mapNonEmpty!18057 () Bool)

(declare-fun mapRes!18057 () Bool)

(declare-fun tp!34944 () Bool)

(assert (=> mapNonEmpty!18057 (= mapRes!18057 (and tp!34944 e!251399))))

(declare-fun mapRest!18057 () (Array (_ BitVec 32) ValueCell!5135))

(declare-fun mapValue!18057 () ValueCell!5135)

(declare-fun mapKey!18057 () (_ BitVec 32))

(assert (=> mapNonEmpty!18057 (= (arr!12318 _values!549) (store mapRest!18057 mapKey!18057 mapValue!18057))))

(declare-fun b!422671 () Bool)

(declare-fun res!246972 () Bool)

(assert (=> b!422671 (=> (not res!246972) (not e!251397))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!422671 (= res!246972 (validKeyInArray!0 k!794))))

(declare-fun b!422672 () Bool)

(declare-fun res!246973 () Bool)

(assert (=> b!422672 (=> (not res!246973) (not e!251397))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!422672 (= res!246973 (validMask!0 mask!1025))))

(declare-fun b!422673 () Bool)

(assert (=> b!422673 (= e!251397 e!251398)))

(declare-fun res!246970 () Bool)

(assert (=> b!422673 (=> (not res!246970) (not e!251398))))

(assert (=> b!422673 (= res!246970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194016 mask!1025))))

(assert (=> b!422673 (= lt!194016 (array!25742 (store (arr!12317 _keys!709) i!563 k!794) (size!12669 _keys!709)))))

(declare-fun b!422674 () Bool)

(declare-fun res!246978 () Bool)

(assert (=> b!422674 (=> (not res!246978) (not e!251398))))

(assert (=> b!422674 (= res!246978 (bvsle from!863 i!563))))

(declare-fun b!422675 () Bool)

(declare-fun res!246977 () Bool)

(assert (=> b!422675 (=> (not res!246977) (not e!251397))))

(assert (=> b!422675 (= res!246977 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12669 _keys!709))))))

(declare-fun b!422676 () Bool)

(declare-fun res!246969 () Bool)

(assert (=> b!422676 (=> (not res!246969) (not e!251397))))

(declare-fun arrayContainsKey!0 (array!25741 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!422676 (= res!246969 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!422677 () Bool)

(assert (=> b!422677 (= e!251400 (and e!251401 mapRes!18057))))

(declare-fun condMapEmpty!18057 () Bool)

(declare-fun mapDefault!18057 () ValueCell!5135)

