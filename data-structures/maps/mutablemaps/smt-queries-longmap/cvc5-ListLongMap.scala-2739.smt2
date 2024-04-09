; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40260 () Bool)

(assert start!40260)

(declare-fun b_free!10519 () Bool)

(declare-fun b_next!10519 () Bool)

(assert (=> start!40260 (= b_free!10519 (not b_next!10519))))

(declare-fun tp!37085 () Bool)

(declare-fun b_and!18505 () Bool)

(assert (=> start!40260 (= tp!37085 b_and!18505)))

(declare-fun b!441617 () Bool)

(declare-fun e!259984 () Bool)

(declare-fun tp_is_empty!11671 () Bool)

(assert (=> b!441617 (= e!259984 tp_is_empty!11671)))

(declare-fun b!441618 () Bool)

(declare-fun res!261569 () Bool)

(declare-fun e!259985 () Bool)

(assert (=> b!441618 (=> (not res!261569) (not e!259985))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!27129 0))(
  ( (array!27130 (arr!13011 (Array (_ BitVec 32) (_ BitVec 64))) (size!13363 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27129)

(assert (=> b!441618 (= res!261569 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13363 _keys!709))))))

(declare-fun b!441619 () Bool)

(declare-fun res!261574 () Bool)

(assert (=> b!441619 (=> (not res!261574) (not e!259985))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!441619 (= res!261574 (validKeyInArray!0 k!794))))

(declare-fun b!441620 () Bool)

(declare-fun res!261577 () Bool)

(assert (=> b!441620 (=> (not res!261577) (not e!259985))))

(declare-fun arrayContainsKey!0 (array!27129 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!441620 (= res!261577 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!261572 () Bool)

(assert (=> start!40260 (=> (not res!261572) (not e!259985))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40260 (= res!261572 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13363 _keys!709))))))

(assert (=> start!40260 e!259985))

(assert (=> start!40260 tp_is_empty!11671))

(assert (=> start!40260 tp!37085))

(assert (=> start!40260 true))

(declare-datatypes ((V!16667 0))(
  ( (V!16668 (val!5880 Int)) )
))
(declare-datatypes ((ValueCell!5492 0))(
  ( (ValueCellFull!5492 (v!8123 V!16667)) (EmptyCell!5492) )
))
(declare-datatypes ((array!27131 0))(
  ( (array!27132 (arr!13012 (Array (_ BitVec 32) ValueCell!5492)) (size!13364 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27131)

(declare-fun e!259988 () Bool)

(declare-fun array_inv!9432 (array!27131) Bool)

(assert (=> start!40260 (and (array_inv!9432 _values!549) e!259988)))

(declare-fun array_inv!9433 (array!27129) Bool)

(assert (=> start!40260 (array_inv!9433 _keys!709)))

(declare-fun b!441621 () Bool)

(declare-fun res!261573 () Bool)

(declare-fun e!259986 () Bool)

(assert (=> b!441621 (=> (not res!261573) (not e!259986))))

(assert (=> b!441621 (= res!261573 (bvsle from!863 i!563))))

(declare-fun b!441622 () Bool)

(declare-fun res!261568 () Bool)

(assert (=> b!441622 (=> (not res!261568) (not e!259985))))

(declare-datatypes ((List!7788 0))(
  ( (Nil!7785) (Cons!7784 (h!8640 (_ BitVec 64)) (t!13552 List!7788)) )
))
(declare-fun arrayNoDuplicates!0 (array!27129 (_ BitVec 32) List!7788) Bool)

(assert (=> b!441622 (= res!261568 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7785))))

(declare-fun b!441623 () Bool)

(declare-fun e!259989 () Bool)

(assert (=> b!441623 (= e!259989 (not true))))

(declare-fun minValue!515 () V!16667)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16667)

(declare-fun lt!202975 () array!27129)

(declare-fun lt!202973 () array!27131)

(declare-fun v!412 () V!16667)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!7748 0))(
  ( (tuple2!7749 (_1!3884 (_ BitVec 64)) (_2!3884 V!16667)) )
))
(declare-datatypes ((List!7789 0))(
  ( (Nil!7786) (Cons!7785 (h!8641 tuple2!7748) (t!13553 List!7789)) )
))
(declare-datatypes ((ListLongMap!6675 0))(
  ( (ListLongMap!6676 (toList!3353 List!7789)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1535 (array!27129 array!27131 (_ BitVec 32) (_ BitVec 32) V!16667 V!16667 (_ BitVec 32) Int) ListLongMap!6675)

(declare-fun +!1486 (ListLongMap!6675 tuple2!7748) ListLongMap!6675)

(assert (=> b!441623 (= (getCurrentListMapNoExtraKeys!1535 lt!202975 lt!202973 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1486 (getCurrentListMapNoExtraKeys!1535 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7749 k!794 v!412)))))

(declare-datatypes ((Unit!13087 0))(
  ( (Unit!13088) )
))
(declare-fun lt!202976 () Unit!13087)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!664 (array!27129 array!27131 (_ BitVec 32) (_ BitVec 32) V!16667 V!16667 (_ BitVec 32) (_ BitVec 64) V!16667 (_ BitVec 32) Int) Unit!13087)

(assert (=> b!441623 (= lt!202976 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!664 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!441624 () Bool)

(declare-fun res!261567 () Bool)

(assert (=> b!441624 (=> (not res!261567) (not e!259985))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!441624 (= res!261567 (validMask!0 mask!1025))))

(declare-fun b!441625 () Bool)

(declare-fun res!261576 () Bool)

(assert (=> b!441625 (=> (not res!261576) (not e!259985))))

(assert (=> b!441625 (= res!261576 (or (= (select (arr!13011 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13011 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!441626 () Bool)

(declare-fun mapRes!19128 () Bool)

(assert (=> b!441626 (= e!259988 (and e!259984 mapRes!19128))))

(declare-fun condMapEmpty!19128 () Bool)

(declare-fun mapDefault!19128 () ValueCell!5492)

