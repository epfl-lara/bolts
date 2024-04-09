; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39174 () Bool)

(assert start!39174)

(declare-fun b_free!9433 () Bool)

(declare-fun b_next!9433 () Bool)

(assert (=> start!39174 (= b_free!9433 (not b_next!9433))))

(declare-fun tp!33828 () Bool)

(declare-fun b_and!16837 () Bool)

(assert (=> start!39174 (= tp!33828 b_and!16837)))

(declare-fun b!412152 () Bool)

(declare-fun res!239376 () Bool)

(declare-fun e!246665 () Bool)

(assert (=> b!412152 (=> (not res!239376) (not e!246665))))

(declare-datatypes ((array!25011 0))(
  ( (array!25012 (arr!11952 (Array (_ BitVec 32) (_ BitVec 64))) (size!12304 (_ BitVec 32))) )
))
(declare-fun lt!189426 () array!25011)

(declare-datatypes ((List!6910 0))(
  ( (Nil!6907) (Cons!6906 (h!7762 (_ BitVec 64)) (t!12092 List!6910)) )
))
(declare-fun arrayNoDuplicates!0 (array!25011 (_ BitVec 32) List!6910) Bool)

(assert (=> b!412152 (= res!239376 (arrayNoDuplicates!0 lt!189426 #b00000000000000000000000000000000 Nil!6907))))

(declare-fun b!412153 () Bool)

(declare-fun res!239374 () Bool)

(declare-fun e!246663 () Bool)

(assert (=> b!412153 (=> (not res!239374) (not e!246663))))

(declare-fun _keys!709 () array!25011)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25011 (_ BitVec 32)) Bool)

(assert (=> b!412153 (= res!239374 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!17499 () Bool)

(declare-fun mapRes!17499 () Bool)

(assert (=> mapIsEmpty!17499 mapRes!17499))

(declare-fun b!412154 () Bool)

(declare-fun res!239379 () Bool)

(assert (=> b!412154 (=> (not res!239379) (not e!246663))))

(assert (=> b!412154 (= res!239379 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6907))))

(declare-fun b!412155 () Bool)

(assert (=> b!412155 (= e!246663 e!246665)))

(declare-fun res!239381 () Bool)

(assert (=> b!412155 (=> (not res!239381) (not e!246665))))

(assert (=> b!412155 (= res!239381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189426 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!412155 (= lt!189426 (array!25012 (store (arr!11952 _keys!709) i!563 k!794) (size!12304 _keys!709)))))

(declare-fun b!412156 () Bool)

(declare-fun res!239377 () Bool)

(assert (=> b!412156 (=> (not res!239377) (not e!246663))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!412156 (= res!239377 (validMask!0 mask!1025))))

(declare-fun b!412157 () Bool)

(declare-fun res!239371 () Bool)

(assert (=> b!412157 (=> (not res!239371) (not e!246663))))

(assert (=> b!412157 (= res!239371 (or (= (select (arr!11952 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11952 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!412158 () Bool)

(declare-fun e!246667 () Bool)

(declare-fun tp_is_empty!10585 () Bool)

(assert (=> b!412158 (= e!246667 tp_is_empty!10585)))

(declare-fun b!412159 () Bool)

(declare-fun res!239373 () Bool)

(assert (=> b!412159 (=> (not res!239373) (not e!246663))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15219 0))(
  ( (V!15220 (val!5337 Int)) )
))
(declare-datatypes ((ValueCell!4949 0))(
  ( (ValueCellFull!4949 (v!7580 V!15219)) (EmptyCell!4949) )
))
(declare-datatypes ((array!25013 0))(
  ( (array!25014 (arr!11953 (Array (_ BitVec 32) ValueCell!4949)) (size!12305 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25013)

(assert (=> b!412159 (= res!239373 (and (= (size!12305 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12304 _keys!709) (size!12305 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!412160 () Bool)

(declare-fun e!246664 () Bool)

(declare-fun e!246662 () Bool)

(assert (=> b!412160 (= e!246664 (and e!246662 mapRes!17499))))

(declare-fun condMapEmpty!17499 () Bool)

(declare-fun mapDefault!17499 () ValueCell!4949)

