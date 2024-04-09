; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38368 () Bool)

(assert start!38368)

(declare-fun b!395467 () Bool)

(declare-fun res!226815 () Bool)

(declare-fun e!239418 () Bool)

(assert (=> b!395467 (=> (not res!226815) (not e!239418))))

(declare-datatypes ((array!23539 0))(
  ( (array!23540 (arr!11219 (Array (_ BitVec 32) (_ BitVec 64))) (size!11571 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23539)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23539 (_ BitVec 32)) Bool)

(assert (=> b!395467 (= res!226815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!395468 () Bool)

(declare-fun res!226818 () Bool)

(assert (=> b!395468 (=> (not res!226818) (not e!239418))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!395468 (= res!226818 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11571 _keys!709))))))

(declare-fun b!395469 () Bool)

(declare-fun res!226813 () Bool)

(assert (=> b!395469 (=> (not res!226813) (not e!239418))))

(assert (=> b!395469 (= res!226813 (or (= (select (arr!11219 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11219 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16353 () Bool)

(declare-fun mapRes!16353 () Bool)

(assert (=> mapIsEmpty!16353 mapRes!16353))

(declare-fun b!395470 () Bool)

(declare-fun e!239420 () Bool)

(declare-fun tp_is_empty!9827 () Bool)

(assert (=> b!395470 (= e!239420 tp_is_empty!9827)))

(declare-fun b!395471 () Bool)

(declare-fun res!226811 () Bool)

(assert (=> b!395471 (=> (not res!226811) (not e!239418))))

(declare-datatypes ((V!14207 0))(
  ( (V!14208 (val!4958 Int)) )
))
(declare-datatypes ((ValueCell!4570 0))(
  ( (ValueCellFull!4570 (v!7200 V!14207)) (EmptyCell!4570) )
))
(declare-datatypes ((array!23541 0))(
  ( (array!23542 (arr!11220 (Array (_ BitVec 32) ValueCell!4570)) (size!11572 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23541)

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!395471 (= res!226811 (and (= (size!11572 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11571 _keys!709) (size!11572 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!395472 () Bool)

(declare-fun res!226819 () Bool)

(assert (=> b!395472 (=> (not res!226819) (not e!239418))))

(declare-datatypes ((List!6479 0))(
  ( (Nil!6476) (Cons!6475 (h!7331 (_ BitVec 64)) (t!11661 List!6479)) )
))
(declare-fun arrayNoDuplicates!0 (array!23539 (_ BitVec 32) List!6479) Bool)

(assert (=> b!395472 (= res!226819 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6476))))

(declare-fun res!226812 () Bool)

(assert (=> start!38368 (=> (not res!226812) (not e!239418))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38368 (= res!226812 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11571 _keys!709))))))

(assert (=> start!38368 e!239418))

(assert (=> start!38368 true))

(declare-fun e!239417 () Bool)

(declare-fun array_inv!8216 (array!23541) Bool)

(assert (=> start!38368 (and (array_inv!8216 _values!549) e!239417)))

(declare-fun array_inv!8217 (array!23539) Bool)

(assert (=> start!38368 (array_inv!8217 _keys!709)))

(declare-fun mapNonEmpty!16353 () Bool)

(declare-fun tp!32148 () Bool)

(assert (=> mapNonEmpty!16353 (= mapRes!16353 (and tp!32148 e!239420))))

(declare-fun mapValue!16353 () ValueCell!4570)

(declare-fun mapKey!16353 () (_ BitVec 32))

(declare-fun mapRest!16353 () (Array (_ BitVec 32) ValueCell!4570))

(assert (=> mapNonEmpty!16353 (= (arr!11220 _values!549) (store mapRest!16353 mapKey!16353 mapValue!16353))))

(declare-fun b!395473 () Bool)

(assert (=> b!395473 (= e!239418 (and (= (size!11571 _keys!709) (bvadd #b00000000000000000000000000000001 mask!1025)) (bvsgt #b00000000000000000000000000000000 (size!11571 _keys!709))))))

(declare-fun b!395474 () Bool)

(declare-fun e!239416 () Bool)

(assert (=> b!395474 (= e!239417 (and e!239416 mapRes!16353))))

(declare-fun condMapEmpty!16353 () Bool)

(declare-fun mapDefault!16353 () ValueCell!4570)

