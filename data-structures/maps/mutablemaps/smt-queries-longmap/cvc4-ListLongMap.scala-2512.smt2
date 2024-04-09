; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38902 () Bool)

(assert start!38902)

(declare-fun res!234873 () Bool)

(declare-fun e!244215 () Bool)

(assert (=> start!38902 (=> (not res!234873) (not e!244215))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24483 0))(
  ( (array!24484 (arr!11688 (Array (_ BitVec 32) (_ BitVec 64))) (size!12040 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24483)

(assert (=> start!38902 (= res!234873 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12040 _keys!709))))))

(assert (=> start!38902 e!244215))

(assert (=> start!38902 true))

(declare-datatypes ((V!14855 0))(
  ( (V!14856 (val!5201 Int)) )
))
(declare-datatypes ((ValueCell!4813 0))(
  ( (ValueCellFull!4813 (v!7444 V!14855)) (EmptyCell!4813) )
))
(declare-datatypes ((array!24485 0))(
  ( (array!24486 (arr!11689 (Array (_ BitVec 32) ValueCell!4813)) (size!12041 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24485)

(declare-fun e!244219 () Bool)

(declare-fun array_inv!8538 (array!24485) Bool)

(assert (=> start!38902 (and (array_inv!8538 _values!549) e!244219)))

(declare-fun array_inv!8539 (array!24483) Bool)

(assert (=> start!38902 (array_inv!8539 _keys!709)))

(declare-fun b!406430 () Bool)

(declare-fun res!234882 () Bool)

(assert (=> b!406430 (=> (not res!234882) (not e!244215))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406430 (= res!234882 (or (= (select (arr!11688 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11688 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!406431 () Bool)

(declare-fun e!244214 () Bool)

(assert (=> b!406431 (= e!244214 false)))

(declare-fun lt!188481 () Bool)

(declare-fun lt!188480 () array!24483)

(declare-datatypes ((List!6764 0))(
  ( (Nil!6761) (Cons!6760 (h!7616 (_ BitVec 64)) (t!11946 List!6764)) )
))
(declare-fun arrayNoDuplicates!0 (array!24483 (_ BitVec 32) List!6764) Bool)

(assert (=> b!406431 (= lt!188481 (arrayNoDuplicates!0 lt!188480 #b00000000000000000000000000000000 Nil!6761))))

(declare-fun b!406432 () Bool)

(declare-fun res!234880 () Bool)

(assert (=> b!406432 (=> (not res!234880) (not e!244215))))

(assert (=> b!406432 (= res!234880 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6761))))

(declare-fun mapIsEmpty!17091 () Bool)

(declare-fun mapRes!17091 () Bool)

(assert (=> mapIsEmpty!17091 mapRes!17091))

(declare-fun b!406433 () Bool)

(declare-fun res!234879 () Bool)

(assert (=> b!406433 (=> (not res!234879) (not e!244215))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!406433 (= res!234879 (validKeyInArray!0 k!794))))

(declare-fun b!406434 () Bool)

(declare-fun res!234874 () Bool)

(assert (=> b!406434 (=> (not res!234874) (not e!244215))))

(declare-fun arrayContainsKey!0 (array!24483 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!406434 (= res!234874 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!406435 () Bool)

(assert (=> b!406435 (= e!244215 e!244214)))

(declare-fun res!234876 () Bool)

(assert (=> b!406435 (=> (not res!234876) (not e!244214))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24483 (_ BitVec 32)) Bool)

(assert (=> b!406435 (= res!234876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188480 mask!1025))))

(assert (=> b!406435 (= lt!188480 (array!24484 (store (arr!11688 _keys!709) i!563 k!794) (size!12040 _keys!709)))))

(declare-fun mapNonEmpty!17091 () Bool)

(declare-fun tp!33210 () Bool)

(declare-fun e!244217 () Bool)

(assert (=> mapNonEmpty!17091 (= mapRes!17091 (and tp!33210 e!244217))))

(declare-fun mapKey!17091 () (_ BitVec 32))

(declare-fun mapValue!17091 () ValueCell!4813)

(declare-fun mapRest!17091 () (Array (_ BitVec 32) ValueCell!4813))

(assert (=> mapNonEmpty!17091 (= (arr!11689 _values!549) (store mapRest!17091 mapKey!17091 mapValue!17091))))

(declare-fun b!406436 () Bool)

(declare-fun e!244218 () Bool)

(declare-fun tp_is_empty!10313 () Bool)

(assert (=> b!406436 (= e!244218 tp_is_empty!10313)))

(declare-fun b!406437 () Bool)

(declare-fun res!234877 () Bool)

(assert (=> b!406437 (=> (not res!234877) (not e!244215))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!406437 (= res!234877 (and (= (size!12041 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12040 _keys!709) (size!12041 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!406438 () Bool)

(assert (=> b!406438 (= e!244217 tp_is_empty!10313)))

(declare-fun b!406439 () Bool)

(declare-fun res!234881 () Bool)

(assert (=> b!406439 (=> (not res!234881) (not e!244215))))

(assert (=> b!406439 (= res!234881 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12040 _keys!709))))))

(declare-fun b!406440 () Bool)

(assert (=> b!406440 (= e!244219 (and e!244218 mapRes!17091))))

(declare-fun condMapEmpty!17091 () Bool)

(declare-fun mapDefault!17091 () ValueCell!4813)

