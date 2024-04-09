; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38998 () Bool)

(assert start!38998)

(declare-fun mapNonEmpty!17235 () Bool)

(declare-fun mapRes!17235 () Bool)

(declare-fun tp!33354 () Bool)

(declare-fun e!245081 () Bool)

(assert (=> mapNonEmpty!17235 (= mapRes!17235 (and tp!33354 e!245081))))

(declare-datatypes ((V!14983 0))(
  ( (V!14984 (val!5249 Int)) )
))
(declare-datatypes ((ValueCell!4861 0))(
  ( (ValueCellFull!4861 (v!7492 V!14983)) (EmptyCell!4861) )
))
(declare-fun mapValue!17235 () ValueCell!4861)

(declare-fun mapRest!17235 () (Array (_ BitVec 32) ValueCell!4861))

(declare-datatypes ((array!24673 0))(
  ( (array!24674 (arr!11783 (Array (_ BitVec 32) ValueCell!4861)) (size!12135 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24673)

(declare-fun mapKey!17235 () (_ BitVec 32))

(assert (=> mapNonEmpty!17235 (= (arr!11783 _values!549) (store mapRest!17235 mapKey!17235 mapValue!17235))))

(declare-fun b!408302 () Bool)

(declare-fun res!236315 () Bool)

(declare-fun e!245080 () Bool)

(assert (=> b!408302 (=> (not res!236315) (not e!245080))))

(declare-datatypes ((array!24675 0))(
  ( (array!24676 (arr!11784 (Array (_ BitVec 32) (_ BitVec 64))) (size!12136 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24675)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!408302 (= res!236315 (and (= (size!12135 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12136 _keys!709) (size!12135 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!408303 () Bool)

(declare-fun e!245078 () Bool)

(declare-fun tp_is_empty!10409 () Bool)

(assert (=> b!408303 (= e!245078 tp_is_empty!10409)))

(declare-fun res!236320 () Bool)

(assert (=> start!38998 (=> (not res!236320) (not e!245080))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38998 (= res!236320 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12136 _keys!709))))))

(assert (=> start!38998 e!245080))

(assert (=> start!38998 true))

(declare-fun e!245083 () Bool)

(declare-fun array_inv!8606 (array!24673) Bool)

(assert (=> start!38998 (and (array_inv!8606 _values!549) e!245083)))

(declare-fun array_inv!8607 (array!24675) Bool)

(assert (=> start!38998 (array_inv!8607 _keys!709)))

(declare-fun mapIsEmpty!17235 () Bool)

(assert (=> mapIsEmpty!17235 mapRes!17235))

(declare-fun b!408304 () Bool)

(declare-fun res!236321 () Bool)

(assert (=> b!408304 (=> (not res!236321) (not e!245080))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!408304 (= res!236321 (validMask!0 mask!1025))))

(declare-fun b!408305 () Bool)

(declare-fun res!236318 () Bool)

(assert (=> b!408305 (=> (not res!236318) (not e!245080))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!408305 (= res!236318 (or (= (select (arr!11784 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11784 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!408306 () Bool)

(declare-fun e!245082 () Bool)

(assert (=> b!408306 (= e!245080 e!245082)))

(declare-fun res!236317 () Bool)

(assert (=> b!408306 (=> (not res!236317) (not e!245082))))

(declare-fun lt!188769 () array!24675)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24675 (_ BitVec 32)) Bool)

(assert (=> b!408306 (= res!236317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188769 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!408306 (= lt!188769 (array!24676 (store (arr!11784 _keys!709) i!563 k!794) (size!12136 _keys!709)))))

(declare-fun b!408307 () Bool)

(assert (=> b!408307 (= e!245081 tp_is_empty!10409)))

(declare-fun b!408308 () Bool)

(declare-fun res!236314 () Bool)

(assert (=> b!408308 (=> (not res!236314) (not e!245080))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!408308 (= res!236314 (validKeyInArray!0 k!794))))

(declare-fun b!408309 () Bool)

(assert (=> b!408309 (= e!245083 (and e!245078 mapRes!17235))))

(declare-fun condMapEmpty!17235 () Bool)

(declare-fun mapDefault!17235 () ValueCell!4861)

