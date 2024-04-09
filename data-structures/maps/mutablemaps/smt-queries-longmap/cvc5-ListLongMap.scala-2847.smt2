; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41076 () Bool)

(assert start!41076)

(declare-fun b_free!10981 () Bool)

(declare-fun b_next!10981 () Bool)

(assert (=> start!41076 (= b_free!10981 (not b_next!10981))))

(declare-fun tp!38773 () Bool)

(declare-fun b_and!19187 () Bool)

(assert (=> start!41076 (= tp!38773 b_and!19187)))

(declare-fun b!457843 () Bool)

(declare-fun res!273555 () Bool)

(declare-fun e!267342 () Bool)

(assert (=> b!457843 (=> (not res!273555) (not e!267342))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!457843 (= res!273555 (validKeyInArray!0 k!794))))

(declare-fun b!457844 () Bool)

(declare-fun e!267341 () Bool)

(declare-fun e!267340 () Bool)

(assert (=> b!457844 (= e!267341 (not e!267340))))

(declare-fun res!273560 () Bool)

(assert (=> b!457844 (=> res!273560 e!267340)))

(declare-datatypes ((array!28405 0))(
  ( (array!28406 (arr!13642 (Array (_ BitVec 32) (_ BitVec 64))) (size!13994 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28405)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!457844 (= res!273560 (not (validKeyInArray!0 (select (arr!13642 _keys!709) from!863))))))

(declare-datatypes ((V!17531 0))(
  ( (V!17532 (val!6204 Int)) )
))
(declare-datatypes ((tuple2!8140 0))(
  ( (tuple2!8141 (_1!4080 (_ BitVec 64)) (_2!4080 V!17531)) )
))
(declare-datatypes ((List!8243 0))(
  ( (Nil!8240) (Cons!8239 (h!9095 tuple2!8140) (t!14111 List!8243)) )
))
(declare-datatypes ((ListLongMap!7067 0))(
  ( (ListLongMap!7068 (toList!3549 List!8243)) )
))
(declare-fun lt!207154 () ListLongMap!7067)

(declare-fun lt!207151 () ListLongMap!7067)

(assert (=> b!457844 (= lt!207154 lt!207151)))

(declare-fun lt!207153 () ListLongMap!7067)

(declare-fun v!412 () V!17531)

(declare-fun +!1569 (ListLongMap!7067 tuple2!8140) ListLongMap!7067)

(assert (=> b!457844 (= lt!207151 (+!1569 lt!207153 (tuple2!8141 k!794 v!412)))))

(declare-fun minValue!515 () V!17531)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17531)

(declare-fun lt!207150 () array!28405)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5816 0))(
  ( (ValueCellFull!5816 (v!8470 V!17531)) (EmptyCell!5816) )
))
(declare-datatypes ((array!28407 0))(
  ( (array!28408 (arr!13643 (Array (_ BitVec 32) ValueCell!5816)) (size!13995 (_ BitVec 32))) )
))
(declare-fun lt!207149 () array!28407)

(declare-fun getCurrentListMapNoExtraKeys!1721 (array!28405 array!28407 (_ BitVec 32) (_ BitVec 32) V!17531 V!17531 (_ BitVec 32) Int) ListLongMap!7067)

