; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83542 () Bool)

(assert start!83542)

(declare-fun b_free!19501 () Bool)

(declare-fun b_next!19501 () Bool)

(assert (=> start!83542 (= b_free!19501 (not b_next!19501))))

(declare-fun tp!67791 () Bool)

(declare-fun b_and!31121 () Bool)

(assert (=> start!83542 (= tp!67791 b_and!31121)))

(declare-fun b!975526 () Bool)

(declare-fun e!549821 () Bool)

(assert (=> b!975526 (= e!549821 false)))

(declare-datatypes ((V!34857 0))(
  ( (V!34858 (val!11253 Int)) )
))
(declare-datatypes ((ValueCell!10721 0))(
  ( (ValueCellFull!10721 (v!13812 V!34857)) (EmptyCell!10721) )
))
(declare-datatypes ((array!60825 0))(
  ( (array!60826 (arr!29272 (Array (_ BitVec 32) ValueCell!10721)) (size!29752 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60825)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34857)

(declare-datatypes ((tuple2!14574 0))(
  ( (tuple2!14575 (_1!7297 (_ BitVec 64)) (_2!7297 V!34857)) )
))
(declare-datatypes ((List!20446 0))(
  ( (Nil!20443) (Cons!20442 (h!21604 tuple2!14574) (t!28931 List!20446)) )
))
(declare-datatypes ((ListLongMap!13285 0))(
  ( (ListLongMap!13286 (toList!6658 List!20446)) )
))
(declare-fun lt!432832 () ListLongMap!13285)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60827 0))(
  ( (array!60828 (arr!29273 (Array (_ BitVec 32) (_ BitVec 64))) (size!29753 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60827)

(declare-fun zeroValue!1367 () V!34857)

(declare-fun getCurrentListMap!3843 (array!60827 array!60825 (_ BitVec 32) (_ BitVec 32) V!34857 V!34857 (_ BitVec 32) Int) ListLongMap!13285)

(assert (=> b!975526 (= lt!432832 (getCurrentListMap!3843 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975527 () Bool)

(declare-fun e!549822 () Bool)

(declare-fun tp_is_empty!22405 () Bool)

(assert (=> b!975527 (= e!549822 tp_is_empty!22405)))

(declare-fun mapNonEmpty!35617 () Bool)

(declare-fun mapRes!35617 () Bool)

(declare-fun tp!67792 () Bool)

(assert (=> mapNonEmpty!35617 (= mapRes!35617 (and tp!67792 e!549822))))

(declare-fun mapValue!35617 () ValueCell!10721)

(declare-fun mapRest!35617 () (Array (_ BitVec 32) ValueCell!10721))

(declare-fun mapKey!35617 () (_ BitVec 32))

(assert (=> mapNonEmpty!35617 (= (arr!29272 _values!1425) (store mapRest!35617 mapKey!35617 mapValue!35617))))

(declare-fun b!975528 () Bool)

(declare-fun res!653163 () Bool)

(assert (=> b!975528 (=> (not res!653163) (not e!549821))))

(assert (=> b!975528 (= res!653163 (and (= (size!29752 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29753 _keys!1717) (size!29752 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!975529 () Bool)

(declare-fun res!653165 () Bool)

(assert (=> b!975529 (=> (not res!653165) (not e!549821))))

(declare-datatypes ((List!20447 0))(
  ( (Nil!20444) (Cons!20443 (h!21605 (_ BitVec 64)) (t!28932 List!20447)) )
))
(declare-fun arrayNoDuplicates!0 (array!60827 (_ BitVec 32) List!20447) Bool)

(assert (=> b!975529 (= res!653165 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20444))))

(declare-fun b!975530 () Bool)

(declare-fun res!653162 () Bool)

(assert (=> b!975530 (=> (not res!653162) (not e!549821))))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!975530 (= res!653162 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29753 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29753 _keys!1717))))))

(declare-fun b!975531 () Bool)

(declare-fun res!653167 () Bool)

(assert (=> b!975531 (=> (not res!653167) (not e!549821))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60827 (_ BitVec 32)) Bool)

(assert (=> b!975531 (= res!653167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!975532 () Bool)

(declare-fun e!549820 () Bool)

(assert (=> b!975532 (= e!549820 tp_is_empty!22405)))

(declare-fun mapIsEmpty!35617 () Bool)

(assert (=> mapIsEmpty!35617 mapRes!35617))

(declare-fun b!975533 () Bool)

(declare-fun res!653161 () Bool)

(assert (=> b!975533 (=> (not res!653161) (not e!549821))))

(declare-fun contains!5690 (ListLongMap!13285 (_ BitVec 64)) Bool)

(assert (=> b!975533 (= res!653161 (contains!5690 (getCurrentListMap!3843 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29273 _keys!1717) i!822)))))

(declare-fun res!653164 () Bool)

(assert (=> start!83542 (=> (not res!653164) (not e!549821))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83542 (= res!653164 (validMask!0 mask!2147))))

(assert (=> start!83542 e!549821))

(assert (=> start!83542 true))

(declare-fun e!549819 () Bool)

(declare-fun array_inv!22533 (array!60825) Bool)

(assert (=> start!83542 (and (array_inv!22533 _values!1425) e!549819)))

(assert (=> start!83542 tp_is_empty!22405))

(assert (=> start!83542 tp!67791))

(declare-fun array_inv!22534 (array!60827) Bool)

(assert (=> start!83542 (array_inv!22534 _keys!1717)))

(declare-fun b!975534 () Bool)

(assert (=> b!975534 (= e!549819 (and e!549820 mapRes!35617))))

(declare-fun condMapEmpty!35617 () Bool)

(declare-fun mapDefault!35617 () ValueCell!10721)

