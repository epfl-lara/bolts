; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39444 () Bool)

(assert start!39444)

(declare-fun b_free!9703 () Bool)

(declare-fun b_next!9703 () Bool)

(assert (=> start!39444 (= b_free!9703 (not b_next!9703))))

(declare-fun tp!34637 () Bool)

(declare-fun b_and!17299 () Bool)

(assert (=> start!39444 (= tp!34637 b_and!17299)))

(declare-fun b!419831 () Bool)

(declare-fun res!244903 () Bool)

(declare-fun e!250136 () Bool)

(assert (=> b!419831 (=> (not res!244903) (not e!250136))))

(declare-datatypes ((array!25541 0))(
  ( (array!25542 (arr!12217 (Array (_ BitVec 32) (_ BitVec 64))) (size!12569 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25541)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25541 (_ BitVec 32)) Bool)

(assert (=> b!419831 (= res!244903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!17904 () Bool)

(declare-fun mapRes!17904 () Bool)

(assert (=> mapIsEmpty!17904 mapRes!17904))

(declare-fun b!419832 () Bool)

(declare-fun e!250139 () Bool)

(assert (=> b!419832 (= e!250136 e!250139)))

(declare-fun res!244906 () Bool)

(assert (=> b!419832 (=> (not res!244906) (not e!250139))))

(declare-fun lt!192637 () array!25541)

(assert (=> b!419832 (= res!244906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!192637 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!419832 (= lt!192637 (array!25542 (store (arr!12217 _keys!709) i!563 k!794) (size!12569 _keys!709)))))

(declare-fun res!244902 () Bool)

(assert (=> start!39444 (=> (not res!244902) (not e!250136))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39444 (= res!244902 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12569 _keys!709))))))

(assert (=> start!39444 e!250136))

(declare-fun tp_is_empty!10855 () Bool)

(assert (=> start!39444 tp_is_empty!10855))

(assert (=> start!39444 tp!34637))

(assert (=> start!39444 true))

(declare-datatypes ((V!15579 0))(
  ( (V!15580 (val!5472 Int)) )
))
(declare-datatypes ((ValueCell!5084 0))(
  ( (ValueCellFull!5084 (v!7715 V!15579)) (EmptyCell!5084) )
))
(declare-datatypes ((array!25543 0))(
  ( (array!25544 (arr!12218 (Array (_ BitVec 32) ValueCell!5084)) (size!12570 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25543)

(declare-fun e!250141 () Bool)

(declare-fun array_inv!8902 (array!25543) Bool)

(assert (=> start!39444 (and (array_inv!8902 _values!549) e!250141)))

(declare-fun array_inv!8903 (array!25541) Bool)

(assert (=> start!39444 (array_inv!8903 _keys!709)))

(declare-fun b!419833 () Bool)

(declare-fun e!250135 () Bool)

(declare-datatypes ((tuple2!7096 0))(
  ( (tuple2!7097 (_1!3558 (_ BitVec 64)) (_2!3558 V!15579)) )
))
(declare-datatypes ((List!7140 0))(
  ( (Nil!7137) (Cons!7136 (h!7992 tuple2!7096) (t!12516 List!7140)) )
))
(declare-datatypes ((ListLongMap!6023 0))(
  ( (ListLongMap!6024 (toList!3027 List!7140)) )
))
(declare-fun call!29285 () ListLongMap!6023)

(declare-fun call!29284 () ListLongMap!6023)

(assert (=> b!419833 (= e!250135 (= call!29285 call!29284))))

(declare-fun b!419834 () Bool)

(declare-fun res!244901 () Bool)

(assert (=> b!419834 (=> (not res!244901) (not e!250136))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!419834 (= res!244901 (validKeyInArray!0 k!794))))

(declare-fun b!419835 () Bool)

(declare-fun res!244914 () Bool)

(assert (=> b!419835 (=> (not res!244914) (not e!250136))))

(assert (=> b!419835 (= res!244914 (or (= (select (arr!12217 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12217 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17904 () Bool)

(declare-fun tp!34638 () Bool)

(declare-fun e!250138 () Bool)

(assert (=> mapNonEmpty!17904 (= mapRes!17904 (and tp!34638 e!250138))))

(declare-fun mapValue!17904 () ValueCell!5084)

(declare-fun mapKey!17904 () (_ BitVec 32))

(declare-fun mapRest!17904 () (Array (_ BitVec 32) ValueCell!5084))

(assert (=> mapNonEmpty!17904 (= (arr!12218 _values!549) (store mapRest!17904 mapKey!17904 mapValue!17904))))

(declare-fun b!419836 () Bool)

(declare-fun e!250140 () Bool)

(declare-fun e!250137 () Bool)

(assert (=> b!419836 (= e!250140 (not e!250137))))

(declare-fun res!244912 () Bool)

(assert (=> b!419836 (=> res!244912 e!250137)))

(assert (=> b!419836 (= res!244912 (validKeyInArray!0 (select (arr!12217 _keys!709) from!863)))))

(assert (=> b!419836 e!250135))

(declare-fun c!55193 () Bool)

(assert (=> b!419836 (= c!55193 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!15579)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15579)

(declare-fun v!412 () V!15579)

(declare-datatypes ((Unit!12363 0))(
  ( (Unit!12364) )
))
(declare-fun lt!192640 () Unit!12363)

(declare-fun defaultEntry!557 () Int)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!437 (array!25541 array!25543 (_ BitVec 32) (_ BitVec 32) V!15579 V!15579 (_ BitVec 32) (_ BitVec 64) V!15579 (_ BitVec 32) Int) Unit!12363)

(assert (=> b!419836 (= lt!192640 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!437 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419837 () Bool)

(declare-fun +!1232 (ListLongMap!6023 tuple2!7096) ListLongMap!6023)

(assert (=> b!419837 (= e!250135 (= call!29285 (+!1232 call!29284 (tuple2!7097 k!794 v!412))))))

(declare-fun b!419838 () Bool)

(declare-fun res!244907 () Bool)

(assert (=> b!419838 (=> (not res!244907) (not e!250139))))

(assert (=> b!419838 (= res!244907 (bvsle from!863 i!563))))

(declare-fun b!419839 () Bool)

(declare-fun e!250133 () Bool)

(assert (=> b!419839 (= e!250133 tp_is_empty!10855)))

(declare-fun b!419840 () Bool)

(assert (=> b!419840 (= e!250137 true)))

(declare-fun lt!192643 () tuple2!7096)

(declare-fun lt!192641 () V!15579)

(declare-fun lt!192644 () ListLongMap!6023)

(assert (=> b!419840 (= (+!1232 lt!192644 lt!192643) (+!1232 (+!1232 lt!192644 (tuple2!7097 k!794 lt!192641)) lt!192643))))

(declare-fun lt!192645 () V!15579)

(assert (=> b!419840 (= lt!192643 (tuple2!7097 k!794 lt!192645))))

(declare-fun lt!192639 () Unit!12363)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!51 (ListLongMap!6023 (_ BitVec 64) V!15579 V!15579) Unit!12363)

(assert (=> b!419840 (= lt!192639 (addSameAsAddTwiceSameKeyDiffValues!51 lt!192644 k!794 lt!192641 lt!192645))))

(declare-fun lt!192636 () V!15579)

(declare-fun get!6068 (ValueCell!5084 V!15579) V!15579)

(assert (=> b!419840 (= lt!192641 (get!6068 (select (arr!12218 _values!549) from!863) lt!192636))))

(declare-fun lt!192635 () ListLongMap!6023)

(assert (=> b!419840 (= lt!192635 (+!1232 lt!192644 (tuple2!7097 (select (arr!12217 lt!192637) from!863) lt!192645)))))

(assert (=> b!419840 (= lt!192645 (get!6068 (select (store (arr!12218 _values!549) i!563 (ValueCellFull!5084 v!412)) from!863) lt!192636))))

(declare-fun dynLambda!713 (Int (_ BitVec 64)) V!15579)

(assert (=> b!419840 (= lt!192636 (dynLambda!713 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!192638 () array!25543)

(declare-fun getCurrentListMapNoExtraKeys!1228 (array!25541 array!25543 (_ BitVec 32) (_ BitVec 32) V!15579 V!15579 (_ BitVec 32) Int) ListLongMap!6023)

(assert (=> b!419840 (= lt!192644 (getCurrentListMapNoExtraKeys!1228 lt!192637 lt!192638 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419841 () Bool)

(declare-fun res!244904 () Bool)

(assert (=> b!419841 (=> (not res!244904) (not e!250136))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!419841 (= res!244904 (validMask!0 mask!1025))))

(declare-fun b!419842 () Bool)

(declare-fun res!244909 () Bool)

(assert (=> b!419842 (=> (not res!244909) (not e!250139))))

(declare-datatypes ((List!7141 0))(
  ( (Nil!7138) (Cons!7137 (h!7993 (_ BitVec 64)) (t!12517 List!7141)) )
))
(declare-fun arrayNoDuplicates!0 (array!25541 (_ BitVec 32) List!7141) Bool)

(assert (=> b!419842 (= res!244909 (arrayNoDuplicates!0 lt!192637 #b00000000000000000000000000000000 Nil!7138))))

(declare-fun b!419843 () Bool)

(assert (=> b!419843 (= e!250138 tp_is_empty!10855)))

(declare-fun b!419844 () Bool)

(assert (=> b!419844 (= e!250141 (and e!250133 mapRes!17904))))

(declare-fun condMapEmpty!17904 () Bool)

(declare-fun mapDefault!17904 () ValueCell!5084)

