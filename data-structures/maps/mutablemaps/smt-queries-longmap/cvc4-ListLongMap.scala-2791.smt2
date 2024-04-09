; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40646 () Bool)

(assert start!40646)

(declare-fun b_free!10649 () Bool)

(declare-fun b_next!10649 () Bool)

(assert (=> start!40646 (= b_free!10649 (not b_next!10649))))

(declare-fun tp!37767 () Bool)

(declare-fun b_and!18675 () Bool)

(assert (=> start!40646 (= tp!37767 b_and!18675)))

(declare-fun b!448577 () Bool)

(declare-fun res!266766 () Bool)

(declare-fun e!263155 () Bool)

(assert (=> b!448577 (=> (not res!266766) (not e!263155))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!448577 (= res!266766 (validKeyInArray!0 k!794))))

(declare-fun b!448579 () Bool)

(declare-fun res!266760 () Bool)

(assert (=> b!448579 (=> (not res!266760) (not e!263155))))

(declare-datatypes ((array!27741 0))(
  ( (array!27742 (arr!13313 (Array (_ BitVec 32) (_ BitVec 64))) (size!13665 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27741)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17087 0))(
  ( (V!17088 (val!6038 Int)) )
))
(declare-datatypes ((ValueCell!5650 0))(
  ( (ValueCellFull!5650 (v!8289 V!17087)) (EmptyCell!5650) )
))
(declare-datatypes ((array!27743 0))(
  ( (array!27744 (arr!13314 (Array (_ BitVec 32) ValueCell!5650)) (size!13666 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27743)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!448579 (= res!266760 (and (= (size!13666 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13665 _keys!709) (size!13666 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!448580 () Bool)

(declare-fun e!263157 () Bool)

(assert (=> b!448580 (= e!263157 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!17087)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17087)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lt!204194 () array!27741)

(declare-datatypes ((tuple2!7856 0))(
  ( (tuple2!7857 (_1!3938 (_ BitVec 64)) (_2!3938 V!17087)) )
))
(declare-datatypes ((List!7967 0))(
  ( (Nil!7964) (Cons!7963 (h!8819 tuple2!7856) (t!13737 List!7967)) )
))
(declare-datatypes ((ListLongMap!6783 0))(
  ( (ListLongMap!6784 (toList!3407 List!7967)) )
))
(declare-fun lt!204195 () ListLongMap!6783)

(declare-fun v!412 () V!17087)

(declare-fun getCurrentListMapNoExtraKeys!1587 (array!27741 array!27743 (_ BitVec 32) (_ BitVec 32) V!17087 V!17087 (_ BitVec 32) Int) ListLongMap!6783)

(assert (=> b!448580 (= lt!204195 (getCurrentListMapNoExtraKeys!1587 lt!204194 (array!27744 (store (arr!13314 _values!549) i!563 (ValueCellFull!5650 v!412)) (size!13666 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204196 () ListLongMap!6783)

(assert (=> b!448580 (= lt!204196 (getCurrentListMapNoExtraKeys!1587 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!448581 () Bool)

(declare-fun res!266765 () Bool)

(assert (=> b!448581 (=> (not res!266765) (not e!263155))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!448581 (= res!266765 (validMask!0 mask!1025))))

(declare-fun b!448582 () Bool)

(declare-fun res!266759 () Bool)

(assert (=> b!448582 (=> (not res!266759) (not e!263155))))

(declare-datatypes ((List!7968 0))(
  ( (Nil!7965) (Cons!7964 (h!8820 (_ BitVec 64)) (t!13738 List!7968)) )
))
(declare-fun arrayNoDuplicates!0 (array!27741 (_ BitVec 32) List!7968) Bool)

(assert (=> b!448582 (= res!266759 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7965))))

(declare-fun b!448583 () Bool)

(declare-fun res!266761 () Bool)

(assert (=> b!448583 (=> (not res!266761) (not e!263155))))

(assert (=> b!448583 (= res!266761 (or (= (select (arr!13313 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13313 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19614 () Bool)

(declare-fun mapRes!19614 () Bool)

(declare-fun tp!37766 () Bool)

(declare-fun e!263152 () Bool)

(assert (=> mapNonEmpty!19614 (= mapRes!19614 (and tp!37766 e!263152))))

(declare-fun mapValue!19614 () ValueCell!5650)

(declare-fun mapRest!19614 () (Array (_ BitVec 32) ValueCell!5650))

(declare-fun mapKey!19614 () (_ BitVec 32))

(assert (=> mapNonEmpty!19614 (= (arr!13314 _values!549) (store mapRest!19614 mapKey!19614 mapValue!19614))))

(declare-fun b!448584 () Bool)

(declare-fun res!266757 () Bool)

(assert (=> b!448584 (=> (not res!266757) (not e!263155))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27741 (_ BitVec 32)) Bool)

(assert (=> b!448584 (= res!266757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!448585 () Bool)

(declare-fun e!263156 () Bool)

(declare-fun e!263154 () Bool)

(assert (=> b!448585 (= e!263156 (and e!263154 mapRes!19614))))

(declare-fun condMapEmpty!19614 () Bool)

(declare-fun mapDefault!19614 () ValueCell!5650)

