; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41058 () Bool)

(assert start!41058)

(declare-fun b_free!10963 () Bool)

(declare-fun b_next!10963 () Bool)

(assert (=> start!41058 (= b_free!10963 (not b_next!10963))))

(declare-fun tp!38719 () Bool)

(declare-fun b_and!19151 () Bool)

(assert (=> start!41058 (= tp!38719 b_and!19151)))

(declare-fun b!457366 () Bool)

(declare-fun res!273182 () Bool)

(declare-fun e!267122 () Bool)

(assert (=> b!457366 (=> (not res!273182) (not e!267122))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!457366 (= res!273182 (validMask!0 mask!1025))))

(declare-fun b!457367 () Bool)

(declare-fun e!267121 () Bool)

(declare-fun e!267126 () Bool)

(assert (=> b!457367 (= e!267121 e!267126)))

(declare-fun res!273189 () Bool)

(assert (=> b!457367 (=> (not res!273189) (not e!267126))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!457367 (= res!273189 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!17507 0))(
  ( (V!17508 (val!6195 Int)) )
))
(declare-fun minValue!515 () V!17507)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17507)

(declare-datatypes ((tuple2!8126 0))(
  ( (tuple2!8127 (_1!4073 (_ BitVec 64)) (_2!4073 V!17507)) )
))
(declare-datatypes ((List!8229 0))(
  ( (Nil!8226) (Cons!8225 (h!9081 tuple2!8126) (t!14079 List!8229)) )
))
(declare-datatypes ((ListLongMap!7053 0))(
  ( (ListLongMap!7054 (toList!3542 List!8229)) )
))
(declare-fun lt!206934 () ListLongMap!7053)

(declare-datatypes ((array!28371 0))(
  ( (array!28372 (arr!13625 (Array (_ BitVec 32) (_ BitVec 64))) (size!13977 (_ BitVec 32))) )
))
(declare-fun lt!206936 () array!28371)

(declare-datatypes ((ValueCell!5807 0))(
  ( (ValueCellFull!5807 (v!8461 V!17507)) (EmptyCell!5807) )
))
(declare-datatypes ((array!28373 0))(
  ( (array!28374 (arr!13626 (Array (_ BitVec 32) ValueCell!5807)) (size!13978 (_ BitVec 32))) )
))
(declare-fun lt!206933 () array!28373)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1716 (array!28371 array!28373 (_ BitVec 32) (_ BitVec 32) V!17507 V!17507 (_ BitVec 32) Int) ListLongMap!7053)

(assert (=> b!457367 (= lt!206934 (getCurrentListMapNoExtraKeys!1716 lt!206936 lt!206933 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!28373)

(declare-fun v!412 () V!17507)

(assert (=> b!457367 (= lt!206933 (array!28374 (store (arr!13626 _values!549) i!563 (ValueCellFull!5807 v!412)) (size!13978 _values!549)))))

(declare-fun lt!206935 () ListLongMap!7053)

(declare-fun _keys!709 () array!28371)

(assert (=> b!457367 (= lt!206935 (getCurrentListMapNoExtraKeys!1716 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!457368 () Bool)

(declare-fun res!273183 () Bool)

(assert (=> b!457368 (=> (not res!273183) (not e!267122))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28371 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!457368 (= res!273183 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!457369 () Bool)

(declare-fun res!273188 () Bool)

(assert (=> b!457369 (=> (not res!273188) (not e!267122))))

(declare-datatypes ((List!8230 0))(
  ( (Nil!8227) (Cons!8226 (h!9082 (_ BitVec 64)) (t!14080 List!8230)) )
))
(declare-fun arrayNoDuplicates!0 (array!28371 (_ BitVec 32) List!8230) Bool)

(assert (=> b!457369 (= res!273188 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8227))))

(declare-fun b!457370 () Bool)

(declare-fun e!267124 () Bool)

(declare-fun tp_is_empty!12301 () Bool)

(assert (=> b!457370 (= e!267124 tp_is_empty!12301)))

(declare-fun b!457371 () Bool)

(declare-fun e!267127 () Bool)

(assert (=> b!457371 (= e!267127 tp_is_empty!12301)))

(declare-fun b!457372 () Bool)

(declare-fun res!273180 () Bool)

(assert (=> b!457372 (=> (not res!273180) (not e!267122))))

(assert (=> b!457372 (= res!273180 (or (= (select (arr!13625 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13625 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!457373 () Bool)

(declare-fun e!267125 () Bool)

(assert (=> b!457373 (= e!267125 true)))

(declare-fun lt!206932 () ListLongMap!7053)

(declare-fun +!1562 (ListLongMap!7053 tuple2!8126) ListLongMap!7053)

(declare-fun get!6718 (ValueCell!5807 V!17507) V!17507)

(declare-fun dynLambda!874 (Int (_ BitVec 64)) V!17507)

(assert (=> b!457373 (= lt!206934 (+!1562 lt!206932 (tuple2!8127 (select (arr!13625 _keys!709) from!863) (get!6718 (select (arr!13626 _values!549) from!863) (dynLambda!874 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!457374 () Bool)

(declare-fun e!267120 () Bool)

(declare-fun mapRes!20095 () Bool)

(assert (=> b!457374 (= e!267120 (and e!267127 mapRes!20095))))

(declare-fun condMapEmpty!20095 () Bool)

(declare-fun mapDefault!20095 () ValueCell!5807)

