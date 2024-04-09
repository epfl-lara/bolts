; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39130 () Bool)

(assert start!39130)

(declare-fun b_free!9389 () Bool)

(declare-fun b_next!9389 () Bool)

(assert (=> start!39130 (= b_free!9389 (not b_next!9389))))

(declare-fun tp!33695 () Bool)

(declare-fun b_and!16793 () Bool)

(assert (=> start!39130 (= tp!33695 b_and!16793)))

(declare-fun b!411162 () Bool)

(declare-fun e!246271 () Bool)

(declare-fun tp_is_empty!10541 () Bool)

(assert (=> b!411162 (= e!246271 tp_is_empty!10541)))

(declare-fun b!411163 () Bool)

(declare-fun res!238590 () Bool)

(declare-fun e!246266 () Bool)

(assert (=> b!411163 (=> (not res!238590) (not e!246266))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24929 0))(
  ( (array!24930 (arr!11911 (Array (_ BitVec 32) (_ BitVec 64))) (size!12263 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24929)

(assert (=> b!411163 (= res!238590 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12263 _keys!709))))))

(declare-fun b!411164 () Bool)

(declare-fun res!238581 () Bool)

(assert (=> b!411164 (=> (not res!238581) (not e!246266))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24929 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!411164 (= res!238581 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!411165 () Bool)

(declare-fun res!238580 () Bool)

(assert (=> b!411165 (=> (not res!238580) (not e!246266))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15159 0))(
  ( (V!15160 (val!5315 Int)) )
))
(declare-datatypes ((ValueCell!4927 0))(
  ( (ValueCellFull!4927 (v!7558 V!15159)) (EmptyCell!4927) )
))
(declare-datatypes ((array!24931 0))(
  ( (array!24932 (arr!11912 (Array (_ BitVec 32) ValueCell!4927)) (size!12264 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24931)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!411165 (= res!238580 (and (= (size!12264 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12263 _keys!709) (size!12264 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!411166 () Bool)

(declare-fun res!238585 () Bool)

(declare-fun e!246268 () Bool)

(assert (=> b!411166 (=> (not res!238585) (not e!246268))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!411166 (= res!238585 (bvsle from!863 i!563))))

(declare-fun b!411167 () Bool)

(declare-fun res!238586 () Bool)

(assert (=> b!411167 (=> (not res!238586) (not e!246266))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!411167 (= res!238586 (validKeyInArray!0 k!794))))

(declare-fun b!411168 () Bool)

(declare-fun res!238582 () Bool)

(assert (=> b!411168 (=> (not res!238582) (not e!246266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24929 (_ BitVec 32)) Bool)

(assert (=> b!411168 (= res!238582 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!411169 () Bool)

(declare-fun e!246270 () Bool)

(assert (=> b!411169 (= e!246270 tp_is_empty!10541)))

(declare-fun b!411170 () Bool)

(declare-fun res!238583 () Bool)

(assert (=> b!411170 (=> (not res!238583) (not e!246266))))

(declare-datatypes ((List!6884 0))(
  ( (Nil!6881) (Cons!6880 (h!7736 (_ BitVec 64)) (t!12066 List!6884)) )
))
(declare-fun arrayNoDuplicates!0 (array!24929 (_ BitVec 32) List!6884) Bool)

(assert (=> b!411170 (= res!238583 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6881))))

(declare-fun b!411171 () Bool)

(declare-fun res!238589 () Bool)

(assert (=> b!411171 (=> (not res!238589) (not e!246266))))

(assert (=> b!411171 (= res!238589 (or (= (select (arr!11911 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11911 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!411172 () Bool)

(declare-fun res!238584 () Bool)

(assert (=> b!411172 (=> (not res!238584) (not e!246266))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!411172 (= res!238584 (validMask!0 mask!1025))))

(declare-fun b!411173 () Bool)

(declare-fun e!246269 () Bool)

(declare-fun mapRes!17433 () Bool)

(assert (=> b!411173 (= e!246269 (and e!246270 mapRes!17433))))

(declare-fun condMapEmpty!17433 () Bool)

(declare-fun mapDefault!17433 () ValueCell!4927)

