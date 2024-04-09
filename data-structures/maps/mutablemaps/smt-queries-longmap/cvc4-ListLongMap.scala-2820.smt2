; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40896 () Bool)

(assert start!40896)

(declare-fun b_free!10823 () Bool)

(declare-fun b_next!10823 () Bool)

(assert (=> start!40896 (= b_free!10823 (not b_next!10823))))

(declare-fun tp!38295 () Bool)

(declare-fun b_and!18983 () Bool)

(assert (=> start!40896 (= tp!38295 b_and!18983)))

(declare-fun b!453947 () Bool)

(declare-fun res!270487 () Bool)

(declare-fun e!265657 () Bool)

(assert (=> b!453947 (=> (not res!270487) (not e!265657))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!28091 0))(
  ( (array!28092 (arr!13486 (Array (_ BitVec 32) (_ BitVec 64))) (size!13838 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28091)

(assert (=> b!453947 (= res!270487 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13838 _keys!709))))))

(declare-fun b!453948 () Bool)

(declare-fun e!265654 () Bool)

(declare-fun tp_is_empty!12161 () Bool)

(assert (=> b!453948 (= e!265654 tp_is_empty!12161)))

(declare-fun b!453949 () Bool)

(declare-fun res!270493 () Bool)

(assert (=> b!453949 (=> (not res!270493) (not e!265657))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28091 (_ BitVec 32)) Bool)

(assert (=> b!453949 (= res!270493 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!453950 () Bool)

(declare-fun e!265655 () Bool)

(assert (=> b!453950 (= e!265657 e!265655)))

(declare-fun res!270488 () Bool)

(assert (=> b!453950 (=> (not res!270488) (not e!265655))))

(declare-fun lt!206040 () array!28091)

(assert (=> b!453950 (= res!270488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206040 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!453950 (= lt!206040 (array!28092 (store (arr!13486 _keys!709) i!563 k!794) (size!13838 _keys!709)))))

(declare-fun b!453951 () Bool)

(declare-fun res!270483 () Bool)

(assert (=> b!453951 (=> (not res!270483) (not e!265655))))

(declare-datatypes ((List!8118 0))(
  ( (Nil!8115) (Cons!8114 (h!8970 (_ BitVec 64)) (t!13954 List!8118)) )
))
(declare-fun arrayNoDuplicates!0 (array!28091 (_ BitVec 32) List!8118) Bool)

(assert (=> b!453951 (= res!270483 (arrayNoDuplicates!0 lt!206040 #b00000000000000000000000000000000 Nil!8115))))

(declare-fun b!453953 () Bool)

(declare-fun res!270484 () Bool)

(assert (=> b!453953 (=> (not res!270484) (not e!265657))))

(assert (=> b!453953 (= res!270484 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8115))))

(declare-fun mapIsEmpty!19882 () Bool)

(declare-fun mapRes!19882 () Bool)

(assert (=> mapIsEmpty!19882 mapRes!19882))

(declare-fun b!453954 () Bool)

(declare-fun e!265656 () Bool)

(assert (=> b!453954 (= e!265656 tp_is_empty!12161)))

(declare-fun mapNonEmpty!19882 () Bool)

(declare-fun tp!38296 () Bool)

(assert (=> mapNonEmpty!19882 (= mapRes!19882 (and tp!38296 e!265654))))

(declare-datatypes ((V!17319 0))(
  ( (V!17320 (val!6125 Int)) )
))
(declare-datatypes ((ValueCell!5737 0))(
  ( (ValueCellFull!5737 (v!8387 V!17319)) (EmptyCell!5737) )
))
(declare-fun mapRest!19882 () (Array (_ BitVec 32) ValueCell!5737))

(declare-fun mapValue!19882 () ValueCell!5737)

(declare-fun mapKey!19882 () (_ BitVec 32))

(declare-datatypes ((array!28093 0))(
  ( (array!28094 (arr!13487 (Array (_ BitVec 32) ValueCell!5737)) (size!13839 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28093)

(assert (=> mapNonEmpty!19882 (= (arr!13487 _values!549) (store mapRest!19882 mapKey!19882 mapValue!19882))))

(declare-fun b!453955 () Bool)

(assert (=> b!453955 (= e!265655 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!17319)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17319)

(declare-datatypes ((tuple2!8016 0))(
  ( (tuple2!8017 (_1!4018 (_ BitVec 64)) (_2!4018 V!17319)) )
))
(declare-datatypes ((List!8119 0))(
  ( (Nil!8116) (Cons!8115 (h!8971 tuple2!8016) (t!13955 List!8119)) )
))
(declare-datatypes ((ListLongMap!6943 0))(
  ( (ListLongMap!6944 (toList!3487 List!8119)) )
))
(declare-fun lt!206039 () ListLongMap!6943)

(declare-fun v!412 () V!17319)

(declare-fun getCurrentListMapNoExtraKeys!1663 (array!28091 array!28093 (_ BitVec 32) (_ BitVec 32) V!17319 V!17319 (_ BitVec 32) Int) ListLongMap!6943)

(assert (=> b!453955 (= lt!206039 (getCurrentListMapNoExtraKeys!1663 lt!206040 (array!28094 (store (arr!13487 _values!549) i!563 (ValueCellFull!5737 v!412)) (size!13839 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206038 () ListLongMap!6943)

(assert (=> b!453955 (= lt!206038 (getCurrentListMapNoExtraKeys!1663 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!453956 () Bool)

(declare-fun e!265658 () Bool)

(assert (=> b!453956 (= e!265658 (and e!265656 mapRes!19882))))

(declare-fun condMapEmpty!19882 () Bool)

(declare-fun mapDefault!19882 () ValueCell!5737)

