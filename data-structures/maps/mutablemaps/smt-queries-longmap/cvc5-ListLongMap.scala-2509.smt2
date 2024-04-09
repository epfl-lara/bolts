; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38880 () Bool)

(assert start!38880)

(declare-fun b!406002 () Bool)

(declare-fun e!244018 () Bool)

(declare-fun e!244021 () Bool)

(assert (=> b!406002 (= e!244018 e!244021)))

(declare-fun res!234545 () Bool)

(assert (=> b!406002 (=> (not res!234545) (not e!244021))))

(declare-datatypes ((array!24439 0))(
  ( (array!24440 (arr!11666 (Array (_ BitVec 32) (_ BitVec 64))) (size!12018 (_ BitVec 32))) )
))
(declare-fun lt!188415 () array!24439)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24439 (_ BitVec 32)) Bool)

(assert (=> b!406002 (= res!234545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188415 mask!1025))))

(declare-fun _keys!709 () array!24439)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406002 (= lt!188415 (array!24440 (store (arr!11666 _keys!709) i!563 k!794) (size!12018 _keys!709)))))

(declare-fun b!406003 () Bool)

(declare-fun e!244020 () Bool)

(declare-fun tp_is_empty!10291 () Bool)

(assert (=> b!406003 (= e!244020 tp_is_empty!10291)))

(declare-fun b!406004 () Bool)

(declare-fun res!234544 () Bool)

(assert (=> b!406004 (=> (not res!234544) (not e!244018))))

(assert (=> b!406004 (= res!234544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!406005 () Bool)

(declare-fun res!234552 () Bool)

(assert (=> b!406005 (=> (not res!234552) (not e!244018))))

(assert (=> b!406005 (= res!234552 (or (= (select (arr!11666 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11666 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!406006 () Bool)

(declare-fun e!244016 () Bool)

(assert (=> b!406006 (= e!244016 tp_is_empty!10291)))

(declare-fun b!406007 () Bool)

(declare-fun res!234550 () Bool)

(assert (=> b!406007 (=> (not res!234550) (not e!244018))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14827 0))(
  ( (V!14828 (val!5190 Int)) )
))
(declare-datatypes ((ValueCell!4802 0))(
  ( (ValueCellFull!4802 (v!7433 V!14827)) (EmptyCell!4802) )
))
(declare-datatypes ((array!24441 0))(
  ( (array!24442 (arr!11667 (Array (_ BitVec 32) ValueCell!4802)) (size!12019 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24441)

(assert (=> b!406007 (= res!234550 (and (= (size!12019 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12018 _keys!709) (size!12019 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!17058 () Bool)

(declare-fun mapRes!17058 () Bool)

(assert (=> mapIsEmpty!17058 mapRes!17058))

(declare-fun b!406008 () Bool)

(declare-fun res!234549 () Bool)

(assert (=> b!406008 (=> (not res!234549) (not e!244018))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!406008 (= res!234549 (validKeyInArray!0 k!794))))

(declare-fun b!406001 () Bool)

(declare-fun res!234546 () Bool)

(assert (=> b!406001 (=> (not res!234546) (not e!244018))))

(declare-fun arrayContainsKey!0 (array!24439 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!406001 (= res!234546 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!234543 () Bool)

(assert (=> start!38880 (=> (not res!234543) (not e!244018))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38880 (= res!234543 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12018 _keys!709))))))

(assert (=> start!38880 e!244018))

(assert (=> start!38880 true))

(declare-fun e!244017 () Bool)

(declare-fun array_inv!8524 (array!24441) Bool)

(assert (=> start!38880 (and (array_inv!8524 _values!549) e!244017)))

(declare-fun array_inv!8525 (array!24439) Bool)

(assert (=> start!38880 (array_inv!8525 _keys!709)))

(declare-fun mapNonEmpty!17058 () Bool)

(declare-fun tp!33177 () Bool)

(assert (=> mapNonEmpty!17058 (= mapRes!17058 (and tp!33177 e!244016))))

(declare-fun mapValue!17058 () ValueCell!4802)

(declare-fun mapRest!17058 () (Array (_ BitVec 32) ValueCell!4802))

(declare-fun mapKey!17058 () (_ BitVec 32))

(assert (=> mapNonEmpty!17058 (= (arr!11667 _values!549) (store mapRest!17058 mapKey!17058 mapValue!17058))))

(declare-fun b!406009 () Bool)

(declare-fun res!234547 () Bool)

(assert (=> b!406009 (=> (not res!234547) (not e!244018))))

(assert (=> b!406009 (= res!234547 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12018 _keys!709))))))

(declare-fun b!406010 () Bool)

(declare-fun res!234551 () Bool)

(assert (=> b!406010 (=> (not res!234551) (not e!244018))))

(declare-datatypes ((List!6756 0))(
  ( (Nil!6753) (Cons!6752 (h!7608 (_ BitVec 64)) (t!11938 List!6756)) )
))
(declare-fun arrayNoDuplicates!0 (array!24439 (_ BitVec 32) List!6756) Bool)

(assert (=> b!406010 (= res!234551 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6753))))

(declare-fun b!406011 () Bool)

(assert (=> b!406011 (= e!244021 false)))

(declare-fun lt!188414 () Bool)

(assert (=> b!406011 (= lt!188414 (arrayNoDuplicates!0 lt!188415 #b00000000000000000000000000000000 Nil!6753))))

(declare-fun b!406012 () Bool)

(assert (=> b!406012 (= e!244017 (and e!244020 mapRes!17058))))

(declare-fun condMapEmpty!17058 () Bool)

(declare-fun mapDefault!17058 () ValueCell!4802)

