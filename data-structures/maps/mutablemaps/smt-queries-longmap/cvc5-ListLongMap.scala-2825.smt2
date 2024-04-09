; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40922 () Bool)

(assert start!40922)

(declare-fun b_free!10849 () Bool)

(declare-fun b_next!10849 () Bool)

(assert (=> start!40922 (= b_free!10849 (not b_next!10849))))

(declare-fun tp!38373 () Bool)

(declare-fun b_and!19009 () Bool)

(assert (=> start!40922 (= tp!38373 b_and!19009)))

(declare-fun b!454532 () Bool)

(declare-fun e!265887 () Bool)

(assert (=> b!454532 (= e!265887 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17355 0))(
  ( (V!17356 (val!6138 Int)) )
))
(declare-fun zeroValue!515 () V!17355)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!17355)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun minValue!515 () V!17355)

(declare-datatypes ((array!28143 0))(
  ( (array!28144 (arr!13512 (Array (_ BitVec 32) (_ BitVec 64))) (size!13864 (_ BitVec 32))) )
))
(declare-fun lt!206157 () array!28143)

(declare-datatypes ((ValueCell!5750 0))(
  ( (ValueCellFull!5750 (v!8400 V!17355)) (EmptyCell!5750) )
))
(declare-datatypes ((array!28145 0))(
  ( (array!28146 (arr!13513 (Array (_ BitVec 32) ValueCell!5750)) (size!13865 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28145)

(declare-datatypes ((tuple2!8032 0))(
  ( (tuple2!8033 (_1!4026 (_ BitVec 64)) (_2!4026 V!17355)) )
))
(declare-datatypes ((List!8138 0))(
  ( (Nil!8135) (Cons!8134 (h!8990 tuple2!8032) (t!13974 List!8138)) )
))
(declare-datatypes ((ListLongMap!6959 0))(
  ( (ListLongMap!6960 (toList!3495 List!8138)) )
))
(declare-fun lt!206155 () ListLongMap!6959)

(declare-fun getCurrentListMapNoExtraKeys!1671 (array!28143 array!28145 (_ BitVec 32) (_ BitVec 32) V!17355 V!17355 (_ BitVec 32) Int) ListLongMap!6959)

(assert (=> b!454532 (= lt!206155 (getCurrentListMapNoExtraKeys!1671 lt!206157 (array!28146 (store (arr!13513 _values!549) i!563 (ValueCellFull!5750 v!412)) (size!13865 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _keys!709 () array!28143)

(declare-fun lt!206156 () ListLongMap!6959)

(assert (=> b!454532 (= lt!206156 (getCurrentListMapNoExtraKeys!1671 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!454533 () Bool)

(declare-fun res!270951 () Bool)

(declare-fun e!265888 () Bool)

(assert (=> b!454533 (=> (not res!270951) (not e!265888))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!454533 (= res!270951 (validMask!0 mask!1025))))

(declare-fun res!270962 () Bool)

(assert (=> start!40922 (=> (not res!270962) (not e!265888))))

(assert (=> start!40922 (= res!270962 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13864 _keys!709))))))

(assert (=> start!40922 e!265888))

(declare-fun tp_is_empty!12187 () Bool)

(assert (=> start!40922 tp_is_empty!12187))

(assert (=> start!40922 tp!38373))

(assert (=> start!40922 true))

(declare-fun e!265889 () Bool)

(declare-fun array_inv!9782 (array!28145) Bool)

(assert (=> start!40922 (and (array_inv!9782 _values!549) e!265889)))

(declare-fun array_inv!9783 (array!28143) Bool)

(assert (=> start!40922 (array_inv!9783 _keys!709)))

(declare-fun b!454534 () Bool)

(declare-fun res!270953 () Bool)

(assert (=> b!454534 (=> (not res!270953) (not e!265888))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28143 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!454534 (= res!270953 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!454535 () Bool)

(declare-fun res!270957 () Bool)

(assert (=> b!454535 (=> (not res!270957) (not e!265888))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!454535 (= res!270957 (validKeyInArray!0 k!794))))

(declare-fun b!454536 () Bool)

(declare-fun res!270952 () Bool)

(assert (=> b!454536 (=> (not res!270952) (not e!265887))))

(declare-datatypes ((List!8139 0))(
  ( (Nil!8136) (Cons!8135 (h!8991 (_ BitVec 64)) (t!13975 List!8139)) )
))
(declare-fun arrayNoDuplicates!0 (array!28143 (_ BitVec 32) List!8139) Bool)

(assert (=> b!454536 (= res!270952 (arrayNoDuplicates!0 lt!206157 #b00000000000000000000000000000000 Nil!8136))))

(declare-fun b!454537 () Bool)

(declare-fun res!270956 () Bool)

(assert (=> b!454537 (=> (not res!270956) (not e!265887))))

(assert (=> b!454537 (= res!270956 (bvsle from!863 i!563))))

(declare-fun b!454538 () Bool)

(declare-fun e!265892 () Bool)

(declare-fun mapRes!19921 () Bool)

(assert (=> b!454538 (= e!265889 (and e!265892 mapRes!19921))))

(declare-fun condMapEmpty!19921 () Bool)

(declare-fun mapDefault!19921 () ValueCell!5750)

