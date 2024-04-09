; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20160 () Bool)

(assert start!20160)

(declare-fun b_free!4807 () Bool)

(declare-fun b_next!4807 () Bool)

(assert (=> start!20160 (= b_free!4807 (not b_next!4807))))

(declare-fun tp!17452 () Bool)

(declare-fun b_and!11571 () Bool)

(assert (=> start!20160 (= tp!17452 b_and!11571)))

(declare-fun b!197610 () Bool)

(declare-fun res!93532 () Bool)

(declare-fun e!130012 () Bool)

(assert (=> b!197610 (=> (not res!93532) (not e!130012))))

(declare-datatypes ((array!8578 0))(
  ( (array!8579 (arr!4039 (Array (_ BitVec 32) (_ BitVec 64))) (size!4364 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8578)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!197610 (= res!93532 (= (select (arr!4039 _keys!825) i!601) k!843))))

(declare-fun mapNonEmpty!8063 () Bool)

(declare-fun mapRes!8063 () Bool)

(declare-fun tp!17453 () Bool)

(declare-fun e!130011 () Bool)

(assert (=> mapNonEmpty!8063 (= mapRes!8063 (and tp!17453 e!130011))))

(declare-datatypes ((V!5865 0))(
  ( (V!5866 (val!2376 Int)) )
))
(declare-datatypes ((ValueCell!1988 0))(
  ( (ValueCellFull!1988 (v!4342 V!5865)) (EmptyCell!1988) )
))
(declare-fun mapValue!8063 () ValueCell!1988)

(declare-datatypes ((array!8580 0))(
  ( (array!8581 (arr!4040 (Array (_ BitVec 32) ValueCell!1988)) (size!4365 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8580)

(declare-fun mapKey!8063 () (_ BitVec 32))

(declare-fun mapRest!8063 () (Array (_ BitVec 32) ValueCell!1988))

(assert (=> mapNonEmpty!8063 (= (arr!4040 _values!649) (store mapRest!8063 mapKey!8063 mapValue!8063))))

(declare-fun b!197611 () Bool)

(declare-fun res!93533 () Bool)

(assert (=> b!197611 (=> (not res!93533) (not e!130012))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197611 (= res!93533 (validKeyInArray!0 k!843))))

(declare-fun b!197612 () Bool)

(declare-fun res!93536 () Bool)

(assert (=> b!197612 (=> (not res!93536) (not e!130012))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8578 (_ BitVec 32)) Bool)

(assert (=> b!197612 (= res!93536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!197613 () Bool)

(assert (=> b!197613 (= e!130012 false)))

(declare-datatypes ((tuple2!3604 0))(
  ( (tuple2!3605 (_1!1812 (_ BitVec 64)) (_2!1812 V!5865)) )
))
(declare-datatypes ((List!2542 0))(
  ( (Nil!2539) (Cons!2538 (h!3180 tuple2!3604) (t!7481 List!2542)) )
))
(declare-datatypes ((ListLongMap!2531 0))(
  ( (ListLongMap!2532 (toList!1281 List!2542)) )
))
(declare-fun lt!97783 () ListLongMap!2531)

(declare-fun v!520 () V!5865)

(declare-fun zeroValue!615 () V!5865)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5865)

(declare-fun getCurrentListMapNoExtraKeys!238 (array!8578 array!8580 (_ BitVec 32) (_ BitVec 32) V!5865 V!5865 (_ BitVec 32) Int) ListLongMap!2531)

(assert (=> b!197613 (= lt!97783 (getCurrentListMapNoExtraKeys!238 _keys!825 (array!8581 (store (arr!4040 _values!649) i!601 (ValueCellFull!1988 v!520)) (size!4365 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97782 () ListLongMap!2531)

(assert (=> b!197613 (= lt!97782 (getCurrentListMapNoExtraKeys!238 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!197614 () Bool)

(declare-fun res!93534 () Bool)

(assert (=> b!197614 (=> (not res!93534) (not e!130012))))

(declare-datatypes ((List!2543 0))(
  ( (Nil!2540) (Cons!2539 (h!3181 (_ BitVec 64)) (t!7482 List!2543)) )
))
(declare-fun arrayNoDuplicates!0 (array!8578 (_ BitVec 32) List!2543) Bool)

(assert (=> b!197614 (= res!93534 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2540))))

(declare-fun b!197615 () Bool)

(declare-fun res!93538 () Bool)

(assert (=> b!197615 (=> (not res!93538) (not e!130012))))

(assert (=> b!197615 (= res!93538 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4364 _keys!825))))))

(declare-fun b!197616 () Bool)

(declare-fun res!93537 () Bool)

(assert (=> b!197616 (=> (not res!93537) (not e!130012))))

(assert (=> b!197616 (= res!93537 (and (= (size!4365 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4364 _keys!825) (size!4365 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197617 () Bool)

(declare-fun tp_is_empty!4663 () Bool)

(assert (=> b!197617 (= e!130011 tp_is_empty!4663)))

(declare-fun mapIsEmpty!8063 () Bool)

(assert (=> mapIsEmpty!8063 mapRes!8063))

(declare-fun b!197619 () Bool)

(declare-fun e!130013 () Bool)

(declare-fun e!130015 () Bool)

(assert (=> b!197619 (= e!130013 (and e!130015 mapRes!8063))))

(declare-fun condMapEmpty!8063 () Bool)

(declare-fun mapDefault!8063 () ValueCell!1988)

