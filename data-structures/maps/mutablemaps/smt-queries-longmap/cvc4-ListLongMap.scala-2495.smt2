; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38800 () Bool)

(assert start!38800)

(declare-fun b!404441 () Bool)

(declare-fun res!233348 () Bool)

(declare-fun e!243296 () Bool)

(assert (=> b!404441 (=> (not res!233348) (not e!243296))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24285 0))(
  ( (array!24286 (arr!11589 (Array (_ BitVec 32) (_ BitVec 64))) (size!11941 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24285)

(assert (=> b!404441 (= res!233348 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11941 _keys!709))))))

(declare-fun b!404442 () Bool)

(declare-fun res!233349 () Bool)

(assert (=> b!404442 (=> (not res!233349) (not e!243296))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14719 0))(
  ( (V!14720 (val!5150 Int)) )
))
(declare-datatypes ((ValueCell!4762 0))(
  ( (ValueCellFull!4762 (v!7393 V!14719)) (EmptyCell!4762) )
))
(declare-datatypes ((array!24287 0))(
  ( (array!24288 (arr!11590 (Array (_ BitVec 32) ValueCell!4762)) (size!11942 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24287)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!404442 (= res!233349 (and (= (size!11942 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11941 _keys!709) (size!11942 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!16938 () Bool)

(declare-fun mapRes!16938 () Bool)

(assert (=> mapIsEmpty!16938 mapRes!16938))

(declare-fun b!404443 () Bool)

(declare-fun res!233346 () Bool)

(assert (=> b!404443 (=> (not res!233346) (not e!243296))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!404443 (= res!233346 (validKeyInArray!0 k!794))))

(declare-fun b!404444 () Bool)

(declare-fun res!233350 () Bool)

(assert (=> b!404444 (=> (not res!233350) (not e!243296))))

(declare-datatypes ((List!6724 0))(
  ( (Nil!6721) (Cons!6720 (h!7576 (_ BitVec 64)) (t!11906 List!6724)) )
))
(declare-fun arrayNoDuplicates!0 (array!24285 (_ BitVec 32) List!6724) Bool)

(assert (=> b!404444 (= res!233350 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6721))))

(declare-fun b!404445 () Bool)

(declare-fun e!243297 () Bool)

(declare-fun tp_is_empty!10211 () Bool)

(assert (=> b!404445 (= e!243297 tp_is_empty!10211)))

(declare-fun b!404446 () Bool)

(declare-fun e!243298 () Bool)

(assert (=> b!404446 (= e!243296 e!243298)))

(declare-fun res!233343 () Bool)

(assert (=> b!404446 (=> (not res!233343) (not e!243298))))

(declare-fun lt!188174 () array!24285)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24285 (_ BitVec 32)) Bool)

(assert (=> b!404446 (= res!233343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188174 mask!1025))))

(assert (=> b!404446 (= lt!188174 (array!24286 (store (arr!11589 _keys!709) i!563 k!794) (size!11941 _keys!709)))))

(declare-fun b!404447 () Bool)

(declare-fun e!243299 () Bool)

(assert (=> b!404447 (= e!243299 tp_is_empty!10211)))

(declare-fun b!404448 () Bool)

(assert (=> b!404448 (= e!243298 false)))

(declare-fun lt!188175 () Bool)

(assert (=> b!404448 (= lt!188175 (arrayNoDuplicates!0 lt!188174 #b00000000000000000000000000000000 Nil!6721))))

(declare-fun b!404449 () Bool)

(declare-fun res!233351 () Bool)

(assert (=> b!404449 (=> (not res!233351) (not e!243296))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!404449 (= res!233351 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!16938 () Bool)

(declare-fun tp!33057 () Bool)

(assert (=> mapNonEmpty!16938 (= mapRes!16938 (and tp!33057 e!243297))))

(declare-fun mapKey!16938 () (_ BitVec 32))

(declare-fun mapRest!16938 () (Array (_ BitVec 32) ValueCell!4762))

(declare-fun mapValue!16938 () ValueCell!4762)

(assert (=> mapNonEmpty!16938 (= (arr!11590 _values!549) (store mapRest!16938 mapKey!16938 mapValue!16938))))

(declare-fun res!233352 () Bool)

(assert (=> start!38800 (=> (not res!233352) (not e!243296))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38800 (= res!233352 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11941 _keys!709))))))

(assert (=> start!38800 e!243296))

(assert (=> start!38800 true))

(declare-fun e!243300 () Bool)

(declare-fun array_inv!8468 (array!24287) Bool)

(assert (=> start!38800 (and (array_inv!8468 _values!549) e!243300)))

(declare-fun array_inv!8469 (array!24285) Bool)

(assert (=> start!38800 (array_inv!8469 _keys!709)))

(declare-fun b!404450 () Bool)

(declare-fun res!233344 () Bool)

(assert (=> b!404450 (=> (not res!233344) (not e!243296))))

(assert (=> b!404450 (= res!233344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!404451 () Bool)

(declare-fun res!233347 () Bool)

(assert (=> b!404451 (=> (not res!233347) (not e!243296))))

(assert (=> b!404451 (= res!233347 (or (= (select (arr!11589 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11589 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!404452 () Bool)

(assert (=> b!404452 (= e!243300 (and e!243299 mapRes!16938))))

(declare-fun condMapEmpty!16938 () Bool)

(declare-fun mapDefault!16938 () ValueCell!4762)

