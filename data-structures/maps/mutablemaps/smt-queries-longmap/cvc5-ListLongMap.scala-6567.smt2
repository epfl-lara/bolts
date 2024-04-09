; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83314 () Bool)

(assert start!83314)

(declare-fun b_free!19279 () Bool)

(declare-fun b_next!19279 () Bool)

(assert (=> start!83314 (= b_free!19279 (not b_next!19279))))

(declare-fun tp!67116 () Bool)

(declare-fun b_and!30797 () Bool)

(assert (=> start!83314 (= tp!67116 b_and!30797)))

(declare-fun b!971871 () Bool)

(declare-fun e!547861 () Bool)

(declare-fun tp_is_empty!22177 () Bool)

(assert (=> b!971871 (= e!547861 tp_is_empty!22177)))

(declare-fun mapNonEmpty!35275 () Bool)

(declare-fun mapRes!35275 () Bool)

(declare-fun tp!67117 () Bool)

(declare-fun e!547863 () Bool)

(assert (=> mapNonEmpty!35275 (= mapRes!35275 (and tp!67117 e!547863))))

(declare-datatypes ((V!34553 0))(
  ( (V!34554 (val!11139 Int)) )
))
(declare-datatypes ((ValueCell!10607 0))(
  ( (ValueCellFull!10607 (v!13698 V!34553)) (EmptyCell!10607) )
))
(declare-fun mapRest!35275 () (Array (_ BitVec 32) ValueCell!10607))

(declare-fun mapValue!35275 () ValueCell!10607)

(declare-fun mapKey!35275 () (_ BitVec 32))

(declare-datatypes ((array!60385 0))(
  ( (array!60386 (arr!29052 (Array (_ BitVec 32) ValueCell!10607)) (size!29532 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60385)

(assert (=> mapNonEmpty!35275 (= (arr!29052 _values!1425) (store mapRest!35275 mapKey!35275 mapValue!35275))))

(declare-fun b!971872 () Bool)

(declare-fun res!650639 () Bool)

(declare-fun e!547858 () Bool)

(assert (=> b!971872 (=> (not res!650639) (not e!547858))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun zeroValue!1367 () V!34553)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34553)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60387 0))(
  ( (array!60388 (arr!29053 (Array (_ BitVec 32) (_ BitVec 64))) (size!29533 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60387)

(declare-datatypes ((tuple2!14384 0))(
  ( (tuple2!14385 (_1!7202 (_ BitVec 64)) (_2!7202 V!34553)) )
))
(declare-datatypes ((List!20275 0))(
  ( (Nil!20272) (Cons!20271 (h!21433 tuple2!14384) (t!28660 List!20275)) )
))
(declare-datatypes ((ListLongMap!13095 0))(
  ( (ListLongMap!13096 (toList!6563 List!20275)) )
))
(declare-fun contains!5612 (ListLongMap!13095 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3748 (array!60387 array!60385 (_ BitVec 32) (_ BitVec 32) V!34553 V!34553 (_ BitVec 32) Int) ListLongMap!13095)

(assert (=> b!971872 (= res!650639 (contains!5612 (getCurrentListMap!3748 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29053 _keys!1717) i!822)))))

(declare-fun b!971873 () Bool)

(declare-fun res!650636 () Bool)

(assert (=> b!971873 (=> (not res!650636) (not e!547858))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60387 (_ BitVec 32)) Bool)

(assert (=> b!971873 (= res!650636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!971874 () Bool)

(declare-fun res!650641 () Bool)

(assert (=> b!971874 (=> (not res!650641) (not e!547858))))

(declare-datatypes ((List!20276 0))(
  ( (Nil!20273) (Cons!20272 (h!21434 (_ BitVec 64)) (t!28661 List!20276)) )
))
(declare-fun arrayNoDuplicates!0 (array!60387 (_ BitVec 32) List!20276) Bool)

(assert (=> b!971874 (= res!650641 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20273))))

(declare-fun b!971875 () Bool)

(declare-fun res!650638 () Bool)

(assert (=> b!971875 (=> (not res!650638) (not e!547858))))

(assert (=> b!971875 (= res!650638 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29533 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29533 _keys!1717))))))

(declare-fun res!650637 () Bool)

(assert (=> start!83314 (=> (not res!650637) (not e!547858))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83314 (= res!650637 (validMask!0 mask!2147))))

(assert (=> start!83314 e!547858))

(assert (=> start!83314 true))

(declare-fun e!547862 () Bool)

(declare-fun array_inv!22375 (array!60385) Bool)

(assert (=> start!83314 (and (array_inv!22375 _values!1425) e!547862)))

(assert (=> start!83314 tp_is_empty!22177))

(assert (=> start!83314 tp!67116))

(declare-fun array_inv!22376 (array!60387) Bool)

(assert (=> start!83314 (array_inv!22376 _keys!1717)))

(declare-fun b!971876 () Bool)

(assert (=> b!971876 (= e!547862 (and e!547861 mapRes!35275))))

(declare-fun condMapEmpty!35275 () Bool)

(declare-fun mapDefault!35275 () ValueCell!10607)

