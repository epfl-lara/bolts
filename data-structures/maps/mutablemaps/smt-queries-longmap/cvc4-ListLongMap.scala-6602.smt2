; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83528 () Bool)

(assert start!83528)

(declare-fun b_free!19487 () Bool)

(declare-fun b_next!19487 () Bool)

(assert (=> start!83528 (= b_free!19487 (not b_next!19487))))

(declare-fun tp!67749 () Bool)

(declare-fun b_and!31107 () Bool)

(assert (=> start!83528 (= tp!67749 b_and!31107)))

(declare-fun b!975307 () Bool)

(declare-fun res!653009 () Bool)

(declare-fun e!549706 () Bool)

(assert (=> b!975307 (=> (not res!653009) (not e!549706))))

(declare-datatypes ((array!60797 0))(
  ( (array!60798 (arr!29258 (Array (_ BitVec 32) (_ BitVec 64))) (size!29738 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60797)

(declare-datatypes ((List!20434 0))(
  ( (Nil!20431) (Cons!20430 (h!21592 (_ BitVec 64)) (t!28919 List!20434)) )
))
(declare-fun arrayNoDuplicates!0 (array!60797 (_ BitVec 32) List!20434) Bool)

(assert (=> b!975307 (= res!653009 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20431))))

(declare-fun b!975308 () Bool)

(assert (=> b!975308 (= e!549706 false)))

(declare-datatypes ((V!34837 0))(
  ( (V!34838 (val!11246 Int)) )
))
(declare-datatypes ((ValueCell!10714 0))(
  ( (ValueCellFull!10714 (v!13805 V!34837)) (EmptyCell!10714) )
))
(declare-datatypes ((array!60799 0))(
  ( (array!60800 (arr!29259 (Array (_ BitVec 32) ValueCell!10714)) (size!29739 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60799)

(declare-datatypes ((tuple2!14562 0))(
  ( (tuple2!14563 (_1!7291 (_ BitVec 64)) (_2!7291 V!34837)) )
))
(declare-datatypes ((List!20435 0))(
  ( (Nil!20432) (Cons!20431 (h!21593 tuple2!14562) (t!28920 List!20435)) )
))
(declare-datatypes ((ListLongMap!13273 0))(
  ( (ListLongMap!13274 (toList!6652 List!20435)) )
))
(declare-fun lt!432811 () ListLongMap!13273)

(declare-fun zeroValue!1367 () V!34837)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34837)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3837 (array!60797 array!60799 (_ BitVec 32) (_ BitVec 32) V!34837 V!34837 (_ BitVec 32) Int) ListLongMap!13273)

(assert (=> b!975308 (= lt!432811 (getCurrentListMap!3837 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975309 () Bool)

(declare-fun res!653010 () Bool)

(assert (=> b!975309 (=> (not res!653010) (not e!549706))))

(assert (=> b!975309 (= res!653010 (and (= (size!29739 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29738 _keys!1717) (size!29739 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!975310 () Bool)

(declare-fun res!653007 () Bool)

(assert (=> b!975310 (=> (not res!653007) (not e!549706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60797 (_ BitVec 32)) Bool)

(assert (=> b!975310 (= res!653007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!975311 () Bool)

(declare-fun e!549708 () Bool)

(declare-fun tp_is_empty!22391 () Bool)

(assert (=> b!975311 (= e!549708 tp_is_empty!22391)))

(declare-fun mapNonEmpty!35596 () Bool)

(declare-fun mapRes!35596 () Bool)

(declare-fun tp!67750 () Bool)

(assert (=> mapNonEmpty!35596 (= mapRes!35596 (and tp!67750 e!549708))))

(declare-fun mapValue!35596 () ValueCell!10714)

(declare-fun mapKey!35596 () (_ BitVec 32))

(declare-fun mapRest!35596 () (Array (_ BitVec 32) ValueCell!10714))

(assert (=> mapNonEmpty!35596 (= (arr!29259 _values!1425) (store mapRest!35596 mapKey!35596 mapValue!35596))))

(declare-fun b!975312 () Bool)

(declare-fun res!653005 () Bool)

(assert (=> b!975312 (=> (not res!653005) (not e!549706))))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!975312 (= res!653005 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29738 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29738 _keys!1717))))))

(declare-fun b!975313 () Bool)

(declare-fun res!653006 () Bool)

(assert (=> b!975313 (=> (not res!653006) (not e!549706))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975313 (= res!653006 (validKeyInArray!0 (select (arr!29258 _keys!1717) i!822)))))

(declare-fun b!975314 () Bool)

(declare-fun res!653008 () Bool)

(assert (=> b!975314 (=> (not res!653008) (not e!549706))))

(declare-fun contains!5684 (ListLongMap!13273 (_ BitVec 64)) Bool)

(assert (=> b!975314 (= res!653008 (contains!5684 (getCurrentListMap!3837 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29258 _keys!1717) i!822)))))

(declare-fun b!975315 () Bool)

(declare-fun e!549705 () Bool)

(assert (=> b!975315 (= e!549705 tp_is_empty!22391)))

(declare-fun b!975316 () Bool)

(declare-fun e!549707 () Bool)

(assert (=> b!975316 (= e!549707 (and e!549705 mapRes!35596))))

(declare-fun condMapEmpty!35596 () Bool)

(declare-fun mapDefault!35596 () ValueCell!10714)

