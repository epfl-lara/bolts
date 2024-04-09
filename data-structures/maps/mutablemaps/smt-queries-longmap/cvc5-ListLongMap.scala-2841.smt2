; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41018 () Bool)

(assert start!41018)

(declare-fun b_free!10945 () Bool)

(declare-fun b_next!10945 () Bool)

(assert (=> start!41018 (= b_free!10945 (not b_next!10945))))

(declare-fun tp!38662 () Bool)

(declare-fun b_and!19105 () Bool)

(assert (=> start!41018 (= tp!38662 b_and!19105)))

(declare-fun b!456750 () Bool)

(declare-fun e!266816 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!17483 0))(
  ( (V!17484 (val!6186 Int)) )
))
(declare-datatypes ((ValueCell!5798 0))(
  ( (ValueCellFull!5798 (v!8448 V!17483)) (EmptyCell!5798) )
))
(declare-datatypes ((array!28333 0))(
  ( (array!28334 (arr!13607 (Array (_ BitVec 32) ValueCell!5798)) (size!13959 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28333)

(assert (=> b!456750 (= e!266816 (bvslt from!863 (size!13959 _values!549)))))

(declare-fun b!456751 () Bool)

(declare-fun res!272748 () Bool)

(declare-fun e!266812 () Bool)

(assert (=> b!456751 (=> (not res!272748) (not e!266812))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!456751 (= res!272748 (validMask!0 mask!1025))))

(declare-fun b!456752 () Bool)

(declare-fun e!266813 () Bool)

(assert (=> b!456752 (= e!266812 e!266813)))

(declare-fun res!272749 () Bool)

(assert (=> b!456752 (=> (not res!272749) (not e!266813))))

(declare-datatypes ((array!28335 0))(
  ( (array!28336 (arr!13608 (Array (_ BitVec 32) (_ BitVec 64))) (size!13960 (_ BitVec 32))) )
))
(declare-fun lt!206667 () array!28335)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28335 (_ BitVec 32)) Bool)

(assert (=> b!456752 (= res!272749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206667 mask!1025))))

(declare-fun _keys!709 () array!28335)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!456752 (= lt!206667 (array!28336 (store (arr!13608 _keys!709) i!563 k!794) (size!13960 _keys!709)))))

(declare-fun b!456753 () Bool)

(declare-fun e!266815 () Bool)

(assert (=> b!456753 (= e!266813 e!266815)))

(declare-fun res!272737 () Bool)

(assert (=> b!456753 (=> (not res!272737) (not e!266815))))

(assert (=> b!456753 (= res!272737 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!206665 () array!28333)

(declare-fun minValue!515 () V!17483)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17483)

(declare-datatypes ((tuple2!8112 0))(
  ( (tuple2!8113 (_1!4066 (_ BitVec 64)) (_2!4066 V!17483)) )
))
(declare-datatypes ((List!8216 0))(
  ( (Nil!8213) (Cons!8212 (h!9068 tuple2!8112) (t!14052 List!8216)) )
))
(declare-datatypes ((ListLongMap!7039 0))(
  ( (ListLongMap!7040 (toList!3535 List!8216)) )
))
(declare-fun lt!206663 () ListLongMap!7039)

(declare-fun getCurrentListMapNoExtraKeys!1711 (array!28335 array!28333 (_ BitVec 32) (_ BitVec 32) V!17483 V!17483 (_ BitVec 32) Int) ListLongMap!7039)

(assert (=> b!456753 (= lt!206663 (getCurrentListMapNoExtraKeys!1711 lt!206667 lt!206665 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17483)

(assert (=> b!456753 (= lt!206665 (array!28334 (store (arr!13607 _values!549) i!563 (ValueCellFull!5798 v!412)) (size!13959 _values!549)))))

(declare-fun lt!206666 () ListLongMap!7039)

(assert (=> b!456753 (= lt!206666 (getCurrentListMapNoExtraKeys!1711 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!456755 () Bool)

(declare-fun res!272745 () Bool)

(assert (=> b!456755 (=> (not res!272745) (not e!266812))))

(declare-fun arrayContainsKey!0 (array!28335 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!456755 (= res!272745 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!456756 () Bool)

(declare-fun res!272746 () Bool)

(assert (=> b!456756 (=> (not res!272746) (not e!266812))))

(assert (=> b!456756 (= res!272746 (or (= (select (arr!13608 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13608 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!456757 () Bool)

(declare-fun e!266814 () Bool)

(declare-fun e!266810 () Bool)

(declare-fun mapRes!20065 () Bool)

(assert (=> b!456757 (= e!266814 (and e!266810 mapRes!20065))))

(declare-fun condMapEmpty!20065 () Bool)

(declare-fun mapDefault!20065 () ValueCell!5798)

