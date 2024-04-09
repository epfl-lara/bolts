; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83422 () Bool)

(assert start!83422)

(declare-fun b_free!19387 () Bool)

(declare-fun b_next!19387 () Bool)

(assert (=> start!83422 (= b_free!19387 (not b_next!19387))))

(declare-fun tp!67440 () Bool)

(declare-fun b_and!31007 () Bool)

(assert (=> start!83422 (= tp!67440 b_and!31007)))

(declare-fun res!651925 () Bool)

(declare-fun e!548902 () Bool)

(assert (=> start!83422 (=> (not res!651925) (not e!548902))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83422 (= res!651925 (validMask!0 mask!2147))))

(assert (=> start!83422 e!548902))

(assert (=> start!83422 true))

(declare-datatypes ((V!34697 0))(
  ( (V!34698 (val!11193 Int)) )
))
(declare-datatypes ((ValueCell!10661 0))(
  ( (ValueCellFull!10661 (v!13752 V!34697)) (EmptyCell!10661) )
))
(declare-datatypes ((array!60595 0))(
  ( (array!60596 (arr!29157 (Array (_ BitVec 32) ValueCell!10661)) (size!29637 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60595)

(declare-fun e!548904 () Bool)

(declare-fun array_inv!22451 (array!60595) Bool)

(assert (=> start!83422 (and (array_inv!22451 _values!1425) e!548904)))

(declare-fun tp_is_empty!22285 () Bool)

(assert (=> start!83422 tp_is_empty!22285))

(assert (=> start!83422 tp!67440))

(declare-datatypes ((array!60597 0))(
  ( (array!60598 (arr!29158 (Array (_ BitVec 32) (_ BitVec 64))) (size!29638 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60597)

(declare-fun array_inv!22452 (array!60597) Bool)

(assert (=> start!83422 (array_inv!22452 _keys!1717)))

(declare-fun mapIsEmpty!35437 () Bool)

(declare-fun mapRes!35437 () Bool)

(assert (=> mapIsEmpty!35437 mapRes!35437))

(declare-fun b!973744 () Bool)

(declare-fun res!651924 () Bool)

(assert (=> b!973744 (=> (not res!651924) (not e!548902))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973744 (= res!651924 (validKeyInArray!0 (select (arr!29158 _keys!1717) i!822)))))

(declare-fun b!973745 () Bool)

(assert (=> b!973745 (= e!548902 false)))

(declare-fun zeroValue!1367 () V!34697)

(declare-datatypes ((tuple2!14476 0))(
  ( (tuple2!14477 (_1!7248 (_ BitVec 64)) (_2!7248 V!34697)) )
))
(declare-datatypes ((List!20354 0))(
  ( (Nil!20351) (Cons!20350 (h!21512 tuple2!14476) (t!28839 List!20354)) )
))
(declare-datatypes ((ListLongMap!13187 0))(
  ( (ListLongMap!13188 (toList!6609 List!20354)) )
))
(declare-fun lt!432661 () ListLongMap!13187)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34697)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3794 (array!60597 array!60595 (_ BitVec 32) (_ BitVec 32) V!34697 V!34697 (_ BitVec 32) Int) ListLongMap!13187)

(assert (=> b!973745 (= lt!432661 (getCurrentListMap!3794 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973746 () Bool)

(declare-fun res!651923 () Bool)

(assert (=> b!973746 (=> (not res!651923) (not e!548902))))

(assert (=> b!973746 (= res!651923 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29638 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29638 _keys!1717))))))

(declare-fun b!973747 () Bool)

(declare-fun res!651922 () Bool)

(assert (=> b!973747 (=> (not res!651922) (not e!548902))))

(declare-datatypes ((List!20355 0))(
  ( (Nil!20352) (Cons!20351 (h!21513 (_ BitVec 64)) (t!28840 List!20355)) )
))
(declare-fun arrayNoDuplicates!0 (array!60597 (_ BitVec 32) List!20355) Bool)

(assert (=> b!973747 (= res!651922 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20352))))

(declare-fun b!973748 () Bool)

(declare-fun res!651920 () Bool)

(assert (=> b!973748 (=> (not res!651920) (not e!548902))))

(assert (=> b!973748 (= res!651920 (and (= (size!29637 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29638 _keys!1717) (size!29637 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!973749 () Bool)

(declare-fun e!548903 () Bool)

(assert (=> b!973749 (= e!548903 tp_is_empty!22285)))

(declare-fun mapNonEmpty!35437 () Bool)

(declare-fun tp!67441 () Bool)

(declare-fun e!548901 () Bool)

(assert (=> mapNonEmpty!35437 (= mapRes!35437 (and tp!67441 e!548901))))

(declare-fun mapKey!35437 () (_ BitVec 32))

(declare-fun mapValue!35437 () ValueCell!10661)

(declare-fun mapRest!35437 () (Array (_ BitVec 32) ValueCell!10661))

(assert (=> mapNonEmpty!35437 (= (arr!29157 _values!1425) (store mapRest!35437 mapKey!35437 mapValue!35437))))

(declare-fun b!973750 () Bool)

(declare-fun res!651921 () Bool)

(assert (=> b!973750 (=> (not res!651921) (not e!548902))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60597 (_ BitVec 32)) Bool)

(assert (=> b!973750 (= res!651921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!973751 () Bool)

(assert (=> b!973751 (= e!548904 (and e!548903 mapRes!35437))))

(declare-fun condMapEmpty!35437 () Bool)

(declare-fun mapDefault!35437 () ValueCell!10661)