(assert (=> b!457844 (= lt!207154 (getCurrentListMapNoExtraKeys!1721 lt!207150 lt!207149 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun _values!549 () array!28407)

(assert (=> b!457844 (= lt!207153 (getCurrentListMapNoExtraKeys!1721 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!13253 0))(
  ( (Unit!13254) )
))
(declare-fun lt!207147 () Unit!13253)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!729 (array!28405 array!28407 (_ BitVec 32) (_ BitVec 32) V!17531 V!17531 (_ BitVec 32) (_ BitVec 64) V!17531 (_ BitVec 32) Int) Unit!13253)

(assert (=> b!457844 (= lt!207147 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!729 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!457845 () Bool)

(declare-fun res!273558 () Bool)

(assert (=> b!457845 (=> (not res!273558) (not e!267342))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28405 (_ BitVec 32)) Bool)

(assert (=> b!457845 (= res!273558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!457846 () Bool)

(declare-fun e!267336 () Bool)

(declare-fun tp_is_empty!12319 () Bool)

(assert (=> b!457846 (= e!267336 tp_is_empty!12319)))

(declare-fun b!457847 () Bool)

(declare-fun res!273561 () Bool)

(assert (=> b!457847 (=> (not res!273561) (not e!267342))))

(assert (=> b!457847 (= res!273561 (or (= (select (arr!13642 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13642 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!457848 () Bool)

(declare-fun res!273557 () Bool)

(declare-fun e!267337 () Bool)

(assert (=> b!457848 (=> (not res!273557) (not e!267337))))

(declare-datatypes ((List!8244 0))(
  ( (Nil!8241) (Cons!8240 (h!9096 (_ BitVec 64)) (t!14112 List!8244)) )
))
(declare-fun arrayNoDuplicates!0 (array!28405 (_ BitVec 32) List!8244) Bool)

(assert (=> b!457848 (= res!273557 (arrayNoDuplicates!0 lt!207150 #b00000000000000000000000000000000 Nil!8241))))

(declare-fun b!457849 () Bool)

(declare-fun res!273554 () Bool)

(assert (=> b!457849 (=> (not res!273554) (not e!267337))))

(assert (=> b!457849 (= res!273554 (bvsle from!863 i!563))))

(declare-fun b!457850 () Bool)

(assert (=> b!457850 (= e!267342 e!267337)))

(declare-fun res!273566 () Bool)

(assert (=> b!457850 (=> (not res!273566) (not e!267337))))

(assert (=> b!457850 (= res!273566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207150 mask!1025))))

(assert (=> b!457850 (= lt!207150 (array!28406 (store (arr!13642 _keys!709) i!563 k!794) (size!13994 _keys!709)))))

(declare-fun b!457851 () Bool)

(declare-fun res!273564 () Bool)

(assert (=> b!457851 (=> (not res!273564) (not e!267342))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!457851 (= res!273564 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!20122 () Bool)

(declare-fun mapRes!20122 () Bool)

(declare-fun tp!38772 () Bool)

(declare-fun e!267343 () Bool)

(assert (=> mapNonEmpty!20122 (= mapRes!20122 (and tp!38772 e!267343))))

(declare-fun mapKey!20122 () (_ BitVec 32))

(declare-fun mapRest!20122 () (Array (_ BitVec 32) ValueCell!5816))

(declare-fun mapValue!20122 () ValueCell!5816)

(assert (=> mapNonEmpty!20122 (= (arr!13643 _values!549) (store mapRest!20122 mapKey!20122 mapValue!20122))))

(declare-fun b!457852 () Bool)

(assert (=> b!457852 (= e!267337 e!267341)))

(declare-fun res!273565 () Bool)

(assert (=> b!457852 (=> (not res!273565) (not e!267341))))

(assert (=> b!457852 (= res!273565 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!207152 () ListLongMap!7067)

(assert (=> b!457852 (= lt!207152 (getCurrentListMapNoExtraKeys!1721 lt!207150 lt!207149 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!457852 (= lt!207149 (array!28408 (store (arr!13643 _values!549) i!563 (ValueCellFull!5816 v!412)) (size!13995 _values!549)))))

(declare-fun lt!207148 () ListLongMap!7067)

(assert (=> b!457852 (= lt!207148 (getCurrentListMapNoExtraKeys!1721 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!457853 () Bool)

(declare-fun e!267338 () Bool)

(assert (=> b!457853 (= e!267338 (and e!267336 mapRes!20122))))

(declare-fun condMapEmpty!20122 () Bool)

(declare-fun mapDefault!20122 () ValueCell!5816)

