; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40968 () Bool)

(assert start!40968)

(declare-fun b_free!10895 () Bool)

(declare-fun b_next!10895 () Bool)

(assert (=> start!40968 (= b_free!10895 (not b_next!10895))))

(declare-fun tp!38512 () Bool)

(declare-fun b_and!19055 () Bool)

(assert (=> start!40968 (= tp!38512 b_and!19055)))

(declare-fun b!455567 () Bool)

(declare-fun e!266305 () Bool)

(declare-fun e!266304 () Bool)

(assert (=> b!455567 (= e!266305 e!266304)))

(declare-fun res!271782 () Bool)

(assert (=> b!455567 (=> (not res!271782) (not e!266304))))

(declare-datatypes ((array!28235 0))(
  ( (array!28236 (arr!13558 (Array (_ BitVec 32) (_ BitVec 64))) (size!13910 (_ BitVec 32))) )
))
(declare-fun lt!206364 () array!28235)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28235 (_ BitVec 32)) Bool)

(assert (=> b!455567 (= res!271782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206364 mask!1025))))

(declare-fun _keys!709 () array!28235)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!455567 (= lt!206364 (array!28236 (store (arr!13558 _keys!709) i!563 k!794) (size!13910 _keys!709)))))

(declare-fun b!455568 () Bool)

(declare-fun e!266302 () Bool)

(declare-fun tp_is_empty!12233 () Bool)

(assert (=> b!455568 (= e!266302 tp_is_empty!12233)))

(declare-fun b!455569 () Bool)

(declare-fun res!271788 () Bool)

(assert (=> b!455569 (=> (not res!271788) (not e!266305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!455569 (= res!271788 (validMask!0 mask!1025))))

(declare-fun b!455570 () Bool)

(declare-fun res!271781 () Bool)

(assert (=> b!455570 (=> (not res!271781) (not e!266305))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17415 0))(
  ( (V!17416 (val!6161 Int)) )
))
(declare-datatypes ((ValueCell!5773 0))(
  ( (ValueCellFull!5773 (v!8423 V!17415)) (EmptyCell!5773) )
))
(declare-datatypes ((array!28237 0))(
  ( (array!28238 (arr!13559 (Array (_ BitVec 32) ValueCell!5773)) (size!13911 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28237)

(assert (=> b!455570 (= res!271781 (and (= (size!13911 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13910 _keys!709) (size!13911 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!455571 () Bool)

(declare-fun res!271779 () Bool)

(assert (=> b!455571 (=> (not res!271779) (not e!266305))))

(declare-datatypes ((List!8172 0))(
  ( (Nil!8169) (Cons!8168 (h!9024 (_ BitVec 64)) (t!14008 List!8172)) )
))
(declare-fun arrayNoDuplicates!0 (array!28235 (_ BitVec 32) List!8172) Bool)

(assert (=> b!455571 (= res!271779 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8169))))

(declare-fun b!455572 () Bool)

(assert (=> b!455572 (= e!266304 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!17415)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17415)

(declare-fun v!412 () V!17415)

(declare-datatypes ((tuple2!8066 0))(
  ( (tuple2!8067 (_1!4043 (_ BitVec 64)) (_2!4043 V!17415)) )
))
(declare-datatypes ((List!8173 0))(
  ( (Nil!8170) (Cons!8169 (h!9025 tuple2!8066) (t!14009 List!8173)) )
))
(declare-datatypes ((ListLongMap!6993 0))(
  ( (ListLongMap!6994 (toList!3512 List!8173)) )
))
(declare-fun lt!206362 () ListLongMap!6993)

(declare-fun getCurrentListMapNoExtraKeys!1688 (array!28235 array!28237 (_ BitVec 32) (_ BitVec 32) V!17415 V!17415 (_ BitVec 32) Int) ListLongMap!6993)

(assert (=> b!455572 (= lt!206362 (getCurrentListMapNoExtraKeys!1688 lt!206364 (array!28238 (store (arr!13559 _values!549) i!563 (ValueCellFull!5773 v!412)) (size!13911 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206363 () ListLongMap!6993)

(assert (=> b!455572 (= lt!206363 (getCurrentListMapNoExtraKeys!1688 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!455573 () Bool)

(declare-fun e!266306 () Bool)

(assert (=> b!455573 (= e!266306 tp_is_empty!12233)))

(declare-fun b!455574 () Bool)

(declare-fun res!271780 () Bool)

(assert (=> b!455574 (=> (not res!271780) (not e!266304))))

(assert (=> b!455574 (= res!271780 (bvsle from!863 i!563))))

(declare-fun b!455576 () Bool)

(declare-fun res!271784 () Bool)

(assert (=> b!455576 (=> (not res!271784) (not e!266305))))

(assert (=> b!455576 (= res!271784 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13910 _keys!709))))))

(declare-fun b!455577 () Bool)

(declare-fun res!271783 () Bool)

(assert (=> b!455577 (=> (not res!271783) (not e!266305))))

(assert (=> b!455577 (= res!271783 (or (= (select (arr!13558 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13558 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!455578 () Bool)

(declare-fun e!266301 () Bool)

(declare-fun mapRes!19990 () Bool)

(assert (=> b!455578 (= e!266301 (and e!266302 mapRes!19990))))

(declare-fun condMapEmpty!19990 () Bool)

(declare-fun mapDefault!19990 () ValueCell!5773)

