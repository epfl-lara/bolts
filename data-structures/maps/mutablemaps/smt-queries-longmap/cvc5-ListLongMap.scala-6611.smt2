; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83578 () Bool)

(assert start!83578)

(declare-fun b_free!19537 () Bool)

(declare-fun b_next!19537 () Bool)

(assert (=> start!83578 (= b_free!19537 (not b_next!19537))))

(declare-fun tp!67899 () Bool)

(declare-fun b_and!31187 () Bool)

(assert (=> start!83578 (= tp!67899 b_and!31187)))

(declare-fun res!653589 () Bool)

(declare-fun e!550146 () Bool)

(assert (=> start!83578 (=> (not res!653589) (not e!550146))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83578 (= res!653589 (validMask!0 mask!2147))))

(assert (=> start!83578 e!550146))

(assert (=> start!83578 true))

(declare-datatypes ((V!34905 0))(
  ( (V!34906 (val!11271 Int)) )
))
(declare-datatypes ((ValueCell!10739 0))(
  ( (ValueCellFull!10739 (v!13830 V!34905)) (EmptyCell!10739) )
))
(declare-datatypes ((array!60897 0))(
  ( (array!60898 (arr!29308 (Array (_ BitVec 32) ValueCell!10739)) (size!29788 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60897)

(declare-fun e!550149 () Bool)

(declare-fun array_inv!22563 (array!60897) Bool)

(assert (=> start!83578 (and (array_inv!22563 _values!1425) e!550149)))

(declare-fun tp_is_empty!22441 () Bool)

(assert (=> start!83578 tp_is_empty!22441))

(assert (=> start!83578 tp!67899))

(declare-datatypes ((array!60899 0))(
  ( (array!60900 (arr!29309 (Array (_ BitVec 32) (_ BitVec 64))) (size!29789 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60899)

(declare-fun array_inv!22564 (array!60899) Bool)

(assert (=> start!83578 (array_inv!22564 _keys!1717)))

(declare-fun b!976143 () Bool)

(declare-fun res!653586 () Bool)

(assert (=> b!976143 (=> (not res!653586) (not e!550146))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!976143 (= res!653586 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29789 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29789 _keys!1717))))))

(declare-fun b!976144 () Bool)

(declare-fun e!550150 () Bool)

(assert (=> b!976144 (= e!550150 tp_is_empty!22441)))

(declare-fun b!976145 () Bool)

(declare-fun e!550152 () Bool)

(assert (=> b!976145 (= e!550146 e!550152)))

(declare-fun res!653588 () Bool)

(assert (=> b!976145 (=> (not res!653588) (not e!550152))))

(declare-datatypes ((tuple2!14602 0))(
  ( (tuple2!14603 (_1!7311 (_ BitVec 64)) (_2!7311 V!34905)) )
))
(declare-datatypes ((List!20473 0))(
  ( (Nil!20470) (Cons!20469 (h!21631 tuple2!14602) (t!28990 List!20473)) )
))
(declare-datatypes ((ListLongMap!13313 0))(
  ( (ListLongMap!13314 (toList!6672 List!20473)) )
))
(declare-fun lt!433028 () ListLongMap!13313)

(declare-fun contains!5703 (ListLongMap!13313 (_ BitVec 64)) Bool)

(assert (=> b!976145 (= res!653588 (contains!5703 lt!433028 (select (arr!29309 _keys!1717) i!822)))))

(declare-fun zeroValue!1367 () V!34905)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34905)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3857 (array!60899 array!60897 (_ BitVec 32) (_ BitVec 32) V!34905 V!34905 (_ BitVec 32) Int) ListLongMap!13313)

(assert (=> b!976145 (= lt!433028 (getCurrentListMap!3857 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun b!976146 () Bool)

(declare-fun res!653590 () Bool)

(assert (=> b!976146 (=> (not res!653590) (not e!550146))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!976146 (= res!653590 (validKeyInArray!0 (select (arr!29309 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35671 () Bool)

(declare-fun mapRes!35671 () Bool)

(declare-fun tp!67900 () Bool)

(assert (=> mapNonEmpty!35671 (= mapRes!35671 (and tp!67900 e!550150))))

(declare-fun mapRest!35671 () (Array (_ BitVec 32) ValueCell!10739))

(declare-fun mapValue!35671 () ValueCell!10739)

(declare-fun mapKey!35671 () (_ BitVec 32))

(assert (=> mapNonEmpty!35671 (= (arr!29308 _values!1425) (store mapRest!35671 mapKey!35671 mapValue!35671))))

(declare-fun b!976147 () Bool)

(declare-fun e!550151 () Bool)

(assert (=> b!976147 (= e!550152 e!550151)))

(declare-fun res!653591 () Bool)

(assert (=> b!976147 (=> (not res!653591) (not e!550151))))

(declare-fun lt!433024 () (_ BitVec 64))

(assert (=> b!976147 (= res!653591 (validKeyInArray!0 lt!433024))))

(assert (=> b!976147 (= lt!433024 (select (arr!29309 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun lt!433025 () ListLongMap!13313)

(assert (=> b!976147 (= lt!433025 (getCurrentListMap!3857 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!976148 () Bool)

(declare-fun e!550147 () Bool)

(assert (=> b!976148 (= e!550147 tp_is_empty!22441)))

(declare-fun b!976149 () Bool)

(declare-fun res!653587 () Bool)

(assert (=> b!976149 (=> (not res!653587) (not e!550146))))

(assert (=> b!976149 (= res!653587 (and (= (size!29788 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29789 _keys!1717) (size!29788 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!976150 () Bool)

(declare-fun res!653593 () Bool)

(assert (=> b!976150 (=> (not res!653593) (not e!550146))))

(declare-datatypes ((List!20474 0))(
  ( (Nil!20471) (Cons!20470 (h!21632 (_ BitVec 64)) (t!28991 List!20474)) )
))
(declare-fun arrayNoDuplicates!0 (array!60899 (_ BitVec 32) List!20474) Bool)

(assert (=> b!976150 (= res!653593 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20471))))

(declare-fun b!976151 () Bool)

(assert (=> b!976151 (= e!550149 (and e!550147 mapRes!35671))))

(declare-fun condMapEmpty!35671 () Bool)

(declare-fun mapDefault!35671 () ValueCell!10739)

