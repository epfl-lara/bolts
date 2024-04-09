; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38538 () Bool)

(assert start!38538)

(declare-fun mapIsEmpty!16545 () Bool)

(declare-fun mapRes!16545 () Bool)

(assert (=> mapIsEmpty!16545 mapRes!16545))

(declare-fun b!398036 () Bool)

(declare-fun res!228767 () Bool)

(declare-fun e!240614 () Bool)

(assert (=> b!398036 (=> (not res!228767) (not e!240614))))

(declare-datatypes ((array!23779 0))(
  ( (array!23780 (arr!11336 (Array (_ BitVec 32) (_ BitVec 64))) (size!11688 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23779)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23779 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!398036 (= res!228767 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!398037 () Bool)

(declare-fun res!228771 () Bool)

(assert (=> b!398037 (=> (not res!228771) (not e!240614))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!398037 (= res!228771 (validMask!0 mask!1025))))

(declare-fun b!398039 () Bool)

(declare-fun res!228773 () Bool)

(assert (=> b!398039 (=> (not res!228773) (not e!240614))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14371 0))(
  ( (V!14372 (val!5019 Int)) )
))
(declare-datatypes ((ValueCell!4631 0))(
  ( (ValueCellFull!4631 (v!7262 V!14371)) (EmptyCell!4631) )
))
(declare-datatypes ((array!23781 0))(
  ( (array!23782 (arr!11337 (Array (_ BitVec 32) ValueCell!4631)) (size!11689 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23781)

(assert (=> b!398039 (= res!228773 (and (= (size!11689 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11688 _keys!709) (size!11689 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!398040 () Bool)

(declare-fun e!240618 () Bool)

(assert (=> b!398040 (= e!240614 e!240618)))

(declare-fun res!228770 () Bool)

(assert (=> b!398040 (=> (not res!228770) (not e!240618))))

(declare-fun lt!187389 () array!23779)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23779 (_ BitVec 32)) Bool)

(assert (=> b!398040 (= res!228770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187389 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!398040 (= lt!187389 (array!23780 (store (arr!11336 _keys!709) i!563 k!794) (size!11688 _keys!709)))))

(declare-fun b!398041 () Bool)

(assert (=> b!398041 (= e!240618 false)))

(declare-fun lt!187388 () Bool)

(declare-datatypes ((List!6527 0))(
  ( (Nil!6524) (Cons!6523 (h!7379 (_ BitVec 64)) (t!11709 List!6527)) )
))
(declare-fun arrayNoDuplicates!0 (array!23779 (_ BitVec 32) List!6527) Bool)

(assert (=> b!398041 (= lt!187388 (arrayNoDuplicates!0 lt!187389 #b00000000000000000000000000000000 Nil!6524))))

(declare-fun mapNonEmpty!16545 () Bool)

(declare-fun tp!32340 () Bool)

(declare-fun e!240619 () Bool)

(assert (=> mapNonEmpty!16545 (= mapRes!16545 (and tp!32340 e!240619))))

(declare-fun mapKey!16545 () (_ BitVec 32))

(declare-fun mapValue!16545 () ValueCell!4631)

(declare-fun mapRest!16545 () (Array (_ BitVec 32) ValueCell!4631))

(assert (=> mapNonEmpty!16545 (= (arr!11337 _values!549) (store mapRest!16545 mapKey!16545 mapValue!16545))))

(declare-fun b!398042 () Bool)

(declare-fun res!228772 () Bool)

(assert (=> b!398042 (=> (not res!228772) (not e!240614))))

(assert (=> b!398042 (= res!228772 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11688 _keys!709))))))

(declare-fun b!398043 () Bool)

(declare-fun res!228765 () Bool)

(assert (=> b!398043 (=> (not res!228765) (not e!240614))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!398043 (= res!228765 (validKeyInArray!0 k!794))))

(declare-fun b!398044 () Bool)

(declare-fun res!228766 () Bool)

(assert (=> b!398044 (=> (not res!228766) (not e!240614))))

(assert (=> b!398044 (= res!228766 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6524))))

(declare-fun b!398045 () Bool)

(declare-fun e!240616 () Bool)

(declare-fun tp_is_empty!9949 () Bool)

(assert (=> b!398045 (= e!240616 tp_is_empty!9949)))

(declare-fun res!228774 () Bool)

(assert (=> start!38538 (=> (not res!228774) (not e!240614))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38538 (= res!228774 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11688 _keys!709))))))

(assert (=> start!38538 e!240614))

(assert (=> start!38538 true))

(declare-fun e!240615 () Bool)

(declare-fun array_inv!8298 (array!23781) Bool)

(assert (=> start!38538 (and (array_inv!8298 _values!549) e!240615)))

(declare-fun array_inv!8299 (array!23779) Bool)

(assert (=> start!38538 (array_inv!8299 _keys!709)))

(declare-fun b!398038 () Bool)

(declare-fun res!228769 () Bool)

(assert (=> b!398038 (=> (not res!228769) (not e!240614))))

(assert (=> b!398038 (= res!228769 (or (= (select (arr!11336 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11336 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!398046 () Bool)

(assert (=> b!398046 (= e!240619 tp_is_empty!9949)))

(declare-fun b!398047 () Bool)

(assert (=> b!398047 (= e!240615 (and e!240616 mapRes!16545))))

(declare-fun condMapEmpty!16545 () Bool)

(declare-fun mapDefault!16545 () ValueCell!4631)

