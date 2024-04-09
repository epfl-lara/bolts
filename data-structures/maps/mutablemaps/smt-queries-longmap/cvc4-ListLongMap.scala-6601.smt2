; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83522 () Bool)

(assert start!83522)

(declare-fun b_free!19481 () Bool)

(declare-fun b_next!19481 () Bool)

(assert (=> start!83522 (= b_free!19481 (not b_next!19481))))

(declare-fun tp!67731 () Bool)

(declare-fun b_and!31101 () Bool)

(assert (=> start!83522 (= tp!67731 b_and!31101)))

(declare-fun b!975217 () Bool)

(declare-fun res!652946 () Bool)

(declare-fun e!549660 () Bool)

(assert (=> b!975217 (=> (not res!652946) (not e!549660))))

(declare-datatypes ((array!60785 0))(
  ( (array!60786 (arr!29252 (Array (_ BitVec 32) (_ BitVec 64))) (size!29732 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60785)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60785 (_ BitVec 32)) Bool)

(assert (=> b!975217 (= res!652946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!975218 () Bool)

(declare-fun res!652947 () Bool)

(assert (=> b!975218 (=> (not res!652947) (not e!549660))))

(declare-datatypes ((V!34829 0))(
  ( (V!34830 (val!11243 Int)) )
))
(declare-datatypes ((ValueCell!10711 0))(
  ( (ValueCellFull!10711 (v!13802 V!34829)) (EmptyCell!10711) )
))
(declare-datatypes ((array!60787 0))(
  ( (array!60788 (arr!29253 (Array (_ BitVec 32) ValueCell!10711)) (size!29733 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60787)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!975218 (= res!652947 (and (= (size!29733 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29732 _keys!1717) (size!29733 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!35587 () Bool)

(declare-fun mapRes!35587 () Bool)

(assert (=> mapIsEmpty!35587 mapRes!35587))

(declare-fun b!975219 () Bool)

(declare-fun res!652945 () Bool)

(assert (=> b!975219 (=> (not res!652945) (not e!549660))))

(declare-datatypes ((List!20428 0))(
  ( (Nil!20425) (Cons!20424 (h!21586 (_ BitVec 64)) (t!28913 List!20428)) )
))
(declare-fun arrayNoDuplicates!0 (array!60785 (_ BitVec 32) List!20428) Bool)

(assert (=> b!975219 (= res!652945 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20425))))

(declare-fun b!975220 () Bool)

(assert (=> b!975220 (= e!549660 false)))

(declare-fun zeroValue!1367 () V!34829)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34829)

(declare-datatypes ((tuple2!14556 0))(
  ( (tuple2!14557 (_1!7288 (_ BitVec 64)) (_2!7288 V!34829)) )
))
(declare-datatypes ((List!20429 0))(
  ( (Nil!20426) (Cons!20425 (h!21587 tuple2!14556) (t!28914 List!20429)) )
))
(declare-datatypes ((ListLongMap!13267 0))(
  ( (ListLongMap!13268 (toList!6649 List!20429)) )
))
(declare-fun lt!432802 () ListLongMap!13267)

(declare-fun getCurrentListMap!3834 (array!60785 array!60787 (_ BitVec 32) (_ BitVec 32) V!34829 V!34829 (_ BitVec 32) Int) ListLongMap!13267)

(assert (=> b!975220 (= lt!432802 (getCurrentListMap!3834 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975221 () Bool)

(declare-fun res!652942 () Bool)

(assert (=> b!975221 (=> (not res!652942) (not e!549660))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun contains!5682 (ListLongMap!13267 (_ BitVec 64)) Bool)

(assert (=> b!975221 (= res!652942 (contains!5682 (getCurrentListMap!3834 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29252 _keys!1717) i!822)))))

(declare-fun res!652948 () Bool)

(assert (=> start!83522 (=> (not res!652948) (not e!549660))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83522 (= res!652948 (validMask!0 mask!2147))))

(assert (=> start!83522 e!549660))

(assert (=> start!83522 true))

(declare-fun e!549662 () Bool)

(declare-fun array_inv!22519 (array!60787) Bool)

(assert (=> start!83522 (and (array_inv!22519 _values!1425) e!549662)))

(declare-fun tp_is_empty!22385 () Bool)

(assert (=> start!83522 tp_is_empty!22385))

(assert (=> start!83522 tp!67731))

(declare-fun array_inv!22520 (array!60785) Bool)

(assert (=> start!83522 (array_inv!22520 _keys!1717)))

(declare-fun b!975222 () Bool)

(declare-fun e!549663 () Bool)

(assert (=> b!975222 (= e!549662 (and e!549663 mapRes!35587))))

(declare-fun condMapEmpty!35587 () Bool)

(declare-fun mapDefault!35587 () ValueCell!10711)

