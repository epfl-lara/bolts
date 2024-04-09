; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38458 () Bool)

(assert start!38458)

(declare-fun mapNonEmpty!16425 () Bool)

(declare-fun mapRes!16425 () Bool)

(declare-fun tp!32220 () Bool)

(declare-fun e!239898 () Bool)

(assert (=> mapNonEmpty!16425 (= mapRes!16425 (and tp!32220 e!239898))))

(declare-datatypes ((V!14263 0))(
  ( (V!14264 (val!4979 Int)) )
))
(declare-datatypes ((ValueCell!4591 0))(
  ( (ValueCellFull!4591 (v!7222 V!14263)) (EmptyCell!4591) )
))
(declare-datatypes ((array!23625 0))(
  ( (array!23626 (arr!11259 (Array (_ BitVec 32) ValueCell!4591)) (size!11611 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23625)

(declare-fun mapKey!16425 () (_ BitVec 32))

(declare-fun mapValue!16425 () ValueCell!4591)

(declare-fun mapRest!16425 () (Array (_ BitVec 32) ValueCell!4591))

(assert (=> mapNonEmpty!16425 (= (arr!11259 _values!549) (store mapRest!16425 mapKey!16425 mapValue!16425))))

(declare-fun b!396476 () Bool)

(declare-fun res!227565 () Bool)

(declare-fun e!239897 () Bool)

(assert (=> b!396476 (=> (not res!227565) (not e!239897))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!396476 (= res!227565 (validMask!0 mask!1025))))

(declare-fun b!396477 () Bool)

(declare-fun res!227572 () Bool)

(assert (=> b!396477 (=> (not res!227572) (not e!239897))))

(declare-datatypes ((array!23627 0))(
  ( (array!23628 (arr!11260 (Array (_ BitVec 32) (_ BitVec 64))) (size!11612 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23627)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23627 (_ BitVec 32)) Bool)

(assert (=> b!396477 (= res!227572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!396478 () Bool)

(declare-fun res!227569 () Bool)

(assert (=> b!396478 (=> (not res!227569) (not e!239897))))

(declare-datatypes ((List!6496 0))(
  ( (Nil!6493) (Cons!6492 (h!7348 (_ BitVec 64)) (t!11678 List!6496)) )
))
(declare-fun arrayNoDuplicates!0 (array!23627 (_ BitVec 32) List!6496) Bool)

(assert (=> b!396478 (= res!227569 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6493))))

(declare-fun b!396479 () Bool)

(declare-fun e!239896 () Bool)

(assert (=> b!396479 (= e!239897 e!239896)))

(declare-fun res!227566 () Bool)

(assert (=> b!396479 (=> (not res!227566) (not e!239896))))

(declare-fun lt!187148 () array!23627)

(assert (=> b!396479 (= res!227566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187148 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!396479 (= lt!187148 (array!23628 (store (arr!11260 _keys!709) i!563 k!794) (size!11612 _keys!709)))))

(declare-fun res!227571 () Bool)

(assert (=> start!38458 (=> (not res!227571) (not e!239897))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38458 (= res!227571 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11612 _keys!709))))))

(assert (=> start!38458 e!239897))

(assert (=> start!38458 true))

(declare-fun e!239895 () Bool)

(declare-fun array_inv!8244 (array!23625) Bool)

(assert (=> start!38458 (and (array_inv!8244 _values!549) e!239895)))

(declare-fun array_inv!8245 (array!23627) Bool)

(assert (=> start!38458 (array_inv!8245 _keys!709)))

(declare-fun b!396480 () Bool)

(declare-fun res!227567 () Bool)

(assert (=> b!396480 (=> (not res!227567) (not e!239897))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!396480 (= res!227567 (validKeyInArray!0 k!794))))

(declare-fun b!396481 () Bool)

(declare-fun res!227573 () Bool)

(assert (=> b!396481 (=> (not res!227573) (not e!239897))))

(assert (=> b!396481 (= res!227573 (or (= (select (arr!11260 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11260 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!396482 () Bool)

(declare-fun res!227570 () Bool)

(assert (=> b!396482 (=> (not res!227570) (not e!239897))))

(declare-fun arrayContainsKey!0 (array!23627 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!396482 (= res!227570 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!396483 () Bool)

(declare-fun tp_is_empty!9869 () Bool)

(assert (=> b!396483 (= e!239898 tp_is_empty!9869)))

(declare-fun b!396484 () Bool)

(declare-fun e!239899 () Bool)

(assert (=> b!396484 (= e!239899 tp_is_empty!9869)))

(declare-fun b!396485 () Bool)

(declare-fun res!227574 () Bool)

(assert (=> b!396485 (=> (not res!227574) (not e!239897))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!396485 (= res!227574 (and (= (size!11611 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11612 _keys!709) (size!11611 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!396486 () Bool)

(assert (=> b!396486 (= e!239895 (and e!239899 mapRes!16425))))

(declare-fun condMapEmpty!16425 () Bool)

(declare-fun mapDefault!16425 () ValueCell!4591)

