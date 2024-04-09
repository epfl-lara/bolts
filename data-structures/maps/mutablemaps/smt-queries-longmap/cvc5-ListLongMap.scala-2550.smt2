; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39126 () Bool)

(assert start!39126)

(declare-fun b_free!9385 () Bool)

(declare-fun b_next!9385 () Bool)

(assert (=> start!39126 (= b_free!9385 (not b_next!9385))))

(declare-fun tp!33683 () Bool)

(declare-fun b_and!16789 () Bool)

(assert (=> start!39126 (= tp!33683 b_and!16789)))

(declare-fun b!411072 () Bool)

(declare-fun res!238516 () Bool)

(declare-fun e!246231 () Bool)

(assert (=> b!411072 (=> (not res!238516) (not e!246231))))

(declare-datatypes ((array!24921 0))(
  ( (array!24922 (arr!11907 (Array (_ BitVec 32) (_ BitVec 64))) (size!12259 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24921)

(declare-datatypes ((List!6881 0))(
  ( (Nil!6878) (Cons!6877 (h!7733 (_ BitVec 64)) (t!12063 List!6881)) )
))
(declare-fun arrayNoDuplicates!0 (array!24921 (_ BitVec 32) List!6881) Bool)

(assert (=> b!411072 (= res!238516 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6878))))

(declare-fun b!411073 () Bool)

(declare-fun e!246230 () Bool)

(declare-fun tp_is_empty!10537 () Bool)

(assert (=> b!411073 (= e!246230 tp_is_empty!10537)))

(declare-fun b!411074 () Bool)

(declare-fun e!246234 () Bool)

(assert (=> b!411074 (= e!246234 tp_is_empty!10537)))

(declare-fun mapNonEmpty!17427 () Bool)

(declare-fun mapRes!17427 () Bool)

(declare-fun tp!33684 () Bool)

(assert (=> mapNonEmpty!17427 (= mapRes!17427 (and tp!33684 e!246230))))

(declare-fun mapKey!17427 () (_ BitVec 32))

(declare-datatypes ((V!15155 0))(
  ( (V!15156 (val!5313 Int)) )
))
(declare-datatypes ((ValueCell!4925 0))(
  ( (ValueCellFull!4925 (v!7556 V!15155)) (EmptyCell!4925) )
))
(declare-fun mapValue!17427 () ValueCell!4925)

(declare-datatypes ((array!24923 0))(
  ( (array!24924 (arr!11908 (Array (_ BitVec 32) ValueCell!4925)) (size!12260 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24923)

(declare-fun mapRest!17427 () (Array (_ BitVec 32) ValueCell!4925))

(assert (=> mapNonEmpty!17427 (= (arr!11908 _values!549) (store mapRest!17427 mapKey!17427 mapValue!17427))))

(declare-fun b!411075 () Bool)

(declare-fun e!246235 () Bool)

(assert (=> b!411075 (= e!246231 e!246235)))

(declare-fun res!238512 () Bool)

(assert (=> b!411075 (=> (not res!238512) (not e!246235))))

(declare-fun lt!189208 () array!24921)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24921 (_ BitVec 32)) Bool)

(assert (=> b!411075 (= res!238512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189208 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!411075 (= lt!189208 (array!24922 (store (arr!11907 _keys!709) i!563 k!794) (size!12259 _keys!709)))))

(declare-fun b!411076 () Bool)

(declare-fun res!238515 () Bool)

(assert (=> b!411076 (=> (not res!238515) (not e!246231))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!411076 (= res!238515 (validMask!0 mask!1025))))

(declare-fun res!238517 () Bool)

(assert (=> start!39126 (=> (not res!238517) (not e!246231))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39126 (= res!238517 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12259 _keys!709))))))

(assert (=> start!39126 e!246231))

(assert (=> start!39126 tp_is_empty!10537))

(assert (=> start!39126 tp!33683))

(assert (=> start!39126 true))

(declare-fun e!246232 () Bool)

(declare-fun array_inv!8688 (array!24923) Bool)

(assert (=> start!39126 (and (array_inv!8688 _values!549) e!246232)))

(declare-fun array_inv!8689 (array!24921) Bool)

(assert (=> start!39126 (array_inv!8689 _keys!709)))

(declare-fun b!411077 () Bool)

(declare-fun res!238510 () Bool)

(assert (=> b!411077 (=> (not res!238510) (not e!246231))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!411077 (= res!238510 (validKeyInArray!0 k!794))))

(declare-fun b!411078 () Bool)

(declare-fun res!238507 () Bool)

(assert (=> b!411078 (=> (not res!238507) (not e!246231))))

(assert (=> b!411078 (= res!238507 (or (= (select (arr!11907 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11907 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!411079 () Bool)

(assert (=> b!411079 (= e!246232 (and e!246234 mapRes!17427))))

(declare-fun condMapEmpty!17427 () Bool)

(declare-fun mapDefault!17427 () ValueCell!4925)

