; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83162 () Bool)

(assert start!83162)

(declare-fun b_free!19127 () Bool)

(declare-fun b_next!19127 () Bool)

(assert (=> start!83162 (= b_free!19127 (not b_next!19127))))

(declare-fun tp!66660 () Bool)

(declare-fun b_and!30633 () Bool)

(assert (=> start!83162 (= tp!66660 b_and!30633)))

(declare-fun b!969659 () Bool)

(declare-fun res!649120 () Bool)

(declare-fun e!546699 () Bool)

(assert (=> b!969659 (=> (not res!649120) (not e!546699))))

(declare-datatypes ((array!60097 0))(
  ( (array!60098 (arr!28908 (Array (_ BitVec 32) (_ BitVec 64))) (size!29388 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60097)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!969659 (= res!649120 (validKeyInArray!0 (select (arr!28908 _keys!1717) i!822)))))

(declare-fun res!649118 () Bool)

(assert (=> start!83162 (=> (not res!649118) (not e!546699))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83162 (= res!649118 (validMask!0 mask!2147))))

(assert (=> start!83162 e!546699))

(assert (=> start!83162 true))

(declare-datatypes ((V!34349 0))(
  ( (V!34350 (val!11063 Int)) )
))
(declare-datatypes ((ValueCell!10531 0))(
  ( (ValueCellFull!10531 (v!13622 V!34349)) (EmptyCell!10531) )
))
(declare-datatypes ((array!60099 0))(
  ( (array!60100 (arr!28909 (Array (_ BitVec 32) ValueCell!10531)) (size!29389 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60099)

(declare-fun e!546698 () Bool)

(declare-fun array_inv!22269 (array!60099) Bool)

(assert (=> start!83162 (and (array_inv!22269 _values!1425) e!546698)))

(declare-fun tp_is_empty!22025 () Bool)

(assert (=> start!83162 tp_is_empty!22025))

(assert (=> start!83162 tp!66660))

(declare-fun array_inv!22270 (array!60097) Bool)

(assert (=> start!83162 (array_inv!22270 _keys!1717)))

(declare-fun b!969660 () Bool)

(declare-fun res!649121 () Bool)

(assert (=> b!969660 (=> (not res!649121) (not e!546699))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60097 (_ BitVec 32)) Bool)

(assert (=> b!969660 (= res!649121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun mapIsEmpty!35047 () Bool)

(declare-fun mapRes!35047 () Bool)

(assert (=> mapIsEmpty!35047 mapRes!35047))

(declare-fun b!969661 () Bool)

(declare-fun e!546702 () Bool)

(assert (=> b!969661 (= e!546702 tp_is_empty!22025)))

(declare-fun mapNonEmpty!35047 () Bool)

(declare-fun tp!66661 () Bool)

(assert (=> mapNonEmpty!35047 (= mapRes!35047 (and tp!66661 e!546702))))

(declare-fun mapRest!35047 () (Array (_ BitVec 32) ValueCell!10531))

(declare-fun mapKey!35047 () (_ BitVec 32))

(declare-fun mapValue!35047 () ValueCell!10531)

(assert (=> mapNonEmpty!35047 (= (arr!28909 _values!1425) (store mapRest!35047 mapKey!35047 mapValue!35047))))

(declare-fun b!969662 () Bool)

(declare-fun res!649119 () Bool)

(assert (=> b!969662 (=> (not res!649119) (not e!546699))))

(declare-datatypes ((List!20163 0))(
  ( (Nil!20160) (Cons!20159 (h!21321 (_ BitVec 64)) (t!28534 List!20163)) )
))
(declare-fun arrayNoDuplicates!0 (array!60097 (_ BitVec 32) List!20163) Bool)

(assert (=> b!969662 (= res!649119 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20160))))

(declare-fun b!969663 () Bool)

(declare-fun res!649122 () Bool)

(assert (=> b!969663 (=> (not res!649122) (not e!546699))))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!969663 (= res!649122 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29388 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29388 _keys!1717))))))

(declare-fun b!969664 () Bool)

(assert (=> b!969664 (= e!546699 false)))

(declare-fun lt!431623 () Bool)

(declare-fun zeroValue!1367 () V!34349)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34349)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14272 0))(
  ( (tuple2!14273 (_1!7146 (_ BitVec 64)) (_2!7146 V!34349)) )
))
(declare-datatypes ((List!20164 0))(
  ( (Nil!20161) (Cons!20160 (h!21322 tuple2!14272) (t!28535 List!20164)) )
))
(declare-datatypes ((ListLongMap!12983 0))(
  ( (ListLongMap!12984 (toList!6507 List!20164)) )
))
(declare-fun contains!5562 (ListLongMap!12983 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3692 (array!60097 array!60099 (_ BitVec 32) (_ BitVec 32) V!34349 V!34349 (_ BitVec 32) Int) ListLongMap!12983)

(assert (=> b!969664 (= lt!431623 (contains!5562 (getCurrentListMap!3692 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28908 _keys!1717) i!822)))))

(declare-fun b!969665 () Bool)

(declare-fun e!546700 () Bool)

(assert (=> b!969665 (= e!546698 (and e!546700 mapRes!35047))))

(declare-fun condMapEmpty!35047 () Bool)

(declare-fun mapDefault!35047 () ValueCell!10531)

