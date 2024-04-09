; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38532 () Bool)

(assert start!38532)

(declare-fun b!397919 () Bool)

(declare-fun e!240563 () Bool)

(declare-fun tp_is_empty!9943 () Bool)

(assert (=> b!397919 (= e!240563 tp_is_empty!9943)))

(declare-fun b!397920 () Bool)

(declare-fun res!228675 () Bool)

(declare-fun e!240564 () Bool)

(assert (=> b!397920 (=> (not res!228675) (not e!240564))))

(declare-datatypes ((array!23769 0))(
  ( (array!23770 (arr!11331 (Array (_ BitVec 32) (_ BitVec 64))) (size!11683 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23769)

(declare-datatypes ((List!6525 0))(
  ( (Nil!6522) (Cons!6521 (h!7377 (_ BitVec 64)) (t!11707 List!6525)) )
))
(declare-fun arrayNoDuplicates!0 (array!23769 (_ BitVec 32) List!6525) Bool)

(assert (=> b!397920 (= res!228675 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6522))))

(declare-fun b!397921 () Bool)

(declare-fun res!228677 () Bool)

(assert (=> b!397921 (=> (not res!228677) (not e!240564))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23769 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397921 (= res!228677 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!397922 () Bool)

(declare-fun res!228680 () Bool)

(assert (=> b!397922 (=> (not res!228680) (not e!240564))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!397922 (= res!228680 (validKeyInArray!0 k!794))))

(declare-fun b!397923 () Bool)

(declare-fun e!240560 () Bool)

(assert (=> b!397923 (= e!240560 false)))

(declare-fun lt!187371 () Bool)

(declare-fun lt!187370 () array!23769)

(assert (=> b!397923 (= lt!187371 (arrayNoDuplicates!0 lt!187370 #b00000000000000000000000000000000 Nil!6522))))

(declare-fun b!397924 () Bool)

(declare-fun res!228682 () Bool)

(assert (=> b!397924 (=> (not res!228682) (not e!240564))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397924 (= res!228682 (or (= (select (arr!11331 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11331 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!397925 () Bool)

(declare-fun res!228679 () Bool)

(assert (=> b!397925 (=> (not res!228679) (not e!240564))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14363 0))(
  ( (V!14364 (val!5016 Int)) )
))
(declare-datatypes ((ValueCell!4628 0))(
  ( (ValueCellFull!4628 (v!7259 V!14363)) (EmptyCell!4628) )
))
(declare-datatypes ((array!23771 0))(
  ( (array!23772 (arr!11332 (Array (_ BitVec 32) ValueCell!4628)) (size!11684 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23771)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!397925 (= res!228679 (and (= (size!11684 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11683 _keys!709) (size!11684 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!397926 () Bool)

(declare-fun e!240561 () Bool)

(assert (=> b!397926 (= e!240561 tp_is_empty!9943)))

(declare-fun b!397927 () Bool)

(declare-fun res!228681 () Bool)

(assert (=> b!397927 (=> (not res!228681) (not e!240564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!397927 (= res!228681 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!16536 () Bool)

(declare-fun mapRes!16536 () Bool)

(assert (=> mapIsEmpty!16536 mapRes!16536))

(declare-fun b!397929 () Bool)

(declare-fun res!228676 () Bool)

(assert (=> b!397929 (=> (not res!228676) (not e!240564))))

(assert (=> b!397929 (= res!228676 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11683 _keys!709))))))

(declare-fun mapNonEmpty!16536 () Bool)

(declare-fun tp!32331 () Bool)

(assert (=> mapNonEmpty!16536 (= mapRes!16536 (and tp!32331 e!240563))))

(declare-fun mapRest!16536 () (Array (_ BitVec 32) ValueCell!4628))

(declare-fun mapKey!16536 () (_ BitVec 32))

(declare-fun mapValue!16536 () ValueCell!4628)

(assert (=> mapNonEmpty!16536 (= (arr!11332 _values!549) (store mapRest!16536 mapKey!16536 mapValue!16536))))

(declare-fun b!397930 () Bool)

(declare-fun res!228678 () Bool)

(assert (=> b!397930 (=> (not res!228678) (not e!240564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23769 (_ BitVec 32)) Bool)

(assert (=> b!397930 (= res!228678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!397931 () Bool)

(declare-fun e!240562 () Bool)

(assert (=> b!397931 (= e!240562 (and e!240561 mapRes!16536))))

(declare-fun condMapEmpty!16536 () Bool)

(declare-fun mapDefault!16536 () ValueCell!4628)

