; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40884 () Bool)

(assert start!40884)

(declare-fun b_free!10811 () Bool)

(declare-fun b_next!10811 () Bool)

(assert (=> start!40884 (= b_free!10811 (not b_next!10811))))

(declare-fun tp!38259 () Bool)

(declare-fun b_and!18971 () Bool)

(assert (=> start!40884 (= tp!38259 b_and!18971)))

(declare-fun res!270271 () Bool)

(declare-fun e!265545 () Bool)

(assert (=> start!40884 (=> (not res!270271) (not e!265545))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!28067 0))(
  ( (array!28068 (arr!13474 (Array (_ BitVec 32) (_ BitVec 64))) (size!13826 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28067)

(assert (=> start!40884 (= res!270271 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13826 _keys!709))))))

(assert (=> start!40884 e!265545))

(declare-fun tp_is_empty!12149 () Bool)

(assert (=> start!40884 tp_is_empty!12149))

(assert (=> start!40884 tp!38259))

(assert (=> start!40884 true))

(declare-datatypes ((V!17303 0))(
  ( (V!17304 (val!6119 Int)) )
))
(declare-datatypes ((ValueCell!5731 0))(
  ( (ValueCellFull!5731 (v!8381 V!17303)) (EmptyCell!5731) )
))
(declare-datatypes ((array!28069 0))(
  ( (array!28070 (arr!13475 (Array (_ BitVec 32) ValueCell!5731)) (size!13827 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28069)

(declare-fun e!265548 () Bool)

(declare-fun array_inv!9756 (array!28069) Bool)

(assert (=> start!40884 (and (array_inv!9756 _values!549) e!265548)))

(declare-fun array_inv!9757 (array!28067) Bool)

(assert (=> start!40884 (array_inv!9757 _keys!709)))

(declare-fun b!453677 () Bool)

(declare-fun res!270270 () Bool)

(assert (=> b!453677 (=> (not res!270270) (not e!265545))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!453677 (= res!270270 (validKeyInArray!0 k!794))))

(declare-fun b!453678 () Bool)

(declare-fun res!270278 () Bool)

(assert (=> b!453678 (=> (not res!270278) (not e!265545))))

(declare-fun arrayContainsKey!0 (array!28067 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!453678 (= res!270278 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!453679 () Bool)

(declare-fun res!270273 () Bool)

(declare-fun e!265547 () Bool)

(assert (=> b!453679 (=> (not res!270273) (not e!265547))))

(declare-fun lt!205985 () array!28067)

(declare-datatypes ((List!8110 0))(
  ( (Nil!8107) (Cons!8106 (h!8962 (_ BitVec 64)) (t!13946 List!8110)) )
))
(declare-fun arrayNoDuplicates!0 (array!28067 (_ BitVec 32) List!8110) Bool)

(assert (=> b!453679 (= res!270273 (arrayNoDuplicates!0 lt!205985 #b00000000000000000000000000000000 Nil!8107))))

(declare-fun mapNonEmpty!19864 () Bool)

(declare-fun mapRes!19864 () Bool)

(declare-fun tp!38260 () Bool)

(declare-fun e!265550 () Bool)

(assert (=> mapNonEmpty!19864 (= mapRes!19864 (and tp!38260 e!265550))))

(declare-fun mapValue!19864 () ValueCell!5731)

(declare-fun mapKey!19864 () (_ BitVec 32))

(declare-fun mapRest!19864 () (Array (_ BitVec 32) ValueCell!5731))

(assert (=> mapNonEmpty!19864 (= (arr!13475 _values!549) (store mapRest!19864 mapKey!19864 mapValue!19864))))

(declare-fun b!453680 () Bool)

(declare-fun res!270267 () Bool)

(assert (=> b!453680 (=> (not res!270267) (not e!265545))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!453680 (= res!270267 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13826 _keys!709))))))

(declare-fun b!453681 () Bool)

(declare-fun res!270276 () Bool)

(assert (=> b!453681 (=> (not res!270276) (not e!265545))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!453681 (= res!270276 (and (= (size!13827 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13826 _keys!709) (size!13827 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!453682 () Bool)

(declare-fun res!270275 () Bool)

(assert (=> b!453682 (=> (not res!270275) (not e!265545))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28067 (_ BitVec 32)) Bool)

(assert (=> b!453682 (= res!270275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!453683 () Bool)

(assert (=> b!453683 (= e!265550 tp_is_empty!12149)))

(declare-fun b!453684 () Bool)

(assert (=> b!453684 (= e!265545 e!265547)))

(declare-fun res!270268 () Bool)

(assert (=> b!453684 (=> (not res!270268) (not e!265547))))

(assert (=> b!453684 (= res!270268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!205985 mask!1025))))

(assert (=> b!453684 (= lt!205985 (array!28068 (store (arr!13474 _keys!709) i!563 k!794) (size!13826 _keys!709)))))

(declare-fun b!453685 () Bool)

(declare-fun res!270277 () Bool)

(assert (=> b!453685 (=> (not res!270277) (not e!265545))))

(assert (=> b!453685 (= res!270277 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8107))))

(declare-fun b!453686 () Bool)

(declare-fun res!270274 () Bool)

(assert (=> b!453686 (=> (not res!270274) (not e!265545))))

(assert (=> b!453686 (= res!270274 (or (= (select (arr!13474 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13474 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!453687 () Bool)

(assert (=> b!453687 (= e!265547 (and (not (= from!863 i!563)) (bvslt from!863 i!563) (or (bvslt (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 from!863) (size!13826 _keys!709)))))))

(declare-fun minValue!515 () V!17303)

(declare-fun zeroValue!515 () V!17303)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!8008 0))(
  ( (tuple2!8009 (_1!4014 (_ BitVec 64)) (_2!4014 V!17303)) )
))
(declare-datatypes ((List!8111 0))(
  ( (Nil!8108) (Cons!8107 (h!8963 tuple2!8008) (t!13947 List!8111)) )
))
(declare-datatypes ((ListLongMap!6935 0))(
  ( (ListLongMap!6936 (toList!3483 List!8111)) )
))
(declare-fun lt!205986 () ListLongMap!6935)

(declare-fun v!412 () V!17303)

(declare-fun getCurrentListMapNoExtraKeys!1659 (array!28067 array!28069 (_ BitVec 32) (_ BitVec 32) V!17303 V!17303 (_ BitVec 32) Int) ListLongMap!6935)

(assert (=> b!453687 (= lt!205986 (getCurrentListMapNoExtraKeys!1659 lt!205985 (array!28070 (store (arr!13475 _values!549) i!563 (ValueCellFull!5731 v!412)) (size!13827 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!205984 () ListLongMap!6935)

(assert (=> b!453687 (= lt!205984 (getCurrentListMapNoExtraKeys!1659 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!19864 () Bool)

(assert (=> mapIsEmpty!19864 mapRes!19864))

(declare-fun b!453688 () Bool)

(declare-fun res!270269 () Bool)

(assert (=> b!453688 (=> (not res!270269) (not e!265545))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!453688 (= res!270269 (validMask!0 mask!1025))))

(declare-fun b!453689 () Bool)

(declare-fun res!270272 () Bool)

(assert (=> b!453689 (=> (not res!270272) (not e!265547))))

(assert (=> b!453689 (= res!270272 (bvsle from!863 i!563))))

(declare-fun b!453690 () Bool)

(declare-fun e!265549 () Bool)

(assert (=> b!453690 (= e!265548 (and e!265549 mapRes!19864))))

(declare-fun condMapEmpty!19864 () Bool)

(declare-fun mapDefault!19864 () ValueCell!5731)

