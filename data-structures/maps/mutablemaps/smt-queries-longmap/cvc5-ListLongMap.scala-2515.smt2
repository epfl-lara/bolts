; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38916 () Bool)

(assert start!38916)

(declare-fun b!406703 () Bool)

(declare-fun res!235090 () Bool)

(declare-fun e!244343 () Bool)

(assert (=> b!406703 (=> (not res!235090) (not e!244343))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24511 0))(
  ( (array!24512 (arr!11702 (Array (_ BitVec 32) (_ BitVec 64))) (size!12054 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24511)

(assert (=> b!406703 (= res!235090 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12054 _keys!709))))))

(declare-fun b!406704 () Bool)

(declare-fun res!235091 () Bool)

(assert (=> b!406704 (=> (not res!235091) (not e!244343))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!406704 (= res!235091 (validMask!0 mask!1025))))

(declare-fun res!235089 () Bool)

(assert (=> start!38916 (=> (not res!235089) (not e!244343))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38916 (= res!235089 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12054 _keys!709))))))

(assert (=> start!38916 e!244343))

(assert (=> start!38916 true))

(declare-datatypes ((V!14875 0))(
  ( (V!14876 (val!5208 Int)) )
))
(declare-datatypes ((ValueCell!4820 0))(
  ( (ValueCellFull!4820 (v!7451 V!14875)) (EmptyCell!4820) )
))
(declare-datatypes ((array!24513 0))(
  ( (array!24514 (arr!11703 (Array (_ BitVec 32) ValueCell!4820)) (size!12055 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24513)

(declare-fun e!244345 () Bool)

(declare-fun array_inv!8550 (array!24513) Bool)

(assert (=> start!38916 (and (array_inv!8550 _values!549) e!244345)))

(declare-fun array_inv!8551 (array!24511) Bool)

(assert (=> start!38916 (array_inv!8551 _keys!709)))

(declare-fun b!406705 () Bool)

(declare-fun res!235092 () Bool)

(assert (=> b!406705 (=> (not res!235092) (not e!244343))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!406705 (= res!235092 (and (= (size!12055 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12054 _keys!709) (size!12055 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!406706 () Bool)

(declare-fun res!235085 () Bool)

(assert (=> b!406706 (=> (not res!235085) (not e!244343))))

(declare-datatypes ((List!6771 0))(
  ( (Nil!6768) (Cons!6767 (h!7623 (_ BitVec 64)) (t!11953 List!6771)) )
))
(declare-fun arrayNoDuplicates!0 (array!24511 (_ BitVec 32) List!6771) Bool)

(assert (=> b!406706 (= res!235085 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6768))))

(declare-fun b!406707 () Bool)

(declare-fun e!244342 () Bool)

(declare-fun tp_is_empty!10327 () Bool)

(assert (=> b!406707 (= e!244342 tp_is_empty!10327)))

(declare-fun b!406708 () Bool)

(declare-fun res!235088 () Bool)

(assert (=> b!406708 (=> (not res!235088) (not e!244343))))

(assert (=> b!406708 (= res!235088 (or (= (select (arr!11702 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11702 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!406709 () Bool)

(declare-fun e!244344 () Bool)

(assert (=> b!406709 (= e!244344 tp_is_empty!10327)))

(declare-fun b!406710 () Bool)

(declare-fun res!235083 () Bool)

(assert (=> b!406710 (=> (not res!235083) (not e!244343))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24511 (_ BitVec 32)) Bool)

(assert (=> b!406710 (= res!235083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!406711 () Bool)

(declare-fun e!244340 () Bool)

(assert (=> b!406711 (= e!244340 false)))

(declare-fun lt!188523 () Bool)

(declare-fun lt!188522 () array!24511)

(assert (=> b!406711 (= lt!188523 (arrayNoDuplicates!0 lt!188522 #b00000000000000000000000000000000 Nil!6768))))

(declare-fun b!406712 () Bool)

(declare-fun res!235084 () Bool)

(assert (=> b!406712 (=> (not res!235084) (not e!244343))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!406712 (= res!235084 (validKeyInArray!0 k!794))))

(declare-fun b!406713 () Bool)

(assert (=> b!406713 (= e!244343 e!244340)))

(declare-fun res!235087 () Bool)

(assert (=> b!406713 (=> (not res!235087) (not e!244340))))

(assert (=> b!406713 (= res!235087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188522 mask!1025))))

(assert (=> b!406713 (= lt!188522 (array!24512 (store (arr!11702 _keys!709) i!563 k!794) (size!12054 _keys!709)))))

(declare-fun b!406714 () Bool)

(declare-fun res!235086 () Bool)

(assert (=> b!406714 (=> (not res!235086) (not e!244343))))

(declare-fun arrayContainsKey!0 (array!24511 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!406714 (= res!235086 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17112 () Bool)

(declare-fun mapRes!17112 () Bool)

(assert (=> mapIsEmpty!17112 mapRes!17112))

(declare-fun mapNonEmpty!17112 () Bool)

(declare-fun tp!33231 () Bool)

(assert (=> mapNonEmpty!17112 (= mapRes!17112 (and tp!33231 e!244342))))

(declare-fun mapRest!17112 () (Array (_ BitVec 32) ValueCell!4820))

(declare-fun mapKey!17112 () (_ BitVec 32))

(declare-fun mapValue!17112 () ValueCell!4820)

(assert (=> mapNonEmpty!17112 (= (arr!11703 _values!549) (store mapRest!17112 mapKey!17112 mapValue!17112))))

(declare-fun b!406715 () Bool)

(assert (=> b!406715 (= e!244345 (and e!244344 mapRes!17112))))

(declare-fun condMapEmpty!17112 () Bool)

(declare-fun mapDefault!17112 () ValueCell!4820)

