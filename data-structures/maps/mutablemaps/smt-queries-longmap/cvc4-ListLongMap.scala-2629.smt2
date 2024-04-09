; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39604 () Bool)

(assert start!39604)

(declare-fun b_free!9863 () Bool)

(declare-fun b_next!9863 () Bool)

(assert (=> start!39604 (= b_free!9863 (not b_next!9863))))

(declare-fun tp!35117 () Bool)

(declare-fun b_and!17537 () Bool)

(assert (=> start!39604 (= tp!35117 b_and!17537)))

(declare-fun b!423969 () Bool)

(declare-fun res!248012 () Bool)

(declare-fun e!251918 () Bool)

(assert (=> b!423969 (=> (not res!248012) (not e!251918))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!423969 (= res!248012 (bvsle from!863 i!563))))

(declare-fun b!423970 () Bool)

(declare-fun res!248014 () Bool)

(declare-fun e!251922 () Bool)

(assert (=> b!423970 (=> (not res!248014) (not e!251922))))

(declare-datatypes ((array!25857 0))(
  ( (array!25858 (arr!12375 (Array (_ BitVec 32) (_ BitVec 64))) (size!12727 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25857)

(assert (=> b!423970 (= res!248014 (or (= (select (arr!12375 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12375 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!423971 () Bool)

(declare-fun res!248019 () Bool)

(assert (=> b!423971 (=> (not res!248019) (not e!251922))))

(declare-datatypes ((List!7268 0))(
  ( (Nil!7265) (Cons!7264 (h!8120 (_ BitVec 64)) (t!12720 List!7268)) )
))
(declare-fun arrayNoDuplicates!0 (array!25857 (_ BitVec 32) List!7268) Bool)

(assert (=> b!423971 (= res!248019 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7265))))

(declare-fun b!423973 () Bool)

(declare-fun e!251919 () Bool)

(declare-fun tp_is_empty!11015 () Bool)

(assert (=> b!423973 (= e!251919 tp_is_empty!11015)))

(declare-fun b!423974 () Bool)

(declare-fun res!248011 () Bool)

(assert (=> b!423974 (=> (not res!248011) (not e!251922))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15791 0))(
  ( (V!15792 (val!5552 Int)) )
))
(declare-datatypes ((ValueCell!5164 0))(
  ( (ValueCellFull!5164 (v!7795 V!15791)) (EmptyCell!5164) )
))
(declare-datatypes ((array!25859 0))(
  ( (array!25860 (arr!12376 (Array (_ BitVec 32) ValueCell!5164)) (size!12728 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25859)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!423974 (= res!248011 (and (= (size!12728 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12727 _keys!709) (size!12728 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!423975 () Bool)

(declare-fun res!248016 () Bool)

(assert (=> b!423975 (=> (not res!248016) (not e!251922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25857 (_ BitVec 32)) Bool)

(assert (=> b!423975 (= res!248016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!248020 () Bool)

(assert (=> start!39604 (=> (not res!248020) (not e!251922))))

(assert (=> start!39604 (= res!248020 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12727 _keys!709))))))

(assert (=> start!39604 e!251922))

(assert (=> start!39604 tp_is_empty!11015))

(assert (=> start!39604 tp!35117))

(assert (=> start!39604 true))

(declare-fun e!251920 () Bool)

(declare-fun array_inv!9020 (array!25859) Bool)

(assert (=> start!39604 (and (array_inv!9020 _values!549) e!251920)))

(declare-fun array_inv!9021 (array!25857) Bool)

(assert (=> start!39604 (array_inv!9021 _keys!709)))

(declare-fun b!423972 () Bool)

(declare-fun e!251923 () Bool)

(declare-fun mapRes!18144 () Bool)

(assert (=> b!423972 (= e!251920 (and e!251923 mapRes!18144))))

(declare-fun condMapEmpty!18144 () Bool)

(declare-fun mapDefault!18144 () ValueCell!5164)

