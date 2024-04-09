; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83420 () Bool)

(assert start!83420)

(declare-fun b_free!19385 () Bool)

(declare-fun b_next!19385 () Bool)

(assert (=> start!83420 (= b_free!19385 (not b_next!19385))))

(declare-fun tp!67435 () Bool)

(declare-fun b_and!31005 () Bool)

(assert (=> start!83420 (= tp!67435 b_and!31005)))

(declare-fun b!973714 () Bool)

(declare-fun res!651898 () Bool)

(declare-fun e!548889 () Bool)

(assert (=> b!973714 (=> (not res!651898) (not e!548889))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34693 0))(
  ( (V!34694 (val!11192 Int)) )
))
(declare-datatypes ((ValueCell!10660 0))(
  ( (ValueCellFull!10660 (v!13751 V!34693)) (EmptyCell!10660) )
))
(declare-datatypes ((array!60591 0))(
  ( (array!60592 (arr!29155 (Array (_ BitVec 32) ValueCell!10660)) (size!29635 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60591)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60593 0))(
  ( (array!60594 (arr!29156 (Array (_ BitVec 32) (_ BitVec 64))) (size!29636 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60593)

(assert (=> b!973714 (= res!651898 (and (= (size!29635 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29636 _keys!1717) (size!29635 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!973715 () Bool)

(declare-fun res!651903 () Bool)

(assert (=> b!973715 (=> (not res!651903) (not e!548889))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973715 (= res!651903 (validKeyInArray!0 (select (arr!29156 _keys!1717) i!822)))))

(declare-fun b!973716 () Bool)

(assert (=> b!973716 (= e!548889 false)))

(declare-fun zeroValue!1367 () V!34693)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34693)

(declare-datatypes ((tuple2!14474 0))(
  ( (tuple2!14475 (_1!7247 (_ BitVec 64)) (_2!7247 V!34693)) )
))
(declare-datatypes ((List!20352 0))(
  ( (Nil!20349) (Cons!20348 (h!21510 tuple2!14474) (t!28837 List!20352)) )
))
(declare-datatypes ((ListLongMap!13185 0))(
  ( (ListLongMap!13186 (toList!6608 List!20352)) )
))
(declare-fun lt!432658 () ListLongMap!13185)

(declare-fun getCurrentListMap!3793 (array!60593 array!60591 (_ BitVec 32) (_ BitVec 32) V!34693 V!34693 (_ BitVec 32) Int) ListLongMap!13185)

(assert (=> b!973716 (= lt!432658 (getCurrentListMap!3793 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973717 () Bool)

(declare-fun res!651901 () Bool)

(assert (=> b!973717 (=> (not res!651901) (not e!548889))))

(declare-datatypes ((List!20353 0))(
  ( (Nil!20350) (Cons!20349 (h!21511 (_ BitVec 64)) (t!28838 List!20353)) )
))
(declare-fun arrayNoDuplicates!0 (array!60593 (_ BitVec 32) List!20353) Bool)

(assert (=> b!973717 (= res!651901 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20350))))

(declare-fun mapNonEmpty!35434 () Bool)

(declare-fun mapRes!35434 () Bool)

(declare-fun tp!67434 () Bool)

(declare-fun e!548886 () Bool)

(assert (=> mapNonEmpty!35434 (= mapRes!35434 (and tp!67434 e!548886))))

(declare-fun mapKey!35434 () (_ BitVec 32))

(declare-fun mapValue!35434 () ValueCell!10660)

(declare-fun mapRest!35434 () (Array (_ BitVec 32) ValueCell!10660))

(assert (=> mapNonEmpty!35434 (= (arr!29155 _values!1425) (store mapRest!35434 mapKey!35434 mapValue!35434))))

(declare-fun b!973718 () Bool)

(declare-fun res!651900 () Bool)

(assert (=> b!973718 (=> (not res!651900) (not e!548889))))

(declare-fun contains!5651 (ListLongMap!13185 (_ BitVec 64)) Bool)

(assert (=> b!973718 (= res!651900 (contains!5651 (getCurrentListMap!3793 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29156 _keys!1717) i!822)))))

(declare-fun res!651899 () Bool)

(assert (=> start!83420 (=> (not res!651899) (not e!548889))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83420 (= res!651899 (validMask!0 mask!2147))))

(assert (=> start!83420 e!548889))

(assert (=> start!83420 true))

(declare-fun e!548888 () Bool)

(declare-fun array_inv!22449 (array!60591) Bool)

(assert (=> start!83420 (and (array_inv!22449 _values!1425) e!548888)))

(declare-fun tp_is_empty!22283 () Bool)

(assert (=> start!83420 tp_is_empty!22283))

(assert (=> start!83420 tp!67435))

(declare-fun array_inv!22450 (array!60593) Bool)

(assert (=> start!83420 (array_inv!22450 _keys!1717)))

(declare-fun b!973719 () Bool)

(assert (=> b!973719 (= e!548886 tp_is_empty!22283)))

(declare-fun b!973720 () Bool)

(declare-fun e!548885 () Bool)

(assert (=> b!973720 (= e!548885 tp_is_empty!22283)))

(declare-fun mapIsEmpty!35434 () Bool)

(assert (=> mapIsEmpty!35434 mapRes!35434))

(declare-fun b!973721 () Bool)

(declare-fun res!651902 () Bool)

(assert (=> b!973721 (=> (not res!651902) (not e!548889))))

(assert (=> b!973721 (= res!651902 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29636 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29636 _keys!1717))))))

(declare-fun b!973722 () Bool)

(declare-fun res!651904 () Bool)

(assert (=> b!973722 (=> (not res!651904) (not e!548889))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60593 (_ BitVec 32)) Bool)

(assert (=> b!973722 (= res!651904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!973723 () Bool)

(assert (=> b!973723 (= e!548888 (and e!548885 mapRes!35434))))

(declare-fun condMapEmpty!35434 () Bool)

(declare-fun mapDefault!35434 () ValueCell!10660)

