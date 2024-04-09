; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38466 () Bool)

(assert start!38466)

(declare-fun b!396632 () Bool)

(declare-fun res!227693 () Bool)

(declare-fun e!239971 () Bool)

(assert (=> b!396632 (=> (not res!227693) (not e!239971))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!396632 (= res!227693 (validMask!0 mask!1025))))

(declare-fun b!396633 () Bool)

(declare-fun e!239967 () Bool)

(declare-fun tp_is_empty!9877 () Bool)

(assert (=> b!396633 (= e!239967 tp_is_empty!9877)))

(declare-fun b!396634 () Bool)

(declare-fun res!227689 () Bool)

(assert (=> b!396634 (=> (not res!227689) (not e!239971))))

(declare-datatypes ((array!23639 0))(
  ( (array!23640 (arr!11266 (Array (_ BitVec 32) (_ BitVec 64))) (size!11618 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23639)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14275 0))(
  ( (V!14276 (val!4983 Int)) )
))
(declare-datatypes ((ValueCell!4595 0))(
  ( (ValueCellFull!4595 (v!7226 V!14275)) (EmptyCell!4595) )
))
(declare-datatypes ((array!23641 0))(
  ( (array!23642 (arr!11267 (Array (_ BitVec 32) ValueCell!4595)) (size!11619 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23641)

(assert (=> b!396634 (= res!227689 (and (= (size!11619 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11618 _keys!709) (size!11619 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!396635 () Bool)

(declare-fun res!227686 () Bool)

(assert (=> b!396635 (=> (not res!227686) (not e!239971))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!396635 (= res!227686 (validKeyInArray!0 k!794))))

(declare-fun b!396636 () Bool)

(declare-fun e!239969 () Bool)

(assert (=> b!396636 (= e!239969 false)))

(declare-fun lt!187172 () Bool)

(declare-fun lt!187173 () array!23639)

(declare-datatypes ((List!6499 0))(
  ( (Nil!6496) (Cons!6495 (h!7351 (_ BitVec 64)) (t!11681 List!6499)) )
))
(declare-fun arrayNoDuplicates!0 (array!23639 (_ BitVec 32) List!6499) Bool)

(assert (=> b!396636 (= lt!187172 (arrayNoDuplicates!0 lt!187173 #b00000000000000000000000000000000 Nil!6496))))

(declare-fun mapIsEmpty!16437 () Bool)

(declare-fun mapRes!16437 () Bool)

(assert (=> mapIsEmpty!16437 mapRes!16437))

(declare-fun b!396637 () Bool)

(assert (=> b!396637 (= e!239971 e!239969)))

(declare-fun res!227694 () Bool)

(assert (=> b!396637 (=> (not res!227694) (not e!239969))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23639 (_ BitVec 32)) Bool)

(assert (=> b!396637 (= res!227694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187173 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!396637 (= lt!187173 (array!23640 (store (arr!11266 _keys!709) i!563 k!794) (size!11618 _keys!709)))))

(declare-fun mapNonEmpty!16437 () Bool)

(declare-fun tp!32232 () Bool)

(declare-fun e!239968 () Bool)

(assert (=> mapNonEmpty!16437 (= mapRes!16437 (and tp!32232 e!239968))))

(declare-fun mapValue!16437 () ValueCell!4595)

(declare-fun mapRest!16437 () (Array (_ BitVec 32) ValueCell!4595))

(declare-fun mapKey!16437 () (_ BitVec 32))

(assert (=> mapNonEmpty!16437 (= (arr!11267 _values!549) (store mapRest!16437 mapKey!16437 mapValue!16437))))

(declare-fun b!396638 () Bool)

(declare-fun res!227687 () Bool)

(assert (=> b!396638 (=> (not res!227687) (not e!239971))))

(assert (=> b!396638 (= res!227687 (or (= (select (arr!11266 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11266 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!396640 () Bool)

(declare-fun res!227690 () Bool)

(assert (=> b!396640 (=> (not res!227690) (not e!239971))))

(declare-fun arrayContainsKey!0 (array!23639 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!396640 (= res!227690 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!396641 () Bool)

(declare-fun e!239966 () Bool)

(assert (=> b!396641 (= e!239966 (and e!239967 mapRes!16437))))

(declare-fun condMapEmpty!16437 () Bool)

(declare-fun mapDefault!16437 () ValueCell!4595)

