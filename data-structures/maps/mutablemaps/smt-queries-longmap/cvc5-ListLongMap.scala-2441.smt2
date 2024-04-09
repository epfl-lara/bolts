; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38472 () Bool)

(assert start!38472)

(declare-fun b!396749 () Bool)

(declare-fun res!227784 () Bool)

(declare-fun e!240024 () Bool)

(assert (=> b!396749 (=> (not res!227784) (not e!240024))))

(declare-datatypes ((array!23651 0))(
  ( (array!23652 (arr!11272 (Array (_ BitVec 32) (_ BitVec 64))) (size!11624 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23651)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23651 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!396749 (= res!227784 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!396750 () Bool)

(declare-fun e!240021 () Bool)

(assert (=> b!396750 (= e!240021 false)))

(declare-fun lt!187191 () Bool)

(declare-fun lt!187190 () array!23651)

(declare-datatypes ((List!6502 0))(
  ( (Nil!6499) (Cons!6498 (h!7354 (_ BitVec 64)) (t!11684 List!6502)) )
))
(declare-fun arrayNoDuplicates!0 (array!23651 (_ BitVec 32) List!6502) Bool)

(assert (=> b!396750 (= lt!187191 (arrayNoDuplicates!0 lt!187190 #b00000000000000000000000000000000 Nil!6499))))

(declare-fun b!396751 () Bool)

(declare-fun res!227776 () Bool)

(assert (=> b!396751 (=> (not res!227776) (not e!240024))))

(assert (=> b!396751 (= res!227776 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6499))))

(declare-fun b!396752 () Bool)

(declare-fun res!227782 () Bool)

(assert (=> b!396752 (=> (not res!227782) (not e!240024))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!396752 (= res!227782 (or (= (select (arr!11272 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11272 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!227783 () Bool)

(assert (=> start!38472 (=> (not res!227783) (not e!240024))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38472 (= res!227783 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11624 _keys!709))))))

(assert (=> start!38472 e!240024))

(assert (=> start!38472 true))

(declare-datatypes ((V!14283 0))(
  ( (V!14284 (val!4986 Int)) )
))
(declare-datatypes ((ValueCell!4598 0))(
  ( (ValueCellFull!4598 (v!7229 V!14283)) (EmptyCell!4598) )
))
(declare-datatypes ((array!23653 0))(
  ( (array!23654 (arr!11273 (Array (_ BitVec 32) ValueCell!4598)) (size!11625 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23653)

(declare-fun e!240022 () Bool)

(declare-fun array_inv!8252 (array!23653) Bool)

(assert (=> start!38472 (and (array_inv!8252 _values!549) e!240022)))

(declare-fun array_inv!8253 (array!23651) Bool)

(assert (=> start!38472 (array_inv!8253 _keys!709)))

(declare-fun b!396753 () Bool)

(declare-fun res!227781 () Bool)

(assert (=> b!396753 (=> (not res!227781) (not e!240024))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!396753 (= res!227781 (validMask!0 mask!1025))))

(declare-fun b!396754 () Bool)

(declare-fun e!240023 () Bool)

(declare-fun tp_is_empty!9883 () Bool)

(assert (=> b!396754 (= e!240023 tp_is_empty!9883)))

(declare-fun b!396755 () Bool)

(declare-fun e!240020 () Bool)

(assert (=> b!396755 (= e!240020 tp_is_empty!9883)))

(declare-fun mapIsEmpty!16446 () Bool)

(declare-fun mapRes!16446 () Bool)

(assert (=> mapIsEmpty!16446 mapRes!16446))

(declare-fun b!396756 () Bool)

(declare-fun res!227778 () Bool)

(assert (=> b!396756 (=> (not res!227778) (not e!240024))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23651 (_ BitVec 32)) Bool)

(assert (=> b!396756 (= res!227778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!396757 () Bool)

(declare-fun res!227777 () Bool)

(assert (=> b!396757 (=> (not res!227777) (not e!240024))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!396757 (= res!227777 (and (= (size!11625 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11624 _keys!709) (size!11625 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!16446 () Bool)

(declare-fun tp!32241 () Bool)

(assert (=> mapNonEmpty!16446 (= mapRes!16446 (and tp!32241 e!240020))))

(declare-fun mapRest!16446 () (Array (_ BitVec 32) ValueCell!4598))

(declare-fun mapKey!16446 () (_ BitVec 32))

(declare-fun mapValue!16446 () ValueCell!4598)

(assert (=> mapNonEmpty!16446 (= (arr!11273 _values!549) (store mapRest!16446 mapKey!16446 mapValue!16446))))

(declare-fun b!396758 () Bool)

(assert (=> b!396758 (= e!240022 (and e!240023 mapRes!16446))))

(declare-fun condMapEmpty!16446 () Bool)

(declare-fun mapDefault!16446 () ValueCell!4598)

