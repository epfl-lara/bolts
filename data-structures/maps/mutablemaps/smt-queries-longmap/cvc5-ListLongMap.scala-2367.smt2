; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37672 () Bool)

(assert start!37672)

(declare-fun b_free!8767 () Bool)

(declare-fun b_next!8767 () Bool)

(assert (=> start!37672 (= b_free!8767 (not b_next!8767))))

(declare-fun tp!31052 () Bool)

(declare-fun b_and!16027 () Bool)

(assert (=> start!37672 (= tp!31052 b_and!16027)))

(declare-fun mapNonEmpty!15723 () Bool)

(declare-fun mapRes!15723 () Bool)

(declare-fun tp!31053 () Bool)

(declare-fun e!233963 () Bool)

(assert (=> mapNonEmpty!15723 (= mapRes!15723 (and tp!31053 e!233963))))

(declare-datatypes ((V!13691 0))(
  ( (V!13692 (val!4764 Int)) )
))
(declare-datatypes ((ValueCell!4376 0))(
  ( (ValueCellFull!4376 (v!6957 V!13691)) (EmptyCell!4376) )
))
(declare-datatypes ((array!22755 0))(
  ( (array!22756 (arr!10843 (Array (_ BitVec 32) ValueCell!4376)) (size!11195 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22755)

(declare-fun mapValue!15723 () ValueCell!4376)

(declare-fun mapKey!15723 () (_ BitVec 32))

(declare-fun mapRest!15723 () (Array (_ BitVec 32) ValueCell!4376))

(assert (=> mapNonEmpty!15723 (= (arr!10843 _values!506) (store mapRest!15723 mapKey!15723 mapValue!15723))))

(declare-fun b!385466 () Bool)

(declare-fun res!219966 () Bool)

(declare-fun e!233967 () Bool)

(assert (=> b!385466 (=> (not res!219966) (not e!233967))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!385466 (= res!219966 (validKeyInArray!0 k!778))))

(declare-fun b!385467 () Bool)

(declare-fun res!219971 () Bool)

(assert (=> b!385467 (=> (not res!219971) (not e!233967))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22757 0))(
  ( (array!22758 (arr!10844 (Array (_ BitVec 32) (_ BitVec 64))) (size!11196 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22757)

(assert (=> b!385467 (= res!219971 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11196 _keys!658))))))

(declare-fun b!385468 () Bool)

(declare-fun e!233966 () Bool)

(assert (=> b!385468 (= e!233966 false)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6352 0))(
  ( (tuple2!6353 (_1!3186 (_ BitVec 64)) (_2!3186 V!13691)) )
))
(declare-datatypes ((List!6227 0))(
  ( (Nil!6224) (Cons!6223 (h!7079 tuple2!6352) (t!11385 List!6227)) )
))
(declare-datatypes ((ListLongMap!5279 0))(
  ( (ListLongMap!5280 (toList!2655 List!6227)) )
))
(declare-fun lt!181606 () ListLongMap!5279)

(declare-fun zeroValue!472 () V!13691)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13691)

(declare-fun getCurrentListMapNoExtraKeys!889 (array!22757 array!22755 (_ BitVec 32) (_ BitVec 32) V!13691 V!13691 (_ BitVec 32) Int) ListLongMap!5279)

(assert (=> b!385468 (= lt!181606 (getCurrentListMapNoExtraKeys!889 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!385469 () Bool)

(declare-fun res!219965 () Bool)

(assert (=> b!385469 (=> (not res!219965) (not e!233967))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22757 (_ BitVec 32)) Bool)

(assert (=> b!385469 (= res!219965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!385470 () Bool)

(declare-fun res!219962 () Bool)

(assert (=> b!385470 (=> (not res!219962) (not e!233967))))

(assert (=> b!385470 (= res!219962 (or (= (select (arr!10844 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10844 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!385471 () Bool)

(declare-fun res!219964 () Bool)

(assert (=> b!385471 (=> (not res!219964) (not e!233967))))

(declare-fun arrayContainsKey!0 (array!22757 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!385471 (= res!219964 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!385472 () Bool)

(declare-fun res!219970 () Bool)

(assert (=> b!385472 (=> (not res!219970) (not e!233967))))

(declare-datatypes ((List!6228 0))(
  ( (Nil!6225) (Cons!6224 (h!7080 (_ BitVec 64)) (t!11386 List!6228)) )
))
(declare-fun arrayNoDuplicates!0 (array!22757 (_ BitVec 32) List!6228) Bool)

(assert (=> b!385472 (= res!219970 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6225))))

(declare-fun mapIsEmpty!15723 () Bool)

(assert (=> mapIsEmpty!15723 mapRes!15723))

(declare-fun b!385473 () Bool)

(declare-fun e!233962 () Bool)

(declare-fun e!233964 () Bool)

(assert (=> b!385473 (= e!233962 (and e!233964 mapRes!15723))))

(declare-fun condMapEmpty!15723 () Bool)

(declare-fun mapDefault!15723 () ValueCell!4376)

