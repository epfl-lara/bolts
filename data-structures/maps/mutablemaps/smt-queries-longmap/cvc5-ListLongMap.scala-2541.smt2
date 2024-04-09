; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39072 () Bool)

(assert start!39072)

(declare-fun b_free!9331 () Bool)

(declare-fun b_next!9331 () Bool)

(assert (=> start!39072 (= b_free!9331 (not b_next!9331))))

(declare-fun tp!33522 () Bool)

(declare-fun b_and!16735 () Bool)

(assert (=> start!39072 (= tp!33522 b_and!16735)))

(declare-fun b!409857 () Bool)

(declare-fun res!237537 () Bool)

(declare-fun e!245749 () Bool)

(assert (=> b!409857 (=> (not res!237537) (not e!245749))))

(declare-datatypes ((array!24817 0))(
  ( (array!24818 (arr!11855 (Array (_ BitVec 32) (_ BitVec 64))) (size!12207 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24817)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!409857 (= res!237537 (or (= (select (arr!11855 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11855 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!409858 () Bool)

(declare-fun res!237544 () Bool)

(declare-fun e!245744 () Bool)

(assert (=> b!409858 (=> (not res!237544) (not e!245744))))

(declare-fun lt!188990 () array!24817)

(declare-datatypes ((List!6845 0))(
  ( (Nil!6842) (Cons!6841 (h!7697 (_ BitVec 64)) (t!12027 List!6845)) )
))
(declare-fun arrayNoDuplicates!0 (array!24817 (_ BitVec 32) List!6845) Bool)

(assert (=> b!409858 (= res!237544 (arrayNoDuplicates!0 lt!188990 #b00000000000000000000000000000000 Nil!6842))))

(declare-fun b!409859 () Bool)

(declare-fun res!237545 () Bool)

(assert (=> b!409859 (=> (not res!237545) (not e!245749))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24817 (_ BitVec 32)) Bool)

(assert (=> b!409859 (= res!237545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!409860 () Bool)

(declare-fun res!237536 () Bool)

(assert (=> b!409860 (=> (not res!237536) (not e!245749))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15083 0))(
  ( (V!15084 (val!5286 Int)) )
))
(declare-datatypes ((ValueCell!4898 0))(
  ( (ValueCellFull!4898 (v!7529 V!15083)) (EmptyCell!4898) )
))
(declare-datatypes ((array!24819 0))(
  ( (array!24820 (arr!11856 (Array (_ BitVec 32) ValueCell!4898)) (size!12208 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24819)

(assert (=> b!409860 (= res!237536 (and (= (size!12208 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12207 _keys!709) (size!12208 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!409861 () Bool)

(declare-fun res!237538 () Bool)

(assert (=> b!409861 (=> (not res!237538) (not e!245744))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!409861 (= res!237538 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!17346 () Bool)

(declare-fun mapRes!17346 () Bool)

(assert (=> mapIsEmpty!17346 mapRes!17346))

(declare-fun b!409862 () Bool)

(declare-fun res!237540 () Bool)

(assert (=> b!409862 (=> (not res!237540) (not e!245749))))

(assert (=> b!409862 (= res!237540 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12207 _keys!709))))))

(declare-fun b!409863 () Bool)

(declare-fun res!237539 () Bool)

(assert (=> b!409863 (=> (not res!237539) (not e!245749))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!409863 (= res!237539 (validMask!0 mask!1025))))

(declare-fun b!409864 () Bool)

(declare-fun res!237543 () Bool)

(assert (=> b!409864 (=> (not res!237543) (not e!245749))))

(assert (=> b!409864 (= res!237543 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6842))))

(declare-fun b!409866 () Bool)

(declare-fun e!245745 () Bool)

(declare-fun tp_is_empty!10483 () Bool)

(assert (=> b!409866 (= e!245745 tp_is_empty!10483)))

(declare-fun b!409867 () Bool)

(assert (=> b!409867 (= e!245749 e!245744)))

(declare-fun res!237542 () Bool)

(assert (=> b!409867 (=> (not res!237542) (not e!245744))))

(assert (=> b!409867 (= res!237542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188990 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!409867 (= lt!188990 (array!24818 (store (arr!11855 _keys!709) i!563 k!794) (size!12207 _keys!709)))))

(declare-fun b!409868 () Bool)

(declare-fun res!237541 () Bool)

(assert (=> b!409868 (=> (not res!237541) (not e!245749))))

(declare-fun arrayContainsKey!0 (array!24817 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!409868 (= res!237541 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!409869 () Bool)

(declare-fun e!245748 () Bool)

(assert (=> b!409869 (= e!245748 tp_is_empty!10483)))

(declare-fun mapNonEmpty!17346 () Bool)

(declare-fun tp!33521 () Bool)

(assert (=> mapNonEmpty!17346 (= mapRes!17346 (and tp!33521 e!245745))))

(declare-fun mapKey!17346 () (_ BitVec 32))

(declare-fun mapRest!17346 () (Array (_ BitVec 32) ValueCell!4898))

(declare-fun mapValue!17346 () ValueCell!4898)

(assert (=> mapNonEmpty!17346 (= (arr!11856 _values!549) (store mapRest!17346 mapKey!17346 mapValue!17346))))

(declare-fun b!409870 () Bool)

(declare-fun res!237546 () Bool)

(assert (=> b!409870 (=> (not res!237546) (not e!245749))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!409870 (= res!237546 (validKeyInArray!0 k!794))))

(declare-fun b!409871 () Bool)

(declare-fun e!245747 () Bool)

(assert (=> b!409871 (= e!245747 (and e!245748 mapRes!17346))))

(declare-fun condMapEmpty!17346 () Bool)

(declare-fun mapDefault!17346 () ValueCell!4898)

