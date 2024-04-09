; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83504 () Bool)

(assert start!83504)

(declare-fun b_free!19463 () Bool)

(declare-fun b_next!19463 () Bool)

(assert (=> start!83504 (= b_free!19463 (not b_next!19463))))

(declare-fun tp!67677 () Bool)

(declare-fun b_and!31083 () Bool)

(assert (=> start!83504 (= tp!67677 b_and!31083)))

(declare-fun b!974947 () Bool)

(declare-fun e!549528 () Bool)

(declare-fun tp_is_empty!22367 () Bool)

(assert (=> b!974947 (= e!549528 tp_is_empty!22367)))

(declare-fun b!974948 () Bool)

(declare-fun res!652758 () Bool)

(declare-fun e!549524 () Bool)

(assert (=> b!974948 (=> (not res!652758) (not e!549524))))

(declare-datatypes ((array!60749 0))(
  ( (array!60750 (arr!29234 (Array (_ BitVec 32) (_ BitVec 64))) (size!29714 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60749)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60749 (_ BitVec 32)) Bool)

(assert (=> b!974948 (= res!652758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!652754 () Bool)

(assert (=> start!83504 (=> (not res!652754) (not e!549524))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83504 (= res!652754 (validMask!0 mask!2147))))

(assert (=> start!83504 e!549524))

(assert (=> start!83504 true))

(declare-datatypes ((V!34805 0))(
  ( (V!34806 (val!11234 Int)) )
))
(declare-datatypes ((ValueCell!10702 0))(
  ( (ValueCellFull!10702 (v!13793 V!34805)) (EmptyCell!10702) )
))
(declare-datatypes ((array!60751 0))(
  ( (array!60752 (arr!29235 (Array (_ BitVec 32) ValueCell!10702)) (size!29715 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60751)

(declare-fun e!549527 () Bool)

(declare-fun array_inv!22505 (array!60751) Bool)

(assert (=> start!83504 (and (array_inv!22505 _values!1425) e!549527)))

(assert (=> start!83504 tp_is_empty!22367))

(assert (=> start!83504 tp!67677))

(declare-fun array_inv!22506 (array!60749) Bool)

(assert (=> start!83504 (array_inv!22506 _keys!1717)))

(declare-fun mapIsEmpty!35560 () Bool)

(declare-fun mapRes!35560 () Bool)

(assert (=> mapIsEmpty!35560 mapRes!35560))

(declare-fun b!974949 () Bool)

(declare-fun res!652755 () Bool)

(assert (=> b!974949 (=> (not res!652755) (not e!549524))))

(declare-datatypes ((List!20413 0))(
  ( (Nil!20410) (Cons!20409 (h!21571 (_ BitVec 64)) (t!28898 List!20413)) )
))
(declare-fun arrayNoDuplicates!0 (array!60749 (_ BitVec 32) List!20413) Bool)

(assert (=> b!974949 (= res!652755 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20410))))

(declare-fun b!974950 () Bool)

(declare-fun res!652753 () Bool)

(assert (=> b!974950 (=> (not res!652753) (not e!549524))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!974950 (= res!652753 (and (= (size!29715 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29714 _keys!1717) (size!29715 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!974951 () Bool)

(assert (=> b!974951 (= e!549524 false)))

(declare-fun zeroValue!1367 () V!34805)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34805)

(declare-datatypes ((tuple2!14538 0))(
  ( (tuple2!14539 (_1!7279 (_ BitVec 64)) (_2!7279 V!34805)) )
))
(declare-datatypes ((List!20414 0))(
  ( (Nil!20411) (Cons!20410 (h!21572 tuple2!14538) (t!28899 List!20414)) )
))
(declare-datatypes ((ListLongMap!13249 0))(
  ( (ListLongMap!13250 (toList!6640 List!20414)) )
))
(declare-fun lt!432775 () ListLongMap!13249)

(declare-fun getCurrentListMap!3825 (array!60749 array!60751 (_ BitVec 32) (_ BitVec 32) V!34805 V!34805 (_ BitVec 32) Int) ListLongMap!13249)

(assert (=> b!974951 (= lt!432775 (getCurrentListMap!3825 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!974952 () Bool)

(declare-fun res!652759 () Bool)

(assert (=> b!974952 (=> (not res!652759) (not e!549524))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974952 (= res!652759 (validKeyInArray!0 (select (arr!29234 _keys!1717) i!822)))))

(declare-fun b!974953 () Bool)

(declare-fun res!652756 () Bool)

(assert (=> b!974953 (=> (not res!652756) (not e!549524))))

(declare-fun contains!5675 (ListLongMap!13249 (_ BitVec 64)) Bool)

(assert (=> b!974953 (= res!652756 (contains!5675 (getCurrentListMap!3825 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29234 _keys!1717) i!822)))))

(declare-fun b!974954 () Bool)

(declare-fun res!652757 () Bool)

(assert (=> b!974954 (=> (not res!652757) (not e!549524))))

(assert (=> b!974954 (= res!652757 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29714 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29714 _keys!1717))))))

(declare-fun mapNonEmpty!35560 () Bool)

(declare-fun tp!67678 () Bool)

(assert (=> mapNonEmpty!35560 (= mapRes!35560 (and tp!67678 e!549528))))

(declare-fun mapKey!35560 () (_ BitVec 32))

(declare-fun mapValue!35560 () ValueCell!10702)

(declare-fun mapRest!35560 () (Array (_ BitVec 32) ValueCell!10702))

(assert (=> mapNonEmpty!35560 (= (arr!29235 _values!1425) (store mapRest!35560 mapKey!35560 mapValue!35560))))

(declare-fun b!974955 () Bool)

(declare-fun e!549525 () Bool)

(assert (=> b!974955 (= e!549527 (and e!549525 mapRes!35560))))

(declare-fun condMapEmpty!35560 () Bool)

(declare-fun mapDefault!35560 () ValueCell!10702)

