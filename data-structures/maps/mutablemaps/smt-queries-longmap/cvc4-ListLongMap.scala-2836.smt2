; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40992 () Bool)

(assert start!40992)

(declare-fun b_free!10919 () Bool)

(declare-fun b_next!10919 () Bool)

(assert (=> start!40992 (= b_free!10919 (not b_next!10919))))

(declare-fun tp!38584 () Bool)

(declare-fun b_and!19079 () Bool)

(assert (=> start!40992 (= tp!38584 b_and!19079)))

(declare-fun b!456107 () Bool)

(declare-fun res!272214 () Bool)

(declare-fun e!266518 () Bool)

(assert (=> b!456107 (=> (not res!272214) (not e!266518))))

(declare-datatypes ((array!28281 0))(
  ( (array!28282 (arr!13581 (Array (_ BitVec 32) (_ BitVec 64))) (size!13933 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28281)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28281 (_ BitVec 32)) Bool)

(assert (=> b!456107 (= res!272214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!456108 () Bool)

(declare-fun e!266522 () Bool)

(declare-fun tp_is_empty!12257 () Bool)

(assert (=> b!456108 (= e!266522 tp_is_empty!12257)))

(declare-fun b!456109 () Bool)

(declare-fun res!272218 () Bool)

(declare-fun e!266521 () Bool)

(assert (=> b!456109 (=> (not res!272218) (not e!266521))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!456109 (= res!272218 (bvsle from!863 i!563))))

(declare-fun res!272221 () Bool)

(assert (=> start!40992 (=> (not res!272221) (not e!266518))))

(assert (=> start!40992 (= res!272221 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13933 _keys!709))))))

(assert (=> start!40992 e!266518))

(assert (=> start!40992 tp_is_empty!12257))

(assert (=> start!40992 tp!38584))

(assert (=> start!40992 true))

(declare-datatypes ((V!17447 0))(
  ( (V!17448 (val!6173 Int)) )
))
(declare-datatypes ((ValueCell!5785 0))(
  ( (ValueCellFull!5785 (v!8435 V!17447)) (EmptyCell!5785) )
))
(declare-datatypes ((array!28283 0))(
  ( (array!28284 (arr!13582 (Array (_ BitVec 32) ValueCell!5785)) (size!13934 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28283)

(declare-fun e!266519 () Bool)

(declare-fun array_inv!9826 (array!28283) Bool)

(assert (=> start!40992 (and (array_inv!9826 _values!549) e!266519)))

(declare-fun array_inv!9827 (array!28281) Bool)

(assert (=> start!40992 (array_inv!9827 _keys!709)))

(declare-fun b!456110 () Bool)

(declare-fun res!272222 () Bool)

(assert (=> b!456110 (=> (not res!272222) (not e!266518))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!456110 (= res!272222 (validMask!0 mask!1025))))

(declare-fun b!456111 () Bool)

(assert (=> b!456111 (= e!266521 (and (not (= from!863 i!563)) (bvslt from!863 i!563) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13933 _keys!709)) (bvsge (bvsub (size!13933 _keys!709) (bvadd #b00000000000000000000000000000001 from!863)) (bvsub (size!13933 _keys!709) from!863))))))

(declare-fun minValue!515 () V!17447)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!206471 () array!28281)

(declare-fun v!412 () V!17447)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!8086 0))(
  ( (tuple2!8087 (_1!4053 (_ BitVec 64)) (_2!4053 V!17447)) )
))
(declare-datatypes ((List!8193 0))(
  ( (Nil!8190) (Cons!8189 (h!9045 tuple2!8086) (t!14029 List!8193)) )
))
(declare-datatypes ((ListLongMap!7013 0))(
  ( (ListLongMap!7014 (toList!3522 List!8193)) )
))
(declare-fun lt!206472 () ListLongMap!7013)

(declare-fun zeroValue!515 () V!17447)

(declare-fun getCurrentListMapNoExtraKeys!1698 (array!28281 array!28283 (_ BitVec 32) (_ BitVec 32) V!17447 V!17447 (_ BitVec 32) Int) ListLongMap!7013)

(assert (=> b!456111 (= lt!206472 (getCurrentListMapNoExtraKeys!1698 lt!206471 (array!28284 (store (arr!13582 _values!549) i!563 (ValueCellFull!5785 v!412)) (size!13934 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206470 () ListLongMap!7013)

(assert (=> b!456111 (= lt!206470 (getCurrentListMapNoExtraKeys!1698 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!20026 () Bool)

(declare-fun mapRes!20026 () Bool)

(assert (=> mapIsEmpty!20026 mapRes!20026))

(declare-fun b!456112 () Bool)

(declare-fun res!272213 () Bool)

(assert (=> b!456112 (=> (not res!272213) (not e!266521))))

(declare-datatypes ((List!8194 0))(
  ( (Nil!8191) (Cons!8190 (h!9046 (_ BitVec 64)) (t!14030 List!8194)) )
))
(declare-fun arrayNoDuplicates!0 (array!28281 (_ BitVec 32) List!8194) Bool)

(assert (=> b!456112 (= res!272213 (arrayNoDuplicates!0 lt!206471 #b00000000000000000000000000000000 Nil!8191))))

(declare-fun b!456113 () Bool)

(declare-fun res!272216 () Bool)

(assert (=> b!456113 (=> (not res!272216) (not e!266518))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!456113 (= res!272216 (validKeyInArray!0 k!794))))

(declare-fun b!456114 () Bool)

(declare-fun res!272219 () Bool)

(assert (=> b!456114 (=> (not res!272219) (not e!266518))))

(assert (=> b!456114 (= res!272219 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13933 _keys!709))))))

(declare-fun b!456115 () Bool)

(declare-fun e!266520 () Bool)

(assert (=> b!456115 (= e!266520 tp_is_empty!12257)))

(declare-fun b!456116 () Bool)

(assert (=> b!456116 (= e!266519 (and e!266522 mapRes!20026))))

(declare-fun condMapEmpty!20026 () Bool)

(declare-fun mapDefault!20026 () ValueCell!5785)

